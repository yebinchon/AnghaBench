
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net {int dummy; } ;
struct TCP_Server_Info {int dummy; } ;


 struct net init_net ;

__attribute__((used)) static inline struct net *cifs_net_ns(struct TCP_Server_Info *srv)
{
 return &init_net;
}
