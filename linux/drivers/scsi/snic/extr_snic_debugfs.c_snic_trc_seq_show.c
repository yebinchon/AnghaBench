
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int dummy; } ;


 int SNIC_TRC_PBLEN ;
 int seq_printf (struct seq_file*,char*,char*) ;
 scalar_t__ snic_get_trc_data (char*,int) ;

__attribute__((used)) static int
snic_trc_seq_show(struct seq_file *sfp, void *data)
{
 char buf[SNIC_TRC_PBLEN];

 if (snic_get_trc_data(buf, SNIC_TRC_PBLEN) > 0)
  seq_printf(sfp, "%s\n", buf);

 return 0;
}
