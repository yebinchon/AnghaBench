
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct seq_file {int dummy; } ;
struct TYPE_3__ {int device; int name; } ;


 int ARRAY_SIZE (TYPE_1__*) ;
 TYPE_1__* device_mapping ;
 int seq_putc (struct seq_file*,char) ;
 int seq_puts (struct seq_file*,int ) ;

void via_odev_to_seq(struct seq_file *m, u32 odev)
{
 int i, count = 0;

 for (i = 0; i < ARRAY_SIZE(device_mapping); i++) {
  if (odev & device_mapping[i].device) {
   if (count > 0)
    seq_putc(m, ',');

   seq_puts(m, device_mapping[i].name);
   count++;
  }
 }

 seq_putc(m, '\n');
}
