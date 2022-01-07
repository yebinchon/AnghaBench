
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ntb_msit_ctx {TYPE_1__* peers; } ;
struct ntb_dev {struct ntb_msit_ctx* ctx; } ;
struct ntb_client {int dummy; } ;
struct TYPE_2__ {int msi_desc; } ;


 int kfree (int ) ;
 int ntb_clear_ctx (struct ntb_dev*) ;
 int ntb_db_set_mask (struct ntb_dev*,int ) ;
 int ntb_db_valid_mask (struct ntb_dev*) ;
 int ntb_link_disable (struct ntb_dev*) ;
 int ntb_msi_clear_mws (struct ntb_dev*) ;
 int ntb_msit_remove_dbgfs (struct ntb_msit_ctx*) ;
 int ntb_peer_port_count (struct ntb_dev*) ;

__attribute__((used)) static void ntb_msit_remove(struct ntb_client *client, struct ntb_dev *ntb)
{
 struct ntb_msit_ctx *nm = ntb->ctx;
 int i;

 ntb_link_disable(ntb);
 ntb_db_set_mask(ntb, ntb_db_valid_mask(ntb));
 ntb_msi_clear_mws(ntb);

 for (i = 0; i < ntb_peer_port_count(ntb); i++)
  kfree(nm->peers[i].msi_desc);

 ntb_clear_ctx(ntb);
 ntb_msit_remove_dbgfs(nm);
}
