
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct afs_uuid__xdr {int dummy; } ;
struct afs_call {int unmarshall; int count; int count2; int * buffer; struct afs_addr_list* ret_alist; int _iter; } ;
struct afs_addr_list {int version; int nr_addrs; } ;
typedef int __be32 ;


 int AFS_FS_PORT ;
 int ENOMEM ;
 int FS_SERVICE ;
 int _enter (char*,int,int ,int) ;
 int _leave (char*) ;
 struct afs_addr_list* afs_alloc_addrlist (int,int ,int ) ;
 int afs_extract_data (struct afs_call*,int) ;
 int afs_extract_to_buf (struct afs_call*,int) ;
 int afs_merge_fs_addr4 (struct afs_addr_list*,int ,int ) ;
 int iov_iter_count (int ) ;
 int min (int,unsigned int) ;
 int ntohl (int ) ;

__attribute__((used)) static int afs_deliver_vl_get_addrs_u(struct afs_call *call)
{
 struct afs_addr_list *alist;
 __be32 *bp;
 u32 uniquifier, nentries, count;
 int i, ret;

 _enter("{%u,%zu/%u}",
        call->unmarshall, iov_iter_count(call->_iter), call->count);

 switch (call->unmarshall) {
 case 0:
  afs_extract_to_buf(call,
       sizeof(struct afs_uuid__xdr) + 3 * sizeof(__be32));
  call->unmarshall++;




 case 1:
  ret = afs_extract_data(call, 1);
  if (ret < 0)
   return ret;

  bp = call->buffer + sizeof(struct afs_uuid__xdr);
  uniquifier = ntohl(*bp++);
  nentries = ntohl(*bp++);
  count = ntohl(*bp);

  nentries = min(nentries, count);
  alist = afs_alloc_addrlist(nentries, FS_SERVICE, AFS_FS_PORT);
  if (!alist)
   return -ENOMEM;
  alist->version = uniquifier;
  call->ret_alist = alist;
  call->count = count;
  call->count2 = nentries;
  call->unmarshall++;

 more_entries:
  count = min(call->count, 4U);
  afs_extract_to_buf(call, count * sizeof(__be32));


 case 2:
  ret = afs_extract_data(call, call->count > 4);
  if (ret < 0)
   return ret;

  alist = call->ret_alist;
  bp = call->buffer;
  count = min(call->count, 4U);
  for (i = 0; i < count; i++)
   if (alist->nr_addrs < call->count2)
    afs_merge_fs_addr4(alist, *bp++, AFS_FS_PORT);

  call->count -= count;
  if (call->count > 0)
   goto more_entries;
  call->unmarshall++;
  break;
 }

 _leave(" = 0 [done]");
 return 0;
}
