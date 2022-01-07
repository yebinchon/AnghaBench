
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct slgt_info {int rx_restart; int pending_bh; int device_name; } ;


 int BH_RECEIVE ;
 unsigned int BIT4 ;
 unsigned int BIT5 ;
 int DBGISR (char*) ;
 int RDCSR ;
 unsigned int rd_reg32 (struct slgt_info*,int ) ;
 int wr_reg32 (struct slgt_info*,int ,unsigned int) ;

__attribute__((used)) static void isr_rdma(struct slgt_info *info)
{
 unsigned int status = rd_reg32(info, RDCSR);

 DBGISR(("%s isr_rdma status=%08x\n", info->device_name, status));
 wr_reg32(info, RDCSR, status);

 if (status & (BIT5 + BIT4)) {
  DBGISR(("%s isr_rdma rx_restart=1\n", info->device_name));
  info->rx_restart = 1;
 }
 info->pending_bh |= BH_RECEIVE;
}
