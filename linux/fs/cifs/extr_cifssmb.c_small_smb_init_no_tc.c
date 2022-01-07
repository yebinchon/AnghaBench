
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smb_hdr {int Flags2; int Mid; } ;
struct cifs_ses {int capabilities; int server; } ;


 int CAP_STATUS32 ;
 int CAP_UNICODE ;
 int SMBFLG2_ERR_STATUS ;
 int SMBFLG2_UNICODE ;
 int get_next_mid (int ) ;
 int small_smb_init (int const,int const,int *,void**) ;

int
small_smb_init_no_tc(const int smb_command, const int wct,
       struct cifs_ses *ses, void **request_buf)
{
 int rc;
 struct smb_hdr *buffer;

 rc = small_smb_init(smb_command, wct, ((void*)0), request_buf);
 if (rc)
  return rc;

 buffer = (struct smb_hdr *)*request_buf;
 buffer->Mid = get_next_mid(ses->server);
 if (ses->capabilities & CAP_UNICODE)
  buffer->Flags2 |= SMBFLG2_UNICODE;
 if (ses->capabilities & CAP_STATUS32)
  buffer->Flags2 |= SMBFLG2_ERR_STATUS;






 return rc;
}
