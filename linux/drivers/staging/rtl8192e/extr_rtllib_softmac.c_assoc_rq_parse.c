
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct sk_buff {int len; scalar_t__ data; } ;
struct rtllib_info_element {int dummy; } ;
struct TYPE_2__ {int addr2; } ;
struct rtllib_assoc_request_frame {TYPE_1__ header; } ;
struct net_device {int dummy; } ;


 int ether_addr_copy (int *,int ) ;
 int netdev_dbg (struct net_device*,char*,int) ;

__attribute__((used)) static int assoc_rq_parse(struct net_device *dev, struct sk_buff *skb, u8 *dest)
{
 struct rtllib_assoc_request_frame *a;

 if (skb->len < (sizeof(struct rtllib_assoc_request_frame) -
  sizeof(struct rtllib_info_element))) {
  netdev_dbg(dev, "invalid len in auth request:%d\n", skb->len);
  return -1;
 }

 a = (struct rtllib_assoc_request_frame *) skb->data;

 ether_addr_copy(dest, a->header.addr2);

 return 0;
}
