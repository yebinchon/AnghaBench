
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cxlflash_cfg {scalar_t__ async_reset_cookie; } ;


 int async_synchronize_cookie (scalar_t__) ;

__attribute__((used)) static void cxlflash_reset_sync(struct cxlflash_cfg *cfg)
{
 if (cfg->async_reset_cookie == 0)
  return;


 async_synchronize_cookie(cfg->async_reset_cookie + 1);
 cfg->async_reset_cookie = 0;
}
