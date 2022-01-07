
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int trc_file; int enable; int trc_enable; } ;
struct TYPE_4__ {int trc_root; TYPE_1__ trc; } ;


 int S_IFREG ;
 int S_IRUGO ;
 int S_IWUSR ;
 int debugfs_create_bool (char*,int,int ,int *) ;
 int debugfs_create_file (char*,int,int ,int *,int *) ;
 TYPE_2__* snic_glob ;
 int snic_trc_fops ;

void snic_trc_debugfs_init(void)
{
 snic_glob->trc.trc_enable = debugfs_create_bool("tracing_enable",
       S_IFREG | S_IRUGO | S_IWUSR,
       snic_glob->trc_root,
       &snic_glob->trc.enable);

 snic_glob->trc.trc_file = debugfs_create_file("trace",
            S_IFREG | S_IRUGO | S_IWUSR,
            snic_glob->trc_root, ((void*)0),
            &snic_trc_fops);
}
