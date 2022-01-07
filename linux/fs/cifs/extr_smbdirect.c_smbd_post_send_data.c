
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct smbd_connection {int dummy; } ;
struct scatterlist {int dummy; } ;
struct kvec {scalar_t__ iov_len; int iov_base; } ;


 int ENOMEM ;
 int SMBDIRECT_MAX_SGE ;
 int VFS ;
 int cifs_dbg (int ,char*,int) ;
 int sg_init_table (struct scatterlist*,int) ;
 int sg_set_buf (struct scatterlist*,int ,scalar_t__) ;
 int smbd_post_send_sgl (struct smbd_connection*,struct scatterlist*,int ,int) ;

__attribute__((used)) static int smbd_post_send_data(
 struct smbd_connection *info, struct kvec *iov, int n_vec,
 int remaining_data_length)
{
 int i;
 u32 data_length = 0;
 struct scatterlist sgl[SMBDIRECT_MAX_SGE];

 if (n_vec > SMBDIRECT_MAX_SGE) {
  cifs_dbg(VFS, "Can't fit data to SGL, n_vec=%d\n", n_vec);
  return -ENOMEM;
 }

 sg_init_table(sgl, n_vec);
 for (i = 0; i < n_vec; i++) {
  data_length += iov[i].iov_len;
  sg_set_buf(&sgl[i], iov[i].iov_base, iov[i].iov_len);
 }

 return smbd_post_send_sgl(info, sgl, data_length, remaining_data_length);
}
