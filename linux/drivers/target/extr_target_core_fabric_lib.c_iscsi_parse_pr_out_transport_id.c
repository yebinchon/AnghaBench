
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct se_portal_group {int dummy; } ;


 int get_unaligned_be16 (char*) ;
 scalar_t__ isdigit (char) ;
 int pr_debug (char*,int,int) ;
 int pr_err (char*,...) ;
 int strlen (char*) ;
 char* strstr (char*,char*) ;
 char tolower (char) ;

__attribute__((used)) static char *iscsi_parse_pr_out_transport_id(
 struct se_portal_group *se_tpg,
 char *buf,
 u32 *out_tid_len,
 char **port_nexus_ptr)
{
 char *p;
 u32 tid_len, padding;
 int i;
 u16 add_len;
 u8 format_code = (buf[0] & 0xc0);
 if ((format_code != 0x00) && (format_code != 0x40)) {
  pr_err("Illegal format code: 0x%02x for iSCSI"
   " Initiator Transport ID\n", format_code);
  return ((void*)0);
 }




 if (out_tid_len) {

  add_len = get_unaligned_be16(&buf[2]);

  tid_len = strlen(&buf[4]);
  tid_len += 4;
  tid_len += 1;
  padding = ((-tid_len) & 3);
  if (padding != 0)
   tid_len += padding;

  if ((add_len + 4) != tid_len) {
   pr_debug("LIO-Target Extracted add_len: %hu "
    "does not match calculated tid_len: %u,"
    " using tid_len instead\n", add_len+4, tid_len);
   *out_tid_len = tid_len;
  } else
   *out_tid_len = (add_len + 4);
 }





 if (format_code == 0x40) {
  p = strstr(&buf[4], ",i,0x");
  if (!p) {
   pr_err("Unable to locate \",i,0x\" separator"
    " for Initiator port identifier: %s\n",
    &buf[4]);
   return ((void*)0);
  }
  *p = '\0';
  p += 5;

  *port_nexus_ptr = p;






  for (i = 0; i < 12; i++) {
   if (isdigit(*p)) {
    p++;
    continue;
   }
   *p = tolower(*p);
   p++;
  }
 }

 return &buf[4];
}
