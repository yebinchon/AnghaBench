
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sas_phy_linkrates {int minimum_linkrate; int maximum_linkrate; } ;
struct domain_device {int sas_addr; } ;
typedef enum phy_func { ____Placeholder_phy_func } phy_func ;


 int ENOMEM ;
 int PC_REQ_SIZE ;
 int PC_RESP_SIZE ;
 int SAS_ADDR (int ) ;
 int SMP_PHY_CONTROL ;
 int SMP_RESP_FUNC_ACC ;
 int* alloc_smp_req (int ) ;
 int* alloc_smp_resp (int ) ;
 int kfree (int*) ;
 int pr_err (char*,int ,int,int) ;
 int smp_execute_task (struct domain_device*,int*,int ,int*,int ) ;

int sas_smp_phy_control(struct domain_device *dev, int phy_id,
   enum phy_func phy_func,
   struct sas_phy_linkrates *rates)
{
 u8 *pc_req;
 u8 *pc_resp;
 int res;

 pc_req = alloc_smp_req(PC_REQ_SIZE);
 if (!pc_req)
  return -ENOMEM;

 pc_resp = alloc_smp_resp(PC_RESP_SIZE);
 if (!pc_resp) {
  kfree(pc_req);
  return -ENOMEM;
 }

 pc_req[1] = SMP_PHY_CONTROL;
 pc_req[9] = phy_id;
 pc_req[10]= phy_func;
 if (rates) {
  pc_req[32] = rates->minimum_linkrate << 4;
  pc_req[33] = rates->maximum_linkrate << 4;
 }

 res = smp_execute_task(dev, pc_req, PC_REQ_SIZE, pc_resp,PC_RESP_SIZE);
 if (res) {
  pr_err("ex %016llx phy%02d PHY control failed: %d\n",
         SAS_ADDR(dev->sas_addr), phy_id, res);
 } else if (pc_resp[2] != SMP_RESP_FUNC_ACC) {
  pr_err("ex %016llx phy%02d PHY control failed: function result 0x%x\n",
         SAS_ADDR(dev->sas_addr), phy_id, pc_resp[2]);
  res = pc_resp[2];
 }
 kfree(pc_resp);
 kfree(pc_req);
 return res;
}
