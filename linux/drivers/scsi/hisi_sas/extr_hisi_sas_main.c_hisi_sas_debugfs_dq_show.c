
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int private; } ;


 int HISI_SAS_QUEUE_SLOTS ;
 int hisi_sas_dq_show_slot (struct seq_file*,int,int ) ;

__attribute__((used)) static int hisi_sas_debugfs_dq_show(struct seq_file *s, void *p)
{
 int slot;

 for (slot = 0; slot < HISI_SAS_QUEUE_SLOTS; slot++) {
  hisi_sas_dq_show_slot(s, slot, s->private);
 }
 return 0;
}
