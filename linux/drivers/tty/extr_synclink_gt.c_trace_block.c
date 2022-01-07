
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct slgt_info {int device_name; } ;


 int printk (char*,...) ;

__attribute__((used)) static void trace_block(struct slgt_info *info, const char *data, int count, const char *label)
{
 int i;
 int linecount;
 printk("%s %s data:\n",info->device_name, label);
 while(count) {
  linecount = (count > 16) ? 16 : count;
  for(i=0; i < linecount; i++)
   printk("%02X ",(unsigned char)data[i]);
  for(;i<17;i++)
   printk("   ");
  for(i=0;i<linecount;i++) {
   if (data[i]>=040 && data[i]<=0176)
    printk("%c",data[i]);
   else
    printk(".");
  }
  printk("\n");
  data += linecount;
  count -= linecount;
 }
}
