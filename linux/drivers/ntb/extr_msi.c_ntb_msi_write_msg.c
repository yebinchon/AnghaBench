
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ntb_msi_devres {TYPE_2__* ntb; int msi_desc; } ;
struct msi_desc {int dummy; } ;
struct TYPE_4__ {int ctx; TYPE_1__* msi; } ;
struct TYPE_3__ {int (* desc_changed ) (int ) ;} ;


 int WARN_ON (int ) ;
 int ntb_msi_set_desc (TYPE_2__*,struct msi_desc*,int ) ;
 int stub1 (int ) ;

__attribute__((used)) static void ntb_msi_write_msg(struct msi_desc *entry, void *data)
{
 struct ntb_msi_devres *dr = data;

 WARN_ON(ntb_msi_set_desc(dr->ntb, entry, dr->msi_desc));

 if (dr->ntb->msi->desc_changed)
  dr->ntb->msi->desc_changed(dr->ntb->ctx);
}
