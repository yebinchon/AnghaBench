
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct msghdr {int msg_iter; } ;
struct bio_vec {unsigned int bv_len; unsigned int bv_offset; struct page* bv_page; } ;
struct TCP_Server_Info {int dummy; } ;


 int READ ;
 int cifs_readv_from_socket (struct TCP_Server_Info*,struct msghdr*) ;
 int iov_iter_bvec (int *,int ,struct bio_vec*,int,unsigned int) ;

int
cifs_read_page_from_socket(struct TCP_Server_Info *server, struct page *page,
 unsigned int page_offset, unsigned int to_read)
{
 struct msghdr smb_msg;
 struct bio_vec bv = {
  .bv_page = page, .bv_len = to_read, .bv_offset = page_offset};
 iov_iter_bvec(&smb_msg.msg_iter, READ, &bv, 1, to_read);
 return cifs_readv_from_socket(server, &smb_msg);
}
