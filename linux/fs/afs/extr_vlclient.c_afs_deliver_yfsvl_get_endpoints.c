
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uuid_t ;
typedef int u32 ;
struct afs_call {int unmarshall; int count2; int count; int * buffer; struct afs_addr_list* ret_alist; int _iter; } ;
struct afs_addr_list {int version; } ;
typedef int __be32 ;


 int AFS_FS_PORT ;
 int EBADMSG ;
 int ENOMEM ;
 int FS_SERVICE ;


 int YFS_MAXENDPOINTS ;
 int _enter (char*,int,int ,int) ;
 int _leave (char*) ;
 struct afs_addr_list* afs_alloc_addrlist (int,int ,int ) ;
 int afs_eproto_yvl_fsendpt4_len ;
 int afs_eproto_yvl_fsendpt6_len ;
 int afs_eproto_yvl_fsendpt_num ;
 int afs_eproto_yvl_fsendpt_type ;
 int afs_eproto_yvl_vlendpt4_len ;
 int afs_eproto_yvl_vlendpt6_len ;
 int afs_eproto_yvl_vlendpt_type ;
 int afs_extract_data (struct afs_call*,int) ;
 int afs_extract_discard (struct afs_call*,int ) ;
 int afs_extract_to_buf (struct afs_call*,int) ;
 int afs_merge_fs_addr4 (struct afs_addr_list*,int ,int) ;
 int afs_merge_fs_addr6 (struct afs_addr_list*,int *,int) ;
 int afs_protocol_error (struct afs_call*,int ,int ) ;
 int iov_iter_count (int ) ;
 int ntohl (int ) ;

__attribute__((used)) static int afs_deliver_yfsvl_get_endpoints(struct afs_call *call)
{
 struct afs_addr_list *alist;
 __be32 *bp;
 u32 uniquifier, size;
 int ret;

 _enter("{%u,%zu,%u}",
        call->unmarshall, iov_iter_count(call->_iter), call->count2);

 switch (call->unmarshall) {
 case 0:
  afs_extract_to_buf(call, sizeof(uuid_t) + 3 * sizeof(__be32));
  call->unmarshall = 1;





 case 1:
  ret = afs_extract_data(call, 1);
  if (ret < 0)
   return ret;

  bp = call->buffer + sizeof(uuid_t);
  uniquifier = ntohl(*bp++);
  call->count = ntohl(*bp++);
  call->count2 = ntohl(*bp);

  if (call->count > YFS_MAXENDPOINTS)
   return afs_protocol_error(call, -EBADMSG,
        afs_eproto_yvl_fsendpt_num);

  alist = afs_alloc_addrlist(call->count, FS_SERVICE, AFS_FS_PORT);
  if (!alist)
   return -ENOMEM;
  alist->version = uniquifier;
  call->ret_alist = alist;

  if (call->count == 0)
   goto extract_volendpoints;

 next_fsendpoint:
  switch (call->count2) {
  case 129:
   size = sizeof(__be32) * (1 + 1 + 1);
   break;
  case 128:
   size = sizeof(__be32) * (1 + 4 + 1);
   break;
  default:
   return afs_protocol_error(call, -EBADMSG,
        afs_eproto_yvl_fsendpt_type);
  }

  size += sizeof(__be32);
  afs_extract_to_buf(call, size);
  call->unmarshall = 2;


 case 2:
  ret = afs_extract_data(call, 1);
  if (ret < 0)
   return ret;

  alist = call->ret_alist;
  bp = call->buffer;
  switch (call->count2) {
  case 129:
   if (ntohl(bp[0]) != sizeof(__be32) * 2)
    return afs_protocol_error(call, -EBADMSG,
         afs_eproto_yvl_fsendpt4_len);
   afs_merge_fs_addr4(alist, bp[1], ntohl(bp[2]));
   bp += 3;
   break;
  case 128:
   if (ntohl(bp[0]) != sizeof(__be32) * 5)
    return afs_protocol_error(call, -EBADMSG,
         afs_eproto_yvl_fsendpt6_len);
   afs_merge_fs_addr6(alist, bp + 1, ntohl(bp[5]));
   bp += 6;
   break;
  default:
   return afs_protocol_error(call, -EBADMSG,
        afs_eproto_yvl_fsendpt_type);
  }




  call->count2 = ntohl(*bp++);

  call->count--;
  if (call->count > 0)
   goto next_fsendpoint;

 extract_volendpoints:

  call->count = call->count2;
  if (!call->count)
   goto end;
  if (call->count > YFS_MAXENDPOINTS)
   return afs_protocol_error(call, -EBADMSG,
        afs_eproto_yvl_vlendpt_type);

  afs_extract_to_buf(call, 1 * sizeof(__be32));
  call->unmarshall = 3;






 case 3:
  ret = afs_extract_data(call, 1);
  if (ret < 0)
   return ret;

  bp = call->buffer;

 next_volendpoint:
  call->count2 = ntohl(*bp++);
  switch (call->count2) {
  case 129:
   size = sizeof(__be32) * (1 + 1 + 1);
   break;
  case 128:
   size = sizeof(__be32) * (1 + 4 + 1);
   break;
  default:
   return afs_protocol_error(call, -EBADMSG,
        afs_eproto_yvl_vlendpt_type);
  }

  if (call->count > 1)
   size += sizeof(__be32);
  afs_extract_to_buf(call, size);
  call->unmarshall = 4;


 case 4:
  ret = afs_extract_data(call, 1);
  if (ret < 0)
   return ret;

  bp = call->buffer;
  switch (call->count2) {
  case 129:
   if (ntohl(bp[0]) != sizeof(__be32) * 2)
    return afs_protocol_error(call, -EBADMSG,
         afs_eproto_yvl_vlendpt4_len);
   bp += 3;
   break;
  case 128:
   if (ntohl(bp[0]) != sizeof(__be32) * 5)
    return afs_protocol_error(call, -EBADMSG,
         afs_eproto_yvl_vlendpt6_len);
   bp += 6;
   break;
  default:
   return afs_protocol_error(call, -EBADMSG,
        afs_eproto_yvl_vlendpt_type);
  }




  call->count--;
  if (call->count > 0)
   goto next_volendpoint;

 end:
  afs_extract_discard(call, 0);
  call->unmarshall = 5;


 case 5:
  ret = afs_extract_data(call, 0);
  if (ret < 0)
   return ret;
  call->unmarshall = 6;

 case 6:
  break;
 }

 _leave(" = 0 [done]");
 return 0;
}
