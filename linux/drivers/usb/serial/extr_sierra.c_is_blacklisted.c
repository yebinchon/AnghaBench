
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct sierra_iface_info {scalar_t__* ifaceinfo; int infolen; } ;



__attribute__((used)) static int is_blacklisted(const u8 ifnum,
    const struct sierra_iface_info *blacklist)
{
 const u8 *info;
 int i;

 if (blacklist) {
  info = blacklist->ifaceinfo;

  for (i = 0; i < blacklist->infolen; i++) {
   if (info[i] == ifnum)
    return 1;
  }
 }
 return 0;
}
