
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int DBG (int ,char*,int) ;
 scalar_t__ dbg_level ;
 int printk (char*,...) ;

__attribute__((used)) static void __attribute__((unused)) dump_data(char *buf, int len)
{
 if (dbg_level > 0) {
  int k;
  int lf = 0;

  for (k = 0; k < len; ++k) {
   if (!lf)
    DBG(0, "%04x:", k);
   printk(" %02x", ((u8 *) buf)[k]);
   lf = 1;
   if (!k)
    continue;
   if (k % 16 == 15) {
    printk("\n");
    lf = 0;
    continue;
   }
   if (k % 8 == 7)
    printk(" ");
   if (k % 4 == 3)
    printk(" ");
  }
  if (lf)
   printk("\n");
 }
}
