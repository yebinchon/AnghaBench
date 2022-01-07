
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xb_req_data {int wq; } ;


 int wake_up (int *) ;

__attribute__((used)) static void xs_wake_up(struct xb_req_data *req)
{
 wake_up(&req->wq);
}
