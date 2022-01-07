
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct visorhba_devdata {TYPE_1__* pending; } ;
struct uiscmdrsp {int dummy; } ;
struct TYPE_2__ {struct uiscmdrsp cmdrsp; scalar_t__ sent; } ;



__attribute__((used)) static struct uiscmdrsp *get_scsipending_cmdrsp(struct visorhba_devdata *ddata,
      int ent)
{
 if (ddata->pending[ent].sent)
  return &ddata->pending[ent].cmdrsp;

 return ((void*)0);
}
