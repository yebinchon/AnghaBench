
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * buf; int * req; } ;
struct f_uas {TYPE_1__ cmd; int ep_cmd; } ;


 int kfree (int *) ;
 int usb_ep_free_request (int ,int *) ;

__attribute__((used)) static void uasp_free_cmdreq(struct f_uas *fu)
{
 usb_ep_free_request(fu->ep_cmd, fu->cmd.req);
 kfree(fu->cmd.buf);
 fu->cmd.req = ((void*)0);
 fu->cmd.buf = ((void*)0);
}
