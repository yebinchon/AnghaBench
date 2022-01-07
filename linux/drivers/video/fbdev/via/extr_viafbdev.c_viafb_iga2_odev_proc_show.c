
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct seq_file {int dummy; } ;
struct TYPE_4__ {TYPE_1__* shared; } ;
struct TYPE_3__ {int iga2_devices; } ;


 int via_odev_to_seq (struct seq_file*,int ) ;
 TYPE_2__* viaparinfo ;

__attribute__((used)) static int viafb_iga2_odev_proc_show(struct seq_file *m, void *v)
{
 via_odev_to_seq(m, viaparinfo->shared->iga2_devices);
 return 0;
}
