
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smb_hdr {int dummy; } ;
struct smb2_sync_hdr {int dummy; } ;


 int GFP_NOFS ;
 int atomic_inc (int *) ;
 int bufAllocCount ;
 int cifs_req_poolp ;
 struct smb_hdr* mempool_alloc (int ,int ) ;
 int memset (struct smb_hdr*,int ,size_t) ;
 int totBufAllocCount ;

struct smb_hdr *
cifs_buf_get(void)
{
 struct smb_hdr *ret_buf = ((void*)0);




 size_t buf_size = sizeof(struct smb2_sync_hdr);







 ret_buf = mempool_alloc(cifs_req_poolp, GFP_NOFS);



 memset(ret_buf, 0, buf_size + 3);
 atomic_inc(&bufAllocCount);




 return ret_buf;
}
