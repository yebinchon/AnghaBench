
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DC395X_BANNER ;
 int DC395X_VERSION ;
 int KERN_INFO ;
 int dprintkl (int ,char*,int ,int ) ;

__attribute__((used)) static void banner_display(void)
{
 static int banner_done = 0;
 if (!banner_done)
 {
  dprintkl(KERN_INFO, "%s %s\n", DC395X_BANNER, DC395X_VERSION);
  banner_done = 1;
 }
}
