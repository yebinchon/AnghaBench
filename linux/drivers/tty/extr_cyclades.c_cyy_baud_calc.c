
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cyclades_port {scalar_t__ chip_rev; int tbpr; int tco; int rbpr; int rco; } ;
typedef int __u32 ;


 scalar_t__ CD1400_REV_J ;

__attribute__((used)) static void cyy_baud_calc(struct cyclades_port *info, __u32 baud)
{
 int co, co_val, bpr;
 __u32 cy_clock = ((info->chip_rev >= CD1400_REV_J) ? 60000000 :
   25000000);

 if (baud == 0) {
  info->tbpr = info->tco = info->rbpr = info->rco = 0;
  return;
 }


 for (co = 4, co_val = 2048; co; co--, co_val >>= 2) {
  if (cy_clock / co_val / baud > 63)
   break;
 }

 bpr = (cy_clock / co_val * 2 / baud + 1) / 2;
 if (bpr > 255)
  bpr = 255;

 info->tbpr = info->rbpr = bpr;
 info->tco = info->rco = co;
}
