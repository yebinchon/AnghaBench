
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct comedi_device {int dummy; } ;


 int S626_CRBMSK_INTCTRL ;
 int S626_CRBMSK_LATCHSRC ;
 int S626_LP_CRB (unsigned int) ;
 int S626_SET_CRB_LATCHSRC (int ) ;
 int s626_debi_replace (struct comedi_device*,int ,int,int ) ;

__attribute__((used)) static void s626_set_latch_source(struct comedi_device *dev,
      unsigned int chan, u16 value)
{
 s626_debi_replace(dev, S626_LP_CRB(chan),
     ~(S626_CRBMSK_INTCTRL | S626_CRBMSK_LATCHSRC),
     S626_SET_CRB_LATCHSRC(value));
}
