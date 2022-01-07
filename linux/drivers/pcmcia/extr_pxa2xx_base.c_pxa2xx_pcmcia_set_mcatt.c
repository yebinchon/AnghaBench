
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int MCATT (int) ;
 int MCXX_ASST_MASK ;
 int MCXX_ASST_SHIFT ;
 int MCXX_HOLD_MASK ;
 int MCXX_HOLD_SHIFT ;
 int MCXX_SETUP_MASK ;
 int MCXX_SETUP_SHIFT ;
 int __raw_writel (int,int ) ;
 int pxa2xx_mcxx_asst (int,int) ;
 int pxa2xx_mcxx_hold (int,int) ;
 int pxa2xx_mcxx_setup (int,int) ;

__attribute__((used)) static int pxa2xx_pcmcia_set_mcatt( int sock, int speed, int clock )
{
 uint32_t val;

 val = ((pxa2xx_mcxx_setup(speed, clock)
  & MCXX_SETUP_MASK) << MCXX_SETUP_SHIFT)
  | ((pxa2xx_mcxx_asst(speed, clock)
  & MCXX_ASST_MASK) << MCXX_ASST_SHIFT)
  | ((pxa2xx_mcxx_hold(speed, clock)
  & MCXX_HOLD_MASK) << MCXX_HOLD_SHIFT);

 __raw_writel(val, MCATT(sock));

 return 0;
}
