
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u32 ;
typedef scalar_t__ u16 ;
struct TYPE_3__ {int s_addr; } ;
struct sockaddr_in {TYPE_1__ sin_addr; int sin_port; int sin_family; } ;
struct TYPE_4__ {struct sockaddr_in sin; } ;
struct sockaddr_rxrpc {int transport_len; TYPE_2__ transport; int transport_type; int srx_family; } ;
struct afs_addr_list {int nr_addrs; int max_addrs; int nr_ipv4; struct sockaddr_rxrpc* addrs; } ;
typedef int __be32 ;


 int AF_INET ;
 int AF_RXRPC ;
 int SOCK_DGRAM ;
 int htons (scalar_t__) ;
 int memmove (struct sockaddr_rxrpc*,struct sockaddr_rxrpc*,int) ;
 scalar_t__ ntohl (int ) ;
 scalar_t__ ntohs (int ) ;

void afs_merge_fs_addr4(struct afs_addr_list *alist, __be32 xdr, u16 port)
{
 struct sockaddr_rxrpc *srx;
 u32 addr = ntohl(xdr);
 int i;

 if (alist->nr_addrs >= alist->max_addrs)
  return;

 for (i = 0; i < alist->nr_ipv4; i++) {
  struct sockaddr_in *a = &alist->addrs[i].transport.sin;
  u32 a_addr = ntohl(a->sin_addr.s_addr);
  u16 a_port = ntohs(a->sin_port);

  if (addr == a_addr && port == a_port)
   return;
  if (addr == a_addr && port < a_port)
   break;
  if (addr < a_addr)
   break;
 }

 if (i < alist->nr_addrs)
  memmove(alist->addrs + i + 1,
   alist->addrs + i,
   sizeof(alist->addrs[0]) * (alist->nr_addrs - i));

 srx = &alist->addrs[i];
 srx->srx_family = AF_RXRPC;
 srx->transport_type = SOCK_DGRAM;
 srx->transport_len = sizeof(srx->transport.sin);
 srx->transport.sin.sin_family = AF_INET;
 srx->transport.sin.sin_port = htons(port);
 srx->transport.sin.sin_addr.s_addr = xdr;
 alist->nr_ipv4++;
 alist->nr_addrs++;
}
