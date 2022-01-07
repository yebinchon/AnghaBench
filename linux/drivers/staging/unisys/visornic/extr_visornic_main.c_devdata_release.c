
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct visornic_devdata {int xmit_cmdrsp; int cmdrsp_rcv; int rcvbuf; } ;


 int kfree (int ) ;

__attribute__((used)) static void devdata_release(struct visornic_devdata *devdata)
{
 kfree(devdata->rcvbuf);
 kfree(devdata->cmdrsp_rcv);
 kfree(devdata->xmit_cmdrsp);
}
