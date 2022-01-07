
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct beiscsi_hba {int eh_sgl_hndl_base; int io_sgl_hndl_base; } ;


 int BEISCSI_LOG_INIT ;
 int KERN_ERR ;
 int beiscsi_init_sgl_handle (struct beiscsi_hba*) ;
 int beiscsi_log (struct beiscsi_hba*,int ,int ,char*) ;
 int hba_setup_cid_tbls (struct beiscsi_hba*) ;
 int hwi_cleanup_port (struct beiscsi_hba*) ;
 int hwi_init_controller (struct beiscsi_hba*) ;
 int kfree (int ) ;

__attribute__((used)) static int beiscsi_init_port(struct beiscsi_hba *phba)
{
 int ret;

 ret = hwi_init_controller(phba);
 if (ret < 0) {
  beiscsi_log(phba, KERN_ERR, BEISCSI_LOG_INIT,
       "BM_%d : init controller failed\n");
  return ret;
 }
 ret = beiscsi_init_sgl_handle(phba);
 if (ret < 0) {
  beiscsi_log(phba, KERN_ERR, BEISCSI_LOG_INIT,
       "BM_%d : init sgl handles failed\n");
  goto cleanup_port;
 }

 ret = hba_setup_cid_tbls(phba);
 if (ret < 0) {
  beiscsi_log(phba, KERN_ERR, BEISCSI_LOG_INIT,
       "BM_%d : setup CID table failed\n");
  kfree(phba->io_sgl_hndl_base);
  kfree(phba->eh_sgl_hndl_base);
  goto cleanup_port;
 }
 return ret;

cleanup_port:
 hwi_cleanup_port(phba);
 return ret;
}
