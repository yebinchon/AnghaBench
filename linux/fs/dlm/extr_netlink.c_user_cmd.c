
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct genl_info {int snd_portid; } ;


 int listener_nlportid ;
 int printk (char*,int ) ;

__attribute__((used)) static int user_cmd(struct sk_buff *skb, struct genl_info *info)
{
 listener_nlportid = info->snd_portid;
 printk("user_cmd nlpid %u\n", listener_nlportid);
 return 0;
}
