
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct fw_fcoe_port_stats {int dummy; } ;
struct fw_fcoe_port_cmd_params {int idx; int nstats; int portid; } ;
struct csio_mb {int dummy; } ;
struct csio_hw {int mb_mempool; } ;
typedef enum fw_retval { ____Placeholder_fw_retval } fw_retval ;


 int CSIO_MB_DEFAULT_TMO ;
 int EINVAL ;
 int GFP_ATOMIC ;
 int csio_err (struct csio_hw*,char*) ;
 int csio_fcoe_read_portparams_init_mb (struct csio_hw*,struct csio_mb*,int ,struct fw_fcoe_port_cmd_params*,int *) ;
 scalar_t__ csio_mb_issue (struct csio_hw*,struct csio_mb*) ;
 int csio_mb_process_portparams_rsp (struct csio_hw*,struct csio_mb*,int*,struct fw_fcoe_port_cmd_params*,struct fw_fcoe_port_stats*) ;
 struct csio_mb* mempool_alloc (int ,int ) ;
 int mempool_free (struct csio_mb*,int ) ;

int
csio_get_phy_port_stats(struct csio_hw *hw, uint8_t portid,
   struct fw_fcoe_port_stats *port_stats)
{
 struct csio_mb *mbp;
 struct fw_fcoe_port_cmd_params portparams;
 enum fw_retval retval;
 int idx;

 mbp = mempool_alloc(hw->mb_mempool, GFP_ATOMIC);
 if (!mbp) {
  csio_err(hw, "FCoE FCF PARAMS command out of memory!\n");
  return -EINVAL;
 }
 portparams.portid = portid;

 for (idx = 1; idx <= 3; idx++) {
  portparams.idx = (idx-1)*6 + 1;
  portparams.nstats = 6;
  if (idx == 3)
   portparams.nstats = 4;
  csio_fcoe_read_portparams_init_mb(hw, mbp, CSIO_MB_DEFAULT_TMO,
       &portparams, ((void*)0));
  if (csio_mb_issue(hw, mbp)) {
   csio_err(hw, "Issue of FCoE port params failed!\n");
   mempool_free(mbp, hw->mb_mempool);
   return -EINVAL;
  }
  csio_mb_process_portparams_rsp(hw, mbp, &retval,
      &portparams, port_stats);
 }

 mempool_free(mbp, hw->mb_mempool);
 return 0;
}
