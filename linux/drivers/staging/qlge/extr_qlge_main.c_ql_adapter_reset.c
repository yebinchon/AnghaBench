
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ql_adapter {int ndev; int flags; } ;


 int ETIMEDOUT ;
 int MB_SET_MPI_TFK_RESUME ;
 int MB_SET_MPI_TFK_STOP ;
 int QL_ASIC_RECOVERY ;
 int RST_FO ;
 int RST_FO_FR ;
 int clear_bit (int ,int *) ;
 int cpu_relax () ;
 int ifdown ;
 int ifup ;
 unsigned long jiffies ;
 int netif_err (struct ql_adapter*,int ,int ,char*) ;
 int ql_clear_routing_entries (struct ql_adapter*) ;
 int ql_mb_set_mgmnt_traffic_ctl (struct ql_adapter*,int ) ;
 int ql_read32 (struct ql_adapter*,int ) ;
 int ql_wait_fifo_empty (struct ql_adapter*) ;
 int ql_write32 (struct ql_adapter*,int ,int) ;
 int test_bit (int ,int *) ;
 scalar_t__ time_before (unsigned long,unsigned long) ;
 unsigned long usecs_to_jiffies (int) ;

__attribute__((used)) static int ql_adapter_reset(struct ql_adapter *qdev)
{
 u32 value;
 int status = 0;
 unsigned long end_jiffies;


 status = ql_clear_routing_entries(qdev);
 if (status) {
  netif_err(qdev, ifup, qdev->ndev, "Failed to clear routing bits.\n");
  return status;
 }




 if (!test_bit(QL_ASIC_RECOVERY, &qdev->flags)) {

  ql_mb_set_mgmnt_traffic_ctl(qdev, MB_SET_MPI_TFK_STOP);


  ql_wait_fifo_empty(qdev);
 } else
  clear_bit(QL_ASIC_RECOVERY, &qdev->flags);

 ql_write32(qdev, RST_FO, (RST_FO_FR << 16) | RST_FO_FR);

 end_jiffies = jiffies + usecs_to_jiffies(30);
 do {
  value = ql_read32(qdev, RST_FO);
  if ((value & RST_FO_FR) == 0)
   break;
  cpu_relax();
 } while (time_before(jiffies, end_jiffies));

 if (value & RST_FO_FR) {
  netif_err(qdev, ifdown, qdev->ndev,
     "ETIMEDOUT!!! errored out of resetting the chip!\n");
  status = -ETIMEDOUT;
 }


 ql_mb_set_mgmnt_traffic_ctl(qdev, MB_SET_MPI_TFK_RESUME);
 return status;
}
