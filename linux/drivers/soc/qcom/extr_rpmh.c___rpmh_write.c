
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int state; int num_cmds; int * cmds; } ;
struct rpmh_request {TYPE_1__ msg; } ;
struct rpmh_ctrlr {int dummy; } ;
struct device {int dummy; } ;
struct cache_req {int dummy; } ;
typedef enum rpmh_state { ____Placeholder_rpmh_state } rpmh_state ;


 int EINVAL ;
 scalar_t__ IS_ERR (struct cache_req*) ;
 int PTR_ERR (struct cache_req*) ;
 int RPMH_ACTIVE_ONLY_STATE ;
 int WARN_ON (int ) ;
 struct cache_req* cache_rpm_request (struct rpmh_ctrlr*,int,int *) ;
 int ctrlr_to_drv (struct rpmh_ctrlr*) ;
 struct rpmh_ctrlr* get_rpmh_ctrlr (struct device const*) ;
 int irqs_disabled () ;
 int rpmh_rsc_send_data (int ,TYPE_1__*) ;
 int rpmh_tx_done (TYPE_1__*,int) ;

__attribute__((used)) static int __rpmh_write(const struct device *dev, enum rpmh_state state,
   struct rpmh_request *rpm_msg)
{
 struct rpmh_ctrlr *ctrlr = get_rpmh_ctrlr(dev);
 int ret = -EINVAL;
 struct cache_req *req;
 int i;

 rpm_msg->msg.state = state;


 for (i = 0; i < rpm_msg->msg.num_cmds; i++) {
  req = cache_rpm_request(ctrlr, state, &rpm_msg->msg.cmds[i]);
  if (IS_ERR(req))
   return PTR_ERR(req);
 }

 rpm_msg->msg.state = state;

 if (state == RPMH_ACTIVE_ONLY_STATE) {
  WARN_ON(irqs_disabled());
  ret = rpmh_rsc_send_data(ctrlr_to_drv(ctrlr), &rpm_msg->msg);
 } else {

  ret = 0;
  rpmh_tx_done(&rpm_msg->msg, ret);
 }

 return ret;
}
