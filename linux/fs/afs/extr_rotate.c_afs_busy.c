
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct afs_volume {int name; int vid; } ;





 int pr_notice (char*,int ,int ,char const*) ;

__attribute__((used)) static void afs_busy(struct afs_volume *volume, u32 abort_code)
{
 const char *m;

 switch (abort_code) {
 case 130: m = "offline"; break;
 case 129: m = "restarting"; break;
 case 128: m = "being salvaged"; break;
 default: m = "busy"; break;
 }

 pr_notice("kAFS: Volume %llu '%s' is %s\n", volume->vid, volume->name, m);
}
