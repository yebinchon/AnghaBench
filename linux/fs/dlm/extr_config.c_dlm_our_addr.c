
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sockaddr_storage {int dummy; } ;
struct TYPE_2__ {int addr_count; int * addr; } ;


 TYPE_1__* local_comm ;
 int memcpy (struct sockaddr_storage*,int ,int) ;

int dlm_our_addr(struct sockaddr_storage *addr, int num)
{
 if (!local_comm)
  return -1;
 if (num + 1 > local_comm->addr_count)
  return -1;
 memcpy(addr, local_comm->addr[num], sizeof(*addr));
 return 0;
}
