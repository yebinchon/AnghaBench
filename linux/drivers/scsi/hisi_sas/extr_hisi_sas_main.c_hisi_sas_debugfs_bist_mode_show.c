
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct seq_file {struct hisi_hba* private; } ;
struct hisi_hba {scalar_t__ debugfs_bist_mode; } ;
struct TYPE_3__ {scalar_t__ value; int name; } ;


 int ARRAY_SIZE (TYPE_1__*) ;
 TYPE_1__* hisi_sas_debugfs_loop_modes ;
 int seq_printf (struct seq_file*,char*,char*,int ,char*) ;
 int seq_puts (struct seq_file*,char*) ;

__attribute__((used)) static int hisi_sas_debugfs_bist_mode_show(struct seq_file *s, void *p)
{
 struct hisi_hba *hisi_hba = s->private;
 int i;

 for (i = 0; i < ARRAY_SIZE(hisi_sas_debugfs_loop_modes); i++) {
  int match = (hisi_hba->debugfs_bist_mode ==
        hisi_sas_debugfs_loop_modes[i].value);

  seq_printf(s, "%s%s%s ", match ? "[" : "",
      hisi_sas_debugfs_loop_modes[i].name,
      match ? "]" : "");
 }
 seq_puts(s, "\n");

 return 0;
}
