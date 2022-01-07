
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct t10_vpd {int device_identifier_code_set; char* device_identifier; } ;
typedef int buf ;


 int EINVAL ;
 int VPD_TMP_BUF_SIZE ;
 int memset (unsigned char*,int ,int) ;
 int pr_debug (char*,unsigned char*) ;
 int snprintf (unsigned char*,int,char*,char*) ;
 int sprintf (unsigned char*,char*,int) ;
 int strncpy (unsigned char*,unsigned char*,int) ;

int transport_dump_vpd_ident(
 struct t10_vpd *vpd,
 unsigned char *p_buf,
 int p_buf_len)
{
 unsigned char buf[VPD_TMP_BUF_SIZE];
 int ret = 0;

 memset(buf, 0, VPD_TMP_BUF_SIZE);

 switch (vpd->device_identifier_code_set) {
 case 0x01:
  snprintf(buf, sizeof(buf),
   "T10 VPD Binary Device Identifier: %s\n",
   &vpd->device_identifier[0]);
  break;
 case 0x02:
  snprintf(buf, sizeof(buf),
   "T10 VPD ASCII Device Identifier: %s\n",
   &vpd->device_identifier[0]);
  break;
 case 0x03:
  snprintf(buf, sizeof(buf),
   "T10 VPD UTF-8 Device Identifier: %s\n",
   &vpd->device_identifier[0]);
  break;
 default:
  sprintf(buf, "T10 VPD Device Identifier encoding unsupported:"
   " 0x%02x", vpd->device_identifier_code_set);
  ret = -EINVAL;
  break;
 }

 if (p_buf)
  strncpy(p_buf, buf, p_buf_len);
 else
  pr_debug("%s", buf);

 return ret;
}
