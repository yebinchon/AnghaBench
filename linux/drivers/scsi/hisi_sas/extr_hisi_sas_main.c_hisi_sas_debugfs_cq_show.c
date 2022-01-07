
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {struct hisi_sas_cq* private; } ;
struct hisi_sas_cq {int dummy; } ;


 int HISI_SAS_QUEUE_SLOTS ;
 int hisi_sas_cq_show_slot (struct seq_file*,int,struct hisi_sas_cq*) ;

__attribute__((used)) static int hisi_sas_debugfs_cq_show(struct seq_file *s, void *p)
{
 struct hisi_sas_cq *cq = s->private;
 int slot;

 for (slot = 0; slot < HISI_SAS_QUEUE_SLOTS; slot++) {
  hisi_sas_cq_show_slot(s, slot, cq);
 }
 return 0;
}
