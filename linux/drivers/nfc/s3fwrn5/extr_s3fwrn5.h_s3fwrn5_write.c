
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct s3fwrn5_info {int phy_id; TYPE_1__* phy_ops; } ;
struct TYPE_2__ {int (* write ) (int ,struct sk_buff*) ;} ;


 int ENOTSUPP ;
 int stub1 (int ,struct sk_buff*) ;

__attribute__((used)) static inline int s3fwrn5_write(struct s3fwrn5_info *info, struct sk_buff *skb)
{
 if (!info->phy_ops->write)
  return -ENOTSUPP;

 return info->phy_ops->write(info->phy_id, skb);
}
