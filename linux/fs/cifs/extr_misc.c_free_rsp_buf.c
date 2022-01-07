
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CIFS_LARGE_BUFFER ;
 int CIFS_SMALL_BUFFER ;
 int cifs_buf_release (void*) ;
 int cifs_small_buf_release (void*) ;

void
free_rsp_buf(int resp_buftype, void *rsp)
{
 if (resp_buftype == CIFS_SMALL_BUFFER)
  cifs_small_buf_release(rsp);
 else if (resp_buftype == CIFS_LARGE_BUFFER)
  cifs_buf_release(rsp);
}
