
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct s626_private {int counter_int_enabs; } ;
struct comedi_device {struct s626_private* private; } ;


 unsigned int S626_CLKMULT_1X ;
 unsigned int S626_CLKMULT_SPECIAL ;
 unsigned int S626_CNTSRC_ENCODER ;
 unsigned int S626_CNTSRC_SYSCLK ;
 int S626_CRAMSK_CNTSRC_B ;
 int S626_CRAMSK_INDXSRC_B ;
 int S626_CRBMSK_CLKENAB_A ;
 int S626_CRBMSK_INTCTRL ;


 int S626_GET_STD_CLKENAB (int) ;
 unsigned int S626_GET_STD_CLKMULT (int) ;
 unsigned int S626_GET_STD_CLKPOL (int) ;
 int S626_GET_STD_ENCMODE (int) ;
 int S626_GET_STD_INDXPOL (int) ;
 scalar_t__ S626_GET_STD_INDXSRC (int) ;
 int S626_GET_STD_INTSRC (int) ;
 int S626_GET_STD_LOADSRC (int) ;
 int S626_INDXMASK (unsigned int) ;
 scalar_t__ S626_INDXSRC_SOFT ;
 int S626_LP_CRA (unsigned int) ;
 int S626_LP_CRB (unsigned int) ;
 int S626_OVERMASK (unsigned int) ;
 int S626_SET_CRA_CLKMULT_A (unsigned int) ;
 int S626_SET_CRA_CLKPOL_A (unsigned int) ;
 int S626_SET_CRA_CNTSRC_A (unsigned int) ;
 int S626_SET_CRA_INDXPOL_A (int ) ;
 int S626_SET_CRA_INDXSRC_A (scalar_t__) ;
 int S626_SET_CRA_INTSRC_A (int ) ;
 int S626_SET_CRA_LOADSRC_A (int ) ;
 int S626_SET_CRB_CLKENAB_A (int ) ;
 int S626_SET_CRB_INTRESETCMD (int) ;
 int S626_SET_CRB_INTRESET_A (int) ;
 int s626_debi_replace (struct comedi_device*,int ,int,int) ;

__attribute__((used)) static void s626_set_mode_a(struct comedi_device *dev,
       unsigned int chan, u16 setup,
       u16 disable_int_src)
{
 struct s626_private *devpriv = dev->private;
 u16 cra;
 u16 crb;
 unsigned int cntsrc, clkmult, clkpol;



 cra = S626_SET_CRA_LOADSRC_A(S626_GET_STD_LOADSRC(setup));

 cra |= S626_SET_CRA_INDXSRC_A(S626_GET_STD_INDXSRC(setup));


 crb = S626_SET_CRB_INTRESETCMD(1) | S626_SET_CRB_INTRESET_A(1);

 crb |= S626_SET_CRB_CLKENAB_A(S626_GET_STD_CLKENAB(setup));


 if (!disable_int_src)
  cra |= S626_SET_CRA_INTSRC_A(S626_GET_STD_INTSRC(setup));


 clkpol = S626_GET_STD_CLKPOL(setup);
 switch (S626_GET_STD_ENCMODE(setup)) {
 case 129:


 case 128:

  cntsrc = S626_CNTSRC_SYSCLK;

  cntsrc |= clkpol;

  clkpol = 1;

  clkmult = S626_CLKMULT_1X;
  break;
 default:

  cntsrc = S626_CNTSRC_ENCODER;


  clkmult = S626_GET_STD_CLKMULT(setup);
  if (clkmult == S626_CLKMULT_SPECIAL)
   clkmult = S626_CLKMULT_1X;
  break;
 }
 cra |= S626_SET_CRA_CNTSRC_A(cntsrc) | S626_SET_CRA_CLKPOL_A(clkpol) |
        S626_SET_CRA_CLKMULT_A(clkmult);





 if (S626_GET_STD_INDXSRC(setup) != S626_INDXSRC_SOFT)
  cra |= S626_SET_CRA_INDXPOL_A(S626_GET_STD_INDXPOL(setup));





 if (disable_int_src)
  devpriv->counter_int_enabs &= ~(S626_OVERMASK(chan) |
      S626_INDXMASK(chan));





 s626_debi_replace(dev, S626_LP_CRA(chan),
     S626_CRAMSK_INDXSRC_B | S626_CRAMSK_CNTSRC_B, cra);
 s626_debi_replace(dev, S626_LP_CRB(chan),
     ~(S626_CRBMSK_INTCTRL | S626_CRBMSK_CLKENAB_A), crb);
}
