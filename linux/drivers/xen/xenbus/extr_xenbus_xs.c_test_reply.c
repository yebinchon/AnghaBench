
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xb_req_data {scalar_t__ state; } ;


 int barrier () ;
 scalar_t__ xb_req_state_got_reply ;
 int xenbus_ok () ;

__attribute__((used)) static bool test_reply(struct xb_req_data *req)
{
 if (req->state == xb_req_state_got_reply || !xenbus_ok())
  return 1;


 barrier();

 return 0;
}
