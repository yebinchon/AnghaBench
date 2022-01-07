
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct domain_device {int sas_addr; } ;


 int ENOMEM ;
 int MI_REQ_SIZE ;
 int MI_RESP_SIZE ;
 int SAS_ADDR (int ) ;
 scalar_t__ SMP_REPORT_MANUF_INFO ;
 scalar_t__ SMP_RESP_FUNC_ACC ;
 scalar_t__* alloc_smp_req (int ) ;
 scalar_t__* alloc_smp_resp (int ) ;
 int ex_assign_manuf_info (struct domain_device*,scalar_t__*) ;
 int kfree (scalar_t__*) ;
 int pr_debug (char*,int ,scalar_t__) ;
 int pr_notice (char*,int ,int) ;
 int smp_execute_task (struct domain_device*,scalar_t__*,int ,scalar_t__*,int ) ;

__attribute__((used)) static int sas_ex_manuf_info(struct domain_device *dev)
{
 u8 *mi_req;
 u8 *mi_resp;
 int res;

 mi_req = alloc_smp_req(MI_REQ_SIZE);
 if (!mi_req)
  return -ENOMEM;

 mi_resp = alloc_smp_resp(MI_RESP_SIZE);
 if (!mi_resp) {
  kfree(mi_req);
  return -ENOMEM;
 }

 mi_req[1] = SMP_REPORT_MANUF_INFO;

 res = smp_execute_task(dev, mi_req, MI_REQ_SIZE, mi_resp,MI_RESP_SIZE);
 if (res) {
  pr_notice("MI: ex %016llx failed:0x%x\n",
     SAS_ADDR(dev->sas_addr), res);
  goto out;
 } else if (mi_resp[2] != SMP_RESP_FUNC_ACC) {
  pr_debug("MI ex %016llx returned SMP result:0x%x\n",
    SAS_ADDR(dev->sas_addr), mi_resp[2]);
  goto out;
 }

 ex_assign_manuf_info(dev, mi_resp);
out:
 kfree(mi_req);
 kfree(mi_resp);
 return res;
}
