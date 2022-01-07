
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct comedi_device {int dummy; } ;


 unsigned int S626_CRBMSK_CLKENAB_A ;
 unsigned int S626_CRBMSK_CLKENAB_B ;
 unsigned int S626_CRBMSK_INTCTRL ;
 int S626_LP_CRB (unsigned int) ;
 unsigned int S626_SET_CRB_CLKENAB_A (int ) ;
 unsigned int S626_SET_CRB_CLKENAB_B (int ) ;
 int s626_debi_replace (struct comedi_device*,int ,unsigned int,unsigned int) ;

__attribute__((used)) static void s626_set_enable(struct comedi_device *dev,
       unsigned int chan, u16 enab)
{
 unsigned int mask = S626_CRBMSK_INTCTRL;
 unsigned int set;

 if (chan < 3) {
  mask |= S626_CRBMSK_CLKENAB_A;
  set = S626_SET_CRB_CLKENAB_A(enab);
 } else {
  mask |= S626_CRBMSK_CLKENAB_B;
  set = S626_SET_CRB_CLKENAB_B(enab);
 }
 s626_debi_replace(dev, S626_LP_CRB(chan), ~mask, set);
}
