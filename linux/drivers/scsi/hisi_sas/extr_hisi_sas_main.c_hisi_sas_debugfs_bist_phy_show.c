
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {struct hisi_hba* private; } ;
struct hisi_hba {int debugfs_bist_phy_no; } ;


 int seq_printf (struct seq_file*,char*,int ) ;

__attribute__((used)) static int hisi_sas_debugfs_bist_phy_show(struct seq_file *s, void *p)
{
 struct hisi_hba *hisi_hba = s->private;

 seq_printf(s, "%d\n", hisi_hba->debugfs_bist_phy_no);

 return 0;
}
