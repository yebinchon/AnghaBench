
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct seq_file {struct Scsi_Host* private; } ;
struct Scsi_Host {TYPE_1__* hostt; } ;
struct TYPE_2__ {int (* show_info ) (struct seq_file*,struct Scsi_Host*) ;} ;


 int stub1 (struct seq_file*,struct Scsi_Host*) ;

__attribute__((used)) static int proc_scsi_show(struct seq_file *m, void *v)
{
 struct Scsi_Host *shost = m->private;
 return shost->hostt->show_info(m, shost);
}
