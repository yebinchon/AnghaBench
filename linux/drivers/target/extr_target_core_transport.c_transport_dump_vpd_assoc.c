
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct t10_vpd {int association; } ;


 int EINVAL ;
 int VPD_TMP_BUF_SIZE ;
 int memset (unsigned char*,int ,int) ;
 int pr_debug (char*,unsigned char*) ;
 int sprintf (unsigned char*,char*,...) ;
 int strncpy (unsigned char*,unsigned char*,int) ;

int transport_dump_vpd_assoc(
 struct t10_vpd *vpd,
 unsigned char *p_buf,
 int p_buf_len)
{
 unsigned char buf[VPD_TMP_BUF_SIZE];
 int ret = 0;
 int len;

 memset(buf, 0, VPD_TMP_BUF_SIZE);
 len = sprintf(buf, "T10 VPD Identifier Association: ");

 switch (vpd->association) {
 case 0x00:
  sprintf(buf+len, "addressed logical unit\n");
  break;
 case 0x10:
  sprintf(buf+len, "target port\n");
  break;
 case 0x20:
  sprintf(buf+len, "SCSI target device\n");
  break;
 default:
  sprintf(buf+len, "Unknown 0x%02x\n", vpd->association);
  ret = -EINVAL;
  break;
 }

 if (p_buf)
  strncpy(p_buf, buf, p_buf_len);
 else
  pr_debug("%s", buf);

 return ret;
}
