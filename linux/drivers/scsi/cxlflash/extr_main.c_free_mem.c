
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ulong ;
struct cxlflash_cfg {struct afu* afu; } ;
struct afu {int dummy; } ;


 int free_pages (int ,int ) ;
 int get_order (int) ;

__attribute__((used)) static void free_mem(struct cxlflash_cfg *cfg)
{
 struct afu *afu = cfg->afu;

 if (cfg->afu) {
  free_pages((ulong)afu, get_order(sizeof(struct afu)));
  cfg->afu = ((void*)0);
 }
}
