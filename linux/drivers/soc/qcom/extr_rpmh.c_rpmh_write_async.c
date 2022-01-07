
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tcs_cmd {int dummy; } ;
struct rpmh_request {int needs_free; } ;
struct device {int dummy; } ;
typedef enum rpmh_state { ____Placeholder_rpmh_state } rpmh_state ;


 int ENOMEM ;
 int GFP_ATOMIC ;
 int __fill_rpmh_msg (struct rpmh_request*,int,struct tcs_cmd const*,int ) ;
 int __rpmh_write (struct device const*,int,struct rpmh_request*) ;
 int kfree (struct rpmh_request*) ;
 struct rpmh_request* kzalloc (int,int ) ;

int rpmh_write_async(const struct device *dev, enum rpmh_state state,
       const struct tcs_cmd *cmd, u32 n)
{
 struct rpmh_request *rpm_msg;
 int ret;

 rpm_msg = kzalloc(sizeof(*rpm_msg), GFP_ATOMIC);
 if (!rpm_msg)
  return -ENOMEM;
 rpm_msg->needs_free = 1;

 ret = __fill_rpmh_msg(rpm_msg, state, cmd, n);
 if (ret) {
  kfree(rpm_msg);
  return ret;
 }

 return __rpmh_write(dev, state, rpm_msg);
}
