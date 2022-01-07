
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct comedi_device {int dummy; } ;


 int S626_CRAMSK_LOADSRC_A ;
 int S626_CRBMSK_INTCTRL ;
 int S626_CRBMSK_LOADSRC_B ;
 int S626_LP_CRA (unsigned int) ;
 int S626_LP_CRB (unsigned int) ;
 int S626_SET_CRA_LOADSRC_A (int) ;
 int S626_SET_CRB_LOADSRC_B (int) ;
 int s626_debi_replace (struct comedi_device*,int,int,int) ;

__attribute__((used)) static void s626_set_load_trig(struct comedi_device *dev,
          unsigned int chan, u16 trig)
{
 u16 reg;
 u16 mask;
 u16 set;

 if (chan < 3) {
  reg = S626_LP_CRA(chan);
  mask = S626_CRAMSK_LOADSRC_A;
  set = S626_SET_CRA_LOADSRC_A(trig);
 } else {
  reg = S626_LP_CRB(chan);
  mask = S626_CRBMSK_LOADSRC_B | S626_CRBMSK_INTCTRL;
  set = S626_SET_CRB_LOADSRC_B(trig);
 }
 s626_debi_replace(dev, reg, ~mask, set);
}
