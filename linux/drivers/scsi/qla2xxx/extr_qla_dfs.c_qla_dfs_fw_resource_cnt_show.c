
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct seq_file {struct scsi_qla_host* private; } ;
struct scsi_qla_host {int dummy; } ;


 int MAX_IOCB_MB_REG ;
 int QLA_SUCCESS ;
 int SIZEOF_IOCB_MB_REG ;
 int qla24xx_res_count_wait (struct scsi_qla_host*,int *,int ) ;
 int seq_printf (struct seq_file*,char*,int,...) ;
 int seq_puts (struct seq_file*,char*) ;

__attribute__((used)) static int
qla_dfs_fw_resource_cnt_show(struct seq_file *s, void *unused)
{
 struct scsi_qla_host *vha = s->private;
 uint16_t mb[MAX_IOCB_MB_REG];
 int rc;

 rc = qla24xx_res_count_wait(vha, mb, SIZEOF_IOCB_MB_REG);
 if (rc != QLA_SUCCESS) {
  seq_printf(s, "Mailbox Command failed %d, mb %#x", rc, mb[0]);
 } else {
  seq_puts(s, "FW Resource count\n\n");
  seq_printf(s, "Original TGT exchg count[%d]\n", mb[1]);
  seq_printf(s, "current TGT exchg count[%d]\n", mb[2]);
  seq_printf(s, "original Initiator Exchange count[%d]\n", mb[3]);
  seq_printf(s, "Current Initiator Exchange count[%d]\n", mb[6]);
  seq_printf(s, "Original IOCB count[%d]\n", mb[7]);
  seq_printf(s, "Current IOCB count[%d]\n", mb[10]);
  seq_printf(s, "MAX VP count[%d]\n", mb[11]);
  seq_printf(s, "MAX FCF count[%d]\n", mb[12]);
  seq_printf(s, "Current free pageable XCB buffer cnt[%d]\n",
      mb[20]);
  seq_printf(s, "Original Initiator fast XCB buffer cnt[%d]\n",
      mb[21]);
  seq_printf(s, "Current free Initiator fast XCB buffer cnt[%d]\n",
      mb[22]);
  seq_printf(s, "Original Target fast XCB buffer cnt[%d]\n",
      mb[23]);

 }

 return 0;
}
