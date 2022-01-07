
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pnp_fixup {int (* quirk_function ) (struct pnp_dev*) ;scalar_t__* id; } ;
struct pnp_dev {int dev; int id; } ;


 int compare_pnp_id (int ,scalar_t__*) ;
 int pnp_dbg (int *,char*,scalar_t__*,int (*) (struct pnp_dev*)) ;
 struct pnp_fixup* pnp_fixups ;
 int stub1 (struct pnp_dev*) ;

void pnp_fixup_device(struct pnp_dev *dev)
{
 struct pnp_fixup *f;

 for (f = pnp_fixups; *f->id; f++) {
  if (!compare_pnp_id(dev->id, f->id))
   continue;
  pnp_dbg(&dev->dev, "%s: calling %pS\n", f->id,
   f->quirk_function);
  f->quirk_function(dev);
 }
}
