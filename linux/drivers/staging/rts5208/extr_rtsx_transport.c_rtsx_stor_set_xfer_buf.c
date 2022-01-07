
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_cmnd {int dummy; } ;


 int TO_XFER_BUF ;
 int rtsx_stor_access_xfer_buf (unsigned char*,unsigned int,struct scsi_cmnd*,unsigned int*,unsigned int*,int ) ;
 unsigned int scsi_bufflen (struct scsi_cmnd*) ;
 int scsi_set_resid (struct scsi_cmnd*,unsigned int) ;

void rtsx_stor_set_xfer_buf(unsigned char *buffer,
       unsigned int buflen, struct scsi_cmnd *srb)
{
 unsigned int index = 0, offset = 0;

 rtsx_stor_access_xfer_buf(buffer, buflen, srb, &index, &offset,
      TO_XFER_BUF);
 if (buflen < scsi_bufflen(srb))
  scsi_set_resid(srb, scsi_bufflen(srb) - buflen);
}
