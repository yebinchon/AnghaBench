
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tb_xdomain {int resume; int tb; int dev; scalar_t__ transmit_path; } ;


 int dev_dbg (int *,char*) ;
 int tb_domain_approve_xdomain_paths (int ,struct tb_xdomain*) ;

__attribute__((used)) static void tb_xdomain_restore_paths(struct tb_xdomain *xd)
{
 if (!xd->resume)
  return;

 xd->resume = 0;
 if (xd->transmit_path) {
  dev_dbg(&xd->dev, "re-establishing DMA path\n");
  tb_domain_approve_xdomain_paths(xd->tb, xd);
 }
}
