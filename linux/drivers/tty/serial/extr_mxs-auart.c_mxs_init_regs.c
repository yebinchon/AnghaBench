
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mxs_auart_port {int * vendor; } ;


 scalar_t__ is_asm9260_auart (struct mxs_auart_port*) ;
 int vendor_alphascale_asm9260 ;
 int vendor_freescale_stmp37xx ;

__attribute__((used)) static void mxs_init_regs(struct mxs_auart_port *s)
{
 if (is_asm9260_auart(s))
  s->vendor = &vendor_alphascale_asm9260;
 else
  s->vendor = &vendor_freescale_stmp37xx;
}
