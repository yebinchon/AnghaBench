
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zd_usb {scalar_t__ is_zd1211b; } ;


 int FW_ZD1211B_PREFIX ;
 int FW_ZD1211_PREFIX ;
 int scnprintf (char*,size_t,char*,int ,char const*) ;

__attribute__((used)) static char *get_fw_name(struct zd_usb *usb, char *buffer, size_t size,
                const char* postfix)
{
 scnprintf(buffer, size, "%s%s",
  usb->is_zd1211b ?
   FW_ZD1211B_PREFIX : FW_ZD1211_PREFIX,
  postfix);
 return buffer;
}
