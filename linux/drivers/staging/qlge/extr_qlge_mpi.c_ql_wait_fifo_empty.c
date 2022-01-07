
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ql_adapter {int dummy; } ;


 int ETIMEDOUT ;
 int MB_GET_MPI_TFK_FIFO_EMPTY ;
 int STS ;
 int STS_NFE ;
 int msleep (int) ;
 int ql_mb_get_mgmnt_traffic_ctl (struct ql_adapter*,int*) ;
 int ql_read32 (struct ql_adapter*,int ) ;

int ql_wait_fifo_empty(struct ql_adapter *qdev)
{
 int count = 5;
 u32 mgmnt_fifo_empty;
 u32 nic_fifo_empty;

 do {
  nic_fifo_empty = ql_read32(qdev, STS) & STS_NFE;
  ql_mb_get_mgmnt_traffic_ctl(qdev, &mgmnt_fifo_empty);
  mgmnt_fifo_empty &= MB_GET_MPI_TFK_FIFO_EMPTY;
  if (nic_fifo_empty && mgmnt_fifo_empty)
   return 0;
  msleep(100);
 } while (count-- > 0);
 return -ETIMEDOUT;
}
