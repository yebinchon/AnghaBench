
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smbd_connection {int dummy; } ;
struct scatterlist {int dummy; } ;
struct page {int dummy; } ;


 int sg_init_table (struct scatterlist*,int) ;
 int sg_set_page (struct scatterlist*,struct page*,size_t,unsigned long) ;
 int smbd_post_send_sgl (struct smbd_connection*,struct scatterlist*,size_t,int) ;

__attribute__((used)) static int smbd_post_send_page(struct smbd_connection *info, struct page *page,
  unsigned long offset, size_t size, int remaining_data_length)
{
 struct scatterlist sgl;

 sg_init_table(&sgl, 1);
 sg_set_page(&sgl, page, size, offset);

 return smbd_post_send_sgl(info, &sgl, size, remaining_data_length);
}
