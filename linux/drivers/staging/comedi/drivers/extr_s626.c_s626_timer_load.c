
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct comedi_device {int dummy; } ;


 int S626_CLKENAB_INDEX ;
 int S626_CLKMULT_1X ;
 int S626_CNTDIR_DOWN ;
 int S626_ENCMODE_TIMER ;
 int S626_INDXSRC_SOFT ;
 int S626_INTSRC_OVER ;
 int S626_LATCHSRC_A_INDXA ;
 int S626_LOADSRC_INDX ;
 int S626_SET_STD_CLKENAB (int ) ;
 int S626_SET_STD_CLKMULT (int ) ;
 int S626_SET_STD_CLKPOL (int ) ;
 int S626_SET_STD_ENCMODE (int ) ;
 int S626_SET_STD_INDXSRC (int ) ;
 int S626_SET_STD_LOADSRC (int ) ;
 int s626_preload (struct comedi_device*,unsigned int,int) ;
 int s626_pulse_index (struct comedi_device*,unsigned int) ;
 int s626_set_int_src (struct comedi_device*,unsigned int,int ) ;
 int s626_set_latch_source (struct comedi_device*,unsigned int,int) ;
 int s626_set_load_trig (struct comedi_device*,unsigned int,int) ;
 int s626_set_mode (struct comedi_device*,unsigned int,int,int) ;

__attribute__((used)) static void s626_timer_load(struct comedi_device *dev,
       unsigned int chan, int tick)
{
 u16 setup =

  S626_SET_STD_LOADSRC(S626_LOADSRC_INDX) |

  S626_SET_STD_INDXSRC(S626_INDXSRC_SOFT) |

  S626_SET_STD_ENCMODE(S626_ENCMODE_TIMER) |

  S626_SET_STD_CLKPOL(S626_CNTDIR_DOWN) |

  S626_SET_STD_CLKMULT(S626_CLKMULT_1X) |

  S626_SET_STD_CLKENAB(S626_CLKENAB_INDEX);
 u16 value_latchsrc = S626_LATCHSRC_A_INDXA;


 s626_set_mode(dev, chan, setup, 0);


 s626_preload(dev, chan, tick);





 s626_set_load_trig(dev, chan, 0);
 s626_pulse_index(dev, chan);


 s626_set_load_trig(dev, chan, 1);


 s626_set_int_src(dev, chan, S626_INTSRC_OVER);

 s626_set_latch_source(dev, chan, value_latchsrc);

}
