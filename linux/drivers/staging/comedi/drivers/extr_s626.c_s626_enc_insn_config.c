
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16 ;
struct comedi_subdevice {int dummy; } ;
struct comedi_insn {int n; int chanspec; } ;
struct comedi_device {int dummy; } ;


 unsigned int CR_CHAN (int ) ;
 scalar_t__ S626_CLKENAB_ALWAYS ;
 int S626_CLKENAB_INDEX ;
 int S626_CLKMULT_1X ;
 int S626_CLKPOL_POS ;
 int S626_ENCMODE_COUNTER ;
 int S626_INDXSRC_SOFT ;
 scalar_t__ S626_LATCHSRC_AB_READ ;
 int S626_LOADSRC_INDX ;
 scalar_t__ S626_SET_STD_CLKENAB (int ) ;
 scalar_t__ S626_SET_STD_CLKMULT (int ) ;
 scalar_t__ S626_SET_STD_CLKPOL (int ) ;
 scalar_t__ S626_SET_STD_ENCMODE (int ) ;
 scalar_t__ S626_SET_STD_INDXSRC (int ) ;
 scalar_t__ S626_SET_STD_LOADSRC (int ) ;
 int s626_preload (struct comedi_device*,unsigned int,unsigned int) ;
 int s626_pulse_index (struct comedi_device*,unsigned int) ;
 int s626_set_enable (struct comedi_device*,unsigned int,int) ;
 int s626_set_latch_source (struct comedi_device*,unsigned int,scalar_t__) ;
 int s626_set_mode (struct comedi_device*,unsigned int,scalar_t__,int) ;

__attribute__((used)) static int s626_enc_insn_config(struct comedi_device *dev,
    struct comedi_subdevice *s,
    struct comedi_insn *insn, unsigned int *data)
{
 unsigned int chan = CR_CHAN(insn->chanspec);
 u16 setup =

  S626_SET_STD_LOADSRC(S626_LOADSRC_INDX) |

  S626_SET_STD_INDXSRC(S626_INDXSRC_SOFT) |

  S626_SET_STD_ENCMODE(S626_ENCMODE_COUNTER) |

  S626_SET_STD_CLKPOL(S626_CLKPOL_POS) |

  S626_SET_STD_CLKMULT(S626_CLKMULT_1X) |

  S626_SET_STD_CLKENAB(S626_CLKENAB_INDEX);


 u16 value_latchsrc = S626_LATCHSRC_AB_READ;
 u16 enab = S626_CLKENAB_ALWAYS;



 s626_set_mode(dev, chan, setup, 1);
 s626_preload(dev, chan, data[0]);
 s626_pulse_index(dev, chan);
 s626_set_latch_source(dev, chan, value_latchsrc);
 s626_set_enable(dev, chan, (enab != 0));

 return insn->n;
}
