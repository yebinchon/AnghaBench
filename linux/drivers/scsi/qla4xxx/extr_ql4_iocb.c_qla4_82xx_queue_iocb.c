
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct scsi_qla_host {int func_num; int request_in; int nx_db_wr_ptr; } ;


 int qla4_82xx_wr_32 (struct scsi_qla_host*,int ,int) ;

void qla4_82xx_queue_iocb(struct scsi_qla_host *ha)
{
 uint32_t dbval = 0;

 dbval = 0x14 | (ha->func_num << 5);
 dbval = dbval | (0 << 8) | (ha->request_in << 16);

 qla4_82xx_wr_32(ha, ha->nx_db_wr_ptr, ha->request_in);
}
