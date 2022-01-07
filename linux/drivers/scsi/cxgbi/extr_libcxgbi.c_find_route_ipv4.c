
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct rtable {int dummy; } ;
struct flowi4 {int dummy; } ;
typedef int __be32 ;
typedef int __be16 ;


 int IPPROTO_TCP ;
 scalar_t__ IS_ERR (struct rtable*) ;
 int init_net ;
 struct rtable* ip_route_output_ports (int *,struct flowi4*,int *,int ,int ,int ,int ,int ,int ,int) ;

__attribute__((used)) static struct rtable *find_route_ipv4(struct flowi4 *fl4,
          __be32 saddr, __be32 daddr,
          __be16 sport, __be16 dport, u8 tos,
          int ifindex)
{
 struct rtable *rt;

 rt = ip_route_output_ports(&init_net, fl4, ((void*)0), daddr, saddr,
       dport, sport, IPPROTO_TCP, tos, ifindex);
 if (IS_ERR(rt))
  return ((void*)0);

 return rt;
}
