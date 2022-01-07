
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct comedi_device {int dummy; } ;


 int S626_CLKENAB_ALWAYS ;
 int S626_CLKENAB_INDEX ;
 int S626_CLKMULT_1X ;
 int S626_CLKPOL_POS ;
 int S626_ENCMODE_COUNTER ;
 int S626_ENCODER_CHANNELS ;
 int S626_INDXSRC_SOFT ;
 int S626_LOADSRC_INDX ;
 int S626_SET_STD_CLKENAB (int ) ;
 int S626_SET_STD_CLKMULT (int ) ;
 int S626_SET_STD_CLKPOL (int ) ;
 int S626_SET_STD_ENCMODE (int ) ;
 int S626_SET_STD_INDXSRC (int ) ;
 int S626_SET_STD_LOADSRC (int ) ;
 int s626_reset_cap_flags (struct comedi_device*,int) ;
 int s626_set_enable (struct comedi_device*,int,int ) ;
 int s626_set_int_src (struct comedi_device*,int,int ) ;
 int s626_set_mode (struct comedi_device*,int,int,int) ;

__attribute__((used)) static void s626_counters_init(struct comedi_device *dev)
{
 int chan;
 u16 setup =

  S626_SET_STD_LOADSRC(S626_LOADSRC_INDX) |

  S626_SET_STD_INDXSRC(S626_INDXSRC_SOFT) |

  S626_SET_STD_ENCMODE(S626_ENCMODE_COUNTER) |

  S626_SET_STD_CLKPOL(S626_CLKPOL_POS) |

  S626_SET_STD_CLKMULT(S626_CLKMULT_1X) |

  S626_SET_STD_CLKENAB(S626_CLKENAB_INDEX);




 for (chan = 0; chan < S626_ENCODER_CHANNELS; chan++) {
  s626_set_mode(dev, chan, setup, 1);
  s626_set_int_src(dev, chan, 0);
  s626_reset_cap_flags(dev, chan);
  s626_set_enable(dev, chan, S626_CLKENAB_ALWAYS);
 }
}
