
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qe_udc {scalar_t__ ep0_dir; int ep0_state; int * eps; } ;


 int WAIT_FOR_SETUP ;
 int qe_eprx_stall_change (int *,int) ;
 int qe_eptx_stall_change (int *,int) ;

__attribute__((used)) static int qe_ep0_stall(struct qe_udc *udc)
{
 qe_eptx_stall_change(&udc->eps[0], 1);
 qe_eprx_stall_change(&udc->eps[0], 1);
 udc->ep0_state = WAIT_FOR_SETUP;
 udc->ep0_dir = 0;
 return 0;
}
