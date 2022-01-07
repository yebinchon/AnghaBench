
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int sin6_port; int sin6_family; } ;
struct TYPE_4__ {TYPE_1__ sin6; } ;
struct sockaddr_rxrpc {unsigned short srx_service; int transport_len; TYPE_2__ transport; int transport_type; int srx_family; } ;
struct afs_addr_list {unsigned int max_addrs; struct sockaddr_rxrpc* addrs; int usage; } ;


 unsigned int AFS_MAX_ADDRESSES ;
 int AF_INET6 ;
 int AF_RXRPC ;
 int GFP_KERNEL ;
 int SOCK_DGRAM ;
 int _enter (char*,unsigned int,unsigned short,unsigned short) ;
 int addrs ;
 int htons (unsigned short) ;
 struct afs_addr_list* kzalloc (int ,int ) ;
 int refcount_set (int *,int) ;
 int struct_size (struct afs_addr_list*,int ,unsigned int) ;

struct afs_addr_list *afs_alloc_addrlist(unsigned int nr,
      unsigned short service,
      unsigned short port)
{
 struct afs_addr_list *alist;
 unsigned int i;

 _enter("%u,%u,%u", nr, service, port);

 if (nr > AFS_MAX_ADDRESSES)
  nr = AFS_MAX_ADDRESSES;

 alist = kzalloc(struct_size(alist, addrs, nr), GFP_KERNEL);
 if (!alist)
  return ((void*)0);

 refcount_set(&alist->usage, 1);
 alist->max_addrs = nr;

 for (i = 0; i < nr; i++) {
  struct sockaddr_rxrpc *srx = &alist->addrs[i];
  srx->srx_family = AF_RXRPC;
  srx->srx_service = service;
  srx->transport_type = SOCK_DGRAM;
  srx->transport_len = sizeof(srx->transport.sin6);
  srx->transport.sin6.sin6_family = AF_INET6;
  srx->transport.sin6.sin6_port = htons(port);
 }

 return alist;
}
