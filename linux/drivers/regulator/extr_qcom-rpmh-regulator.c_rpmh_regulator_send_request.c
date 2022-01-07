
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcs_cmd {int dummy; } ;
struct rpmh_vreg {int dev; scalar_t__ always_wait_for_ack; } ;


 int RPMH_ACTIVE_ONLY_STATE ;
 int rpmh_write (int ,int ,struct tcs_cmd*,int) ;
 int rpmh_write_async (int ,int ,struct tcs_cmd*,int) ;

__attribute__((used)) static int rpmh_regulator_send_request(struct rpmh_vreg *vreg,
   struct tcs_cmd *cmd, bool wait_for_ack)
{
 int ret;

 if (wait_for_ack || vreg->always_wait_for_ack)
  ret = rpmh_write(vreg->dev, RPMH_ACTIVE_ONLY_STATE, cmd, 1);
 else
  ret = rpmh_write_async(vreg->dev, RPMH_ACTIVE_ONLY_STATE, cmd,
     1);

 return ret;
}
