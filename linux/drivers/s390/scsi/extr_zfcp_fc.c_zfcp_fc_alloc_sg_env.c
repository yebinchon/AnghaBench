
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int req; } ;
struct TYPE_4__ {TYPE_1__ gpn_ft; } ;
struct zfcp_fc_req {TYPE_2__ u; int sg_req; int sg_rsp; } ;
struct zfcp_fc_gpn_ft_req {int dummy; } ;


 int GFP_KERNEL ;
 int kmem_cache_free (int ,struct zfcp_fc_req*) ;
 struct zfcp_fc_req* kmem_cache_zalloc (int ,int ) ;
 int sg_init_one (int *,int *,int) ;
 int zfcp_fc_req_cache ;
 scalar_t__ zfcp_fc_sg_setup_table (int *,int) ;

__attribute__((used)) static struct zfcp_fc_req *zfcp_fc_alloc_sg_env(int buf_num)
{
 struct zfcp_fc_req *fc_req;

 fc_req = kmem_cache_zalloc(zfcp_fc_req_cache, GFP_KERNEL);
 if (!fc_req)
  return ((void*)0);

 if (zfcp_fc_sg_setup_table(&fc_req->sg_rsp, buf_num)) {
  kmem_cache_free(zfcp_fc_req_cache, fc_req);
  return ((void*)0);
 }

 sg_init_one(&fc_req->sg_req, &fc_req->u.gpn_ft.req,
      sizeof(struct zfcp_fc_gpn_ft_req));

 return fc_req;
}
