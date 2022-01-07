
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TCP_Server_Info {TYPE_1__* ops; } ;
typedef int __u16 ;
typedef int __le16 ;
struct TYPE_2__ {int (* get_next_mid ) (struct TCP_Server_Info*) ;} ;


 int cpu_to_le16 (int ) ;
 int stub1 (struct TCP_Server_Info*) ;

__attribute__((used)) static inline __le16
get_next_mid(struct TCP_Server_Info *server)
{
 __u16 mid = server->ops->get_next_mid(server);




 return cpu_to_le16(mid);
}
