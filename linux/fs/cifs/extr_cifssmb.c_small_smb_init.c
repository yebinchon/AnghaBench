
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smb_hdr {int dummy; } ;
struct cifs_tcon {int num_smbs_sent; } ;


 int ENOMEM ;
 int cifs_reconnect_tcon (struct cifs_tcon*,int) ;
 void* cifs_small_buf_get () ;
 int cifs_stats_inc (int *) ;
 int header_assemble (struct smb_hdr*,int,struct cifs_tcon*,int) ;

__attribute__((used)) static int
small_smb_init(int smb_command, int wct, struct cifs_tcon *tcon,
  void **request_buf)
{
 int rc;

 rc = cifs_reconnect_tcon(tcon, smb_command);
 if (rc)
  return rc;

 *request_buf = cifs_small_buf_get();
 if (*request_buf == ((void*)0)) {

  return -ENOMEM;
 }

 header_assemble((struct smb_hdr *) *request_buf, smb_command,
   tcon, wct);

 if (tcon != ((void*)0))
  cifs_stats_inc(&tcon->num_smbs_sent);

 return 0;
}
