
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_capability {int bus_info; int card; int driver; } ;
struct file {int dummy; } ;


 char* CEDRUS_NAME ;
 int snprintf (int ,int,char*,char*) ;
 int strscpy (int ,char*,int) ;

__attribute__((used)) static int cedrus_querycap(struct file *file, void *priv,
      struct v4l2_capability *cap)
{
 strscpy(cap->driver, CEDRUS_NAME, sizeof(cap->driver));
 strscpy(cap->card, CEDRUS_NAME, sizeof(cap->card));
 snprintf(cap->bus_info, sizeof(cap->bus_info),
   "platform:%s", CEDRUS_NAME);

 return 0;
}
