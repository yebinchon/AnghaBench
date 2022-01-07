
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned char u8 ;
struct scsi_device {scalar_t__ skip_vpd_pages; } ;


 int EINVAL ;
 int min (int,int) ;
 int scsi_vpd_inquiry (struct scsi_device*,unsigned char*,unsigned char,int) ;

int scsi_get_vpd_page(struct scsi_device *sdev, u8 page, unsigned char *buf,
        int buf_len)
{
 int i, result;

 if (sdev->skip_vpd_pages)
  goto fail;


 result = scsi_vpd_inquiry(sdev, buf, 0, buf_len);
 if (result < 4)
  goto fail;


 if (page == 0)
  return 0;

 for (i = 4; i < min(result, buf_len); i++)
  if (buf[i] == page)
   goto found;

 if (i < result && i >= buf_len)

  goto found;

 goto fail;

 found:
 result = scsi_vpd_inquiry(sdev, buf, page, buf_len);
 if (result < 0)
  goto fail;

 return 0;

 fail:
 return -EINVAL;
}
