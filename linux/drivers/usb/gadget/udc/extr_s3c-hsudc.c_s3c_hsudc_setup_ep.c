
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int ep_list; } ;
struct s3c_hsudc {int * ep; TYPE_2__* pd; TYPE_1__ gadget; int ep0state; } ;
struct TYPE_4__ {int epnum; } ;


 int INIT_LIST_HEAD (int *) ;
 int WAIT_FOR_SETUP ;
 int s3c_hsudc_initep (struct s3c_hsudc*,int *,int) ;

__attribute__((used)) static void s3c_hsudc_setup_ep(struct s3c_hsudc *hsudc)
{
 int epnum;

 hsudc->ep0state = WAIT_FOR_SETUP;
 INIT_LIST_HEAD(&hsudc->gadget.ep_list);
 for (epnum = 0; epnum < hsudc->pd->epnum; epnum++)
  s3c_hsudc_initep(hsudc, &hsudc->ep[epnum], epnum);
}
