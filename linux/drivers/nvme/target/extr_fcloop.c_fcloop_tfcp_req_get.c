
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fcloop_fcpreq {int ref; } ;


 int kref_get_unless_zero (int *) ;

__attribute__((used)) static int
fcloop_tfcp_req_get(struct fcloop_fcpreq *tfcp_req)
{
 return kref_get_unless_zero(&tfcp_req->ref);
}
