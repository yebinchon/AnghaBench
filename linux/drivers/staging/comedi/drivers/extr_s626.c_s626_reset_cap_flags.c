
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct comedi_device {int dummy; } ;


 int S626_CRBMSK_INTCTRL ;
 int S626_LP_CRB (unsigned int) ;
 int S626_SET_CRB_INTRESETCMD (int) ;
 int S626_SET_CRB_INTRESET_A (int) ;
 int S626_SET_CRB_INTRESET_B (int) ;
 int s626_debi_replace (struct comedi_device*,int ,int ,int ) ;

__attribute__((used)) static void s626_reset_cap_flags(struct comedi_device *dev,
     unsigned int chan)
{
 u16 set;

 set = S626_SET_CRB_INTRESETCMD(1);
 if (chan < 3)
  set |= S626_SET_CRB_INTRESET_A(1);
 else
  set |= S626_SET_CRB_INTRESET_B(1);

 s626_debi_replace(dev, S626_LP_CRB(chan), ~S626_CRBMSK_INTCTRL, set);
}
