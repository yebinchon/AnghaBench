
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ni_gpct {int dummy; } ;


 unsigned int CR_CHAN (unsigned int) ;
 int EINVAL ;
 unsigned int NI_660X_MAX_RTSI_CHAN ;
 unsigned int NI_660X_MAX_UP_DOWN_PIN ;
 unsigned int NI_660X_NEXT_SRC_GATE2_SEL ;



 unsigned int NI_GPCT_RTSI_GATE_SELECT (unsigned int) ;


 unsigned int NI_GPCT_UP_DOWN_PIN_GATE_SELECT (unsigned int) ;

 int ni_tio_set_gate2_raw (struct ni_gpct*,unsigned int) ;

__attribute__((used)) static int ni_660x_set_gate2(struct ni_gpct *counter, unsigned int gate_source)
{
 unsigned int chan = CR_CHAN(gate_source);
 unsigned int gate2_sel;
 unsigned int i;

 switch (chan) {
 case 129:
 case 128:
 case 130:
 case 132:
 case 133:
  gate2_sel = chan & 0x1f;
  break;
 case 131:
  gate2_sel = NI_660X_NEXT_SRC_GATE2_SEL;
  break;
 default:
  for (i = 0; i <= NI_660X_MAX_RTSI_CHAN; ++i) {
   if (chan == NI_GPCT_RTSI_GATE_SELECT(i)) {
    gate2_sel = chan & 0x1f;
    break;
   }
  }
  if (i <= NI_660X_MAX_RTSI_CHAN)
   break;
  for (i = 0; i <= NI_660X_MAX_UP_DOWN_PIN; ++i) {
   if (chan == NI_GPCT_UP_DOWN_PIN_GATE_SELECT(i)) {
    gate2_sel = chan & 0x1f;
    break;
   }
  }
  if (i <= NI_660X_MAX_UP_DOWN_PIN)
   break;
  return -EINVAL;
 }
 ni_tio_set_gate2_raw(counter, gate2_sel);
 return 0;
}
