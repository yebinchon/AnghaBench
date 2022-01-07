
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_device {int dummy; } ;


 int DMA_FROM_DEVICE ;
 int EINVAL ;
 int KERN_ERR ;
 int RECEIVE_DIAGNOSTIC ;
 int SES_RETRIES ;
 int SES_TIMEOUT ;
 scalar_t__ likely (int) ;
 int scsi_execute_req (struct scsi_device*,unsigned char*,int ,void*,int,int *,int ,int ,int *) ;
 int sdev_printk (int ,struct scsi_device*,char*,int,unsigned char) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int ses_recv_diag(struct scsi_device *sdev, int page_code,
    void *buf, int bufflen)
{
 int ret;
 unsigned char cmd[] = {
  RECEIVE_DIAGNOSTIC,
  1,
  page_code,
  bufflen >> 8,
  bufflen & 0xff,
  0
 };
 unsigned char recv_page_code;

 ret = scsi_execute_req(sdev, cmd, DMA_FROM_DEVICE, buf, bufflen,
    ((void*)0), SES_TIMEOUT, SES_RETRIES, ((void*)0));
 if (unlikely(ret))
  return ret;

 recv_page_code = ((unsigned char *)buf)[0];

 if (likely(recv_page_code == page_code))
  return ret;




 sdev_printk(KERN_ERR, sdev,
      "Wrong diagnostic page; asked for %d got %u\n",
      page_code, recv_page_code);

 return -EINVAL;
}
