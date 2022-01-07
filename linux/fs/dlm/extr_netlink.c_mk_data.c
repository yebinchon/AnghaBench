
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct nlattr {int dummy; } ;
struct dlm_lock_data {int dummy; } ;


 int DLM_TYPE_LOCK ;
 struct dlm_lock_data* nla_data (struct nlattr*) ;
 struct nlattr* nla_reserve (struct sk_buff*,int ,int) ;

__attribute__((used)) static struct dlm_lock_data *mk_data(struct sk_buff *skb)
{
 struct nlattr *ret;

 ret = nla_reserve(skb, DLM_TYPE_LOCK, sizeof(struct dlm_lock_data));
 if (!ret)
  return ((void*)0);
 return nla_data(ret);
}
