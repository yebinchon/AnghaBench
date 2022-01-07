
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u16 ;
struct sockaddr_in6 {int sin6_addr; int sin6_port; int sin6_family; } ;
struct TYPE_2__ {struct sockaddr_in6 sin6; } ;
struct sockaddr_rxrpc {int transport_len; TYPE_1__ transport; int transport_type; int srx_family; } ;
struct afs_addr_list {int nr_addrs; int max_addrs; int nr_ipv4; struct sockaddr_rxrpc* addrs; } ;
typedef int __be32 ;


 int AF_INET6 ;
 int AF_RXRPC ;
 int SOCK_DGRAM ;
 int htons (scalar_t__) ;
 int memcmp (int *,int *,int) ;
 int memcpy (int *,int *,int) ;
 int memmove (struct sockaddr_rxrpc*,struct sockaddr_rxrpc*,int) ;
 scalar_t__ ntohs (int ) ;

void afs_merge_fs_addr6(struct afs_addr_list *alist, __be32 *xdr, u16 port)
{
 struct sockaddr_rxrpc *srx;
 int i, diff;

 if (alist->nr_addrs >= alist->max_addrs)
  return;

 for (i = alist->nr_ipv4; i < alist->nr_addrs; i++) {
  struct sockaddr_in6 *a = &alist->addrs[i].transport.sin6;
  u16 a_port = ntohs(a->sin6_port);

  diff = memcmp(xdr, &a->sin6_addr, 16);
  if (diff == 0 && port == a_port)
   return;
  if (diff == 0 && port < a_port)
   break;
  if (diff < 0)
   break;
 }

 if (i < alist->nr_addrs)
  memmove(alist->addrs + i + 1,
   alist->addrs + i,
   sizeof(alist->addrs[0]) * (alist->nr_addrs - i));

 srx = &alist->addrs[i];
 srx->srx_family = AF_RXRPC;
 srx->transport_type = SOCK_DGRAM;
 srx->transport_len = sizeof(srx->transport.sin6);
 srx->transport.sin6.sin6_family = AF_INET6;
 srx->transport.sin6.sin6_port = htons(port);
 memcpy(&srx->transport.sin6.sin6_addr, xdr, 16);
 alist->nr_addrs++;
}
