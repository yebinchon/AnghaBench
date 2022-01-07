
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct afs_call {int unmarshall; int count; int count2; int tmp; int _iter; } ;
typedef int __be32 ;


 int _enter (char*,int,int ,int) ;
 int _leave (char*) ;
 int afs_extract_data (struct afs_call*,int) ;
 int afs_extract_discard (struct afs_call*,int) ;
 int afs_extract_to_tmp (struct afs_call*) ;
 int iov_iter_count (int ) ;
 int ntohl (int ) ;

__attribute__((used)) static int afs_deliver_vl_get_capabilities(struct afs_call *call)
{
 u32 count;
 int ret;

 _enter("{%u,%zu/%u}",
        call->unmarshall, iov_iter_count(call->_iter), call->count);

 switch (call->unmarshall) {
 case 0:
  afs_extract_to_tmp(call);
  call->unmarshall++;


 case 1:
  ret = afs_extract_data(call, 1);
  if (ret < 0)
   return ret;

  count = ntohl(call->tmp);
  call->count = count;
  call->count2 = count;

  call->unmarshall++;
  afs_extract_discard(call, count * sizeof(__be32));


 case 2:
  ret = afs_extract_data(call, 0);
  if (ret < 0)
   return ret;



  call->unmarshall++;
  break;
 }

 _leave(" = 0 [done]");
 return 0;
}
