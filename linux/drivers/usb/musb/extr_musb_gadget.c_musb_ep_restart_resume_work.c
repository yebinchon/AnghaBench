
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct musb_request {int dummy; } ;
struct musb {int dummy; } ;


 int musb_ep_restart (struct musb*,struct musb_request*) ;

__attribute__((used)) static int musb_ep_restart_resume_work(struct musb *musb, void *data)
{
 struct musb_request *req = data;

 musb_ep_restart(musb, req);

 return 0;
}
