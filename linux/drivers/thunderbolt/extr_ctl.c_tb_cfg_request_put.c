
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tb_cfg_request {int kref; } ;


 int kref_put (int *,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int tb_cfg_request_destroy ;
 int tb_cfg_request_lock ;

void tb_cfg_request_put(struct tb_cfg_request *req)
{
 mutex_lock(&tb_cfg_request_lock);
 kref_put(&req->kref, tb_cfg_request_destroy);
 mutex_unlock(&tb_cfg_request_lock);
}
