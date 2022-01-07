
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct visornic_devdata {TYPE_1__* dev; } ;
struct uiscmdrsp {int dummy; } ;
struct TYPE_2__ {int visorchannel; } ;


 int IOCHAN_FROM_IOPART ;
 int visorchannel_signalremove (int ,int ,struct uiscmdrsp*) ;

__attribute__((used)) static void drain_resp_queue(struct uiscmdrsp *cmdrsp,
        struct visornic_devdata *devdata)
{
 while (!visorchannel_signalremove(devdata->dev->visorchannel,
       IOCHAN_FROM_IOPART,
       cmdrsp))
  ;
}
