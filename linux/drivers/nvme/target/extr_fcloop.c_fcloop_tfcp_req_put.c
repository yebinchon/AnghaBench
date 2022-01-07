
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fcloop_fcpreq {int ref; } ;


 int fcloop_tfcp_req_free ;
 int kref_put (int *,int ) ;

__attribute__((used)) static void
fcloop_tfcp_req_put(struct fcloop_fcpreq *tfcp_req)
{
 kref_put(&tfcp_req->ref, fcloop_tfcp_req_free);
}
