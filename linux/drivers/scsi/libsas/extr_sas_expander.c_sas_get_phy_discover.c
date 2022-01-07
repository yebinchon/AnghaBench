
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct smp_resp {int result; } ;
struct domain_device {int dummy; } ;


 int DISCOVER_REQ_SIZE ;
 int DISCOVER_RESP_SIZE ;
 int ENOMEM ;
 int SMP_DISCOVER ;
 int SMP_RESP_FUNC_ACC ;
 int* alloc_smp_req (int ) ;
 int kfree (int*) ;
 int smp_execute_task (struct domain_device*,int*,int ,struct smp_resp*,int ) ;

__attribute__((used)) static int sas_get_phy_discover(struct domain_device *dev,
    int phy_id, struct smp_resp *disc_resp)
{
 int res;
 u8 *disc_req;

 disc_req = alloc_smp_req(DISCOVER_REQ_SIZE);
 if (!disc_req)
  return -ENOMEM;

 disc_req[1] = SMP_DISCOVER;
 disc_req[9] = phy_id;

 res = smp_execute_task(dev, disc_req, DISCOVER_REQ_SIZE,
          disc_resp, DISCOVER_RESP_SIZE);
 if (res)
  goto out;
 else if (disc_resp->result != SMP_RESP_FUNC_ACC) {
  res = disc_resp->result;
  goto out;
 }
out:
 kfree(disc_req);
 return res;
}
