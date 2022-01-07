
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mite {scalar_t__ mmio; } ;


 int iounmap (scalar_t__) ;
 int kfree (struct mite*) ;

void mite_detach(struct mite *mite)
{
 if (!mite)
  return;

 if (mite->mmio)
  iounmap(mite->mmio);

 kfree(mite);
}
