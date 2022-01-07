
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct s626_private {int counter_int_enabs; } ;
struct comedi_device {struct s626_private* private; } ;


 int S626_CRAMSK_INTSRC_A ;
 int S626_CRBMSK_INTCTRL ;
 int S626_CRBMSK_INTSRC_B ;
 int S626_INDXMASK (unsigned int) ;
 int S626_LP_CRA (unsigned int) ;
 int S626_LP_CRB (unsigned int) ;
 int S626_OVERMASK (unsigned int) ;
 int S626_SET_CRA_INTSRC_A (int) ;
 int S626_SET_CRB_INTRESETCMD (int) ;
 int S626_SET_CRB_INTRESET_A (int) ;
 int S626_SET_CRB_INTRESET_B (int) ;
 int S626_SET_CRB_INTSRC_B (int) ;
 int s626_debi_read (struct comedi_device*,int) ;
 int s626_debi_replace (struct comedi_device*,int,int,int) ;
 int s626_debi_write (struct comedi_device*,int,int) ;

__attribute__((used)) static void s626_set_int_src(struct comedi_device *dev,
        unsigned int chan, u16 int_source)
{
 struct s626_private *devpriv = dev->private;
 u16 cra_reg = S626_LP_CRA(chan);
 u16 crb_reg = S626_LP_CRB(chan);

 if (chan < 3) {

  s626_debi_replace(dev, crb_reg, ~S626_CRBMSK_INTCTRL,
      S626_SET_CRB_INTRESETCMD(1) |
      S626_SET_CRB_INTRESET_A(1));


  s626_debi_replace(dev, cra_reg, ~S626_CRAMSK_INTSRC_A,
      S626_SET_CRA_INTSRC_A(int_source));
 } else {
  u16 crb;


  crb = s626_debi_read(dev, crb_reg);
  crb &= ~S626_CRBMSK_INTCTRL;


  s626_debi_write(dev, crb_reg,
    crb | S626_SET_CRB_INTRESETCMD(1) |
    S626_SET_CRB_INTRESET_B(1));


  s626_debi_write(dev, crb_reg,
    (crb & ~S626_CRBMSK_INTSRC_B) |
    S626_SET_CRB_INTSRC_B(int_source));
 }


 devpriv->counter_int_enabs &= ~(S626_OVERMASK(chan) |
     S626_INDXMASK(chan));
 switch (int_source) {
 case 0:
 default:
  break;
 case 1:
  devpriv->counter_int_enabs |= S626_OVERMASK(chan);
  break;
 case 2:
  devpriv->counter_int_enabs |= S626_INDXMASK(chan);
  break;
 case 3:
  devpriv->counter_int_enabs |= (S626_OVERMASK(chan) |
            S626_INDXMASK(chan));
  break;
 }
}
