
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sk_buff {int dummy; } ;
struct cxgbit_sock {int dummy; } ;


 struct sk_buff* __cxgbit_alloc_skb (struct cxgbit_sock*,int ,int) ;

__attribute__((used)) static struct sk_buff *cxgbit_alloc_skb(struct cxgbit_sock *csk, u32 len)
{
 return __cxgbit_alloc_skb(csk, len, 0);
}
