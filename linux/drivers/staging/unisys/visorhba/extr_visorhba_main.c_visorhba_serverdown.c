
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct visorhba_devdata {int serverchangingstate; int serverdown; } ;


 int EINVAL ;
 int visorhba_serverdown_complete (struct visorhba_devdata*) ;

__attribute__((used)) static int visorhba_serverdown(struct visorhba_devdata *devdata)
{
 if (!devdata->serverdown && !devdata->serverchangingstate) {
  devdata->serverchangingstate = 1;
  visorhba_serverdown_complete(devdata);
 } else if (devdata->serverchangingstate) {
  return -EINVAL;
 }
 return 0;
}
