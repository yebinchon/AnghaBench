
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int er_Type; } ;
struct zorro_dev {TYPE_1__ rom; int id; } ;
struct seq_file {int dummy; } ;
typedef unsigned int loff_t ;


 int seq_printf (struct seq_file*,char*,unsigned int,int ,unsigned long,unsigned long,int ) ;
 struct zorro_dev* zorro_autocon ;
 scalar_t__ zorro_resource_len (struct zorro_dev*) ;
 scalar_t__ zorro_resource_start (struct zorro_dev*) ;

__attribute__((used)) static int zorro_seq_show(struct seq_file *m, void *v)
{
 unsigned int slot = *(loff_t *)v;
 struct zorro_dev *z = &zorro_autocon[slot];

 seq_printf(m, "%02x\t%08x\t%08lx\t%08lx\t%02x\n", slot, z->id,
     (unsigned long)zorro_resource_start(z),
     (unsigned long)zorro_resource_len(z),
     z->rom.er_Type);
 return 0;
}
