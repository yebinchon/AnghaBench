
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_cmnd {int dummy; } ;
struct scatterlist {int dummy; } ;


 int TO_XFER_BUF ;
 unsigned int min (unsigned int,unsigned int) ;
 unsigned int scsi_bufflen (struct scsi_cmnd*) ;
 int scsi_set_resid (struct scsi_cmnd*,unsigned int) ;
 unsigned int usb_stor_access_xfer_buf (unsigned char*,unsigned int,struct scsi_cmnd*,struct scatterlist**,unsigned int*,int ) ;

void usb_stor_set_xfer_buf(unsigned char *buffer,
 unsigned int buflen, struct scsi_cmnd *srb)
{
 unsigned int offset = 0;
 struct scatterlist *sg = ((void*)0);

 buflen = min(buflen, scsi_bufflen(srb));
 buflen = usb_stor_access_xfer_buf(buffer, buflen, srb, &sg, &offset,
   TO_XFER_BUF);
 if (buflen < scsi_bufflen(srb))
  scsi_set_resid(srb, scsi_bufflen(srb) - buflen);
}
