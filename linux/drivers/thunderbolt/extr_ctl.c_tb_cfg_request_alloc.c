
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tb_cfg_request {int kref; } ;


 int GFP_KERNEL ;
 int kref_init (int *) ;
 struct tb_cfg_request* kzalloc (int,int ) ;

struct tb_cfg_request *tb_cfg_request_alloc(void)
{
 struct tb_cfg_request *req;

 req = kzalloc(sizeof(*req), GFP_KERNEL);
 if (!req)
  return ((void*)0);

 kref_init(&req->kref);

 return req;
}
