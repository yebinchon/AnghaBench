
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ni_private {int changain_state; unsigned int changain_spec; int ai_calib_source_enabled; unsigned int ai_calib_source; unsigned int* ai_offset; scalar_t__ is_6143; scalar_t__ is_611x; scalar_t__ is_m_series; } ;
struct ni_board_struct {size_t gainlkup; } ;
struct comedi_subdevice {int maxdata; } ;
struct comedi_device {struct ni_private* private; struct ni_board_struct* board_ptr; } ;






 unsigned int CR_ALT_FILTER ;
 unsigned int CR_ALT_SOURCE ;
 unsigned int CR_AREF (unsigned int) ;
 int CR_CHAN (unsigned int) ;
 unsigned int CR_RANGE (unsigned int) ;
 int NI611X_CALIB_CHAN_SEL_REG ;
 int NI6143_CALIB_CHAN_REG ;
 unsigned int NI6143_CALIB_CHAN_RELAY_OFF ;
 unsigned int NI6143_CALIB_CHAN_RELAY_ON ;
 int NISTC_CFG_MEM_CLR_REG ;
 unsigned int NI_E_AI_CFG_HI_CHAN (unsigned int) ;
 int NI_E_AI_CFG_HI_REG ;
 unsigned int NI_E_AI_CFG_HI_TYPE_COMMON ;
 unsigned int NI_E_AI_CFG_HI_TYPE_DIFF ;
 unsigned int NI_E_AI_CFG_HI_TYPE_GROUND ;
 unsigned int NI_E_AI_CFG_LO_DITHER ;
 unsigned int NI_E_AI_CFG_LO_GAIN (unsigned int) ;
 unsigned int NI_E_AI_CFG_LO_LAST_CHAN ;
 int NI_E_AI_CFG_LO_REG ;
 int msleep_interruptible (int) ;
 unsigned int** ni_gainlkup ;
 int ni_m_series_load_channelgain_list (struct comedi_device*,unsigned int,unsigned int*) ;
 int ni_prime_channelgain_list (struct comedi_device*) ;
 int ni_stc_writew (struct comedi_device*,int,int ) ;
 int ni_writew (struct comedi_device*,unsigned int,int ) ;

__attribute__((used)) static void ni_load_channelgain_list(struct comedi_device *dev,
         struct comedi_subdevice *s,
         unsigned int n_chan, unsigned int *list)
{
 const struct ni_board_struct *board = dev->board_ptr;
 struct ni_private *devpriv = dev->private;
 unsigned int offset = (s->maxdata + 1) >> 1;
 unsigned int chan, range, aref;
 unsigned int i;
 unsigned int hi, lo;
 unsigned int dither;

 if (devpriv->is_m_series) {
  ni_m_series_load_channelgain_list(dev, n_chan, list);
  return;
 }
 if (n_chan == 1 && !devpriv->is_611x && !devpriv->is_6143) {
  if (devpriv->changain_state &&
      devpriv->changain_spec == list[0]) {

   return;
  }
  devpriv->changain_state = 1;
  devpriv->changain_spec = list[0];
 } else {
  devpriv->changain_state = 0;
 }

 ni_stc_writew(dev, 1, NISTC_CFG_MEM_CLR_REG);


 if (devpriv->is_6143) {
  if ((list[0] & CR_ALT_SOURCE) &&
      !devpriv->ai_calib_source_enabled) {

   ni_writew(dev, devpriv->ai_calib_source |
           NI6143_CALIB_CHAN_RELAY_ON,
      NI6143_CALIB_CHAN_REG);
   ni_writew(dev, devpriv->ai_calib_source,
      NI6143_CALIB_CHAN_REG);
   devpriv->ai_calib_source_enabled = 1;

   msleep_interruptible(100);
  } else if (!(list[0] & CR_ALT_SOURCE) &&
      devpriv->ai_calib_source_enabled) {

   ni_writew(dev, devpriv->ai_calib_source |
           NI6143_CALIB_CHAN_RELAY_OFF,
      NI6143_CALIB_CHAN_REG);
   ni_writew(dev, devpriv->ai_calib_source,
      NI6143_CALIB_CHAN_REG);
   devpriv->ai_calib_source_enabled = 0;

   msleep_interruptible(100);
  }
 }

 for (i = 0; i < n_chan; i++) {
  if (!devpriv->is_6143 && (list[i] & CR_ALT_SOURCE))
   chan = devpriv->ai_calib_source;
  else
   chan = CR_CHAN(list[i]);
  aref = CR_AREF(list[i]);
  range = CR_RANGE(list[i]);
  dither = (list[i] & CR_ALT_FILTER) != 0;


  range = ni_gainlkup[board->gainlkup][range];
  if (devpriv->is_611x)
   devpriv->ai_offset[i] = offset;
  else
   devpriv->ai_offset[i] = (range & 0x100) ? 0 : offset;

  hi = 0;
  if ((list[i] & CR_ALT_SOURCE)) {
   if (devpriv->is_611x)
    ni_writew(dev, CR_CHAN(list[i]) & 0x0003,
       NI611X_CALIB_CHAN_SEL_REG);
  } else {
   if (devpriv->is_611x)
    aref = 130;
   else if (devpriv->is_6143)
    aref = 128;
   switch (aref) {
   case 130:
    hi |= NI_E_AI_CFG_HI_TYPE_DIFF;
    break;
   case 131:
    hi |= NI_E_AI_CFG_HI_TYPE_COMMON;
    break;
   case 129:
    hi |= NI_E_AI_CFG_HI_TYPE_GROUND;
    break;
   case 128:
    break;
   }
  }
  hi |= NI_E_AI_CFG_HI_CHAN(chan);

  ni_writew(dev, hi, NI_E_AI_CFG_HI_REG);

  if (!devpriv->is_6143) {
   lo = NI_E_AI_CFG_LO_GAIN(range);

   if (i == n_chan - 1)
    lo |= NI_E_AI_CFG_LO_LAST_CHAN;
   if (dither)
    lo |= NI_E_AI_CFG_LO_DITHER;

   ni_writew(dev, lo, NI_E_AI_CFG_LO_REG);
  }
 }


 if (!devpriv->is_611x && !devpriv->is_6143)
  ni_prime_channelgain_list(dev);
}
