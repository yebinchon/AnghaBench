
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct genl_info {int dummy; } ;


 int TCMU_CMD_ADDED_DEVICE ;
 int tcmu_genl_cmd_done (struct genl_info*,int ) ;

__attribute__((used)) static int tcmu_genl_add_dev_done(struct sk_buff *skb, struct genl_info *info)
{
 return tcmu_genl_cmd_done(info, TCMU_CMD_ADDED_DEVICE);
}
