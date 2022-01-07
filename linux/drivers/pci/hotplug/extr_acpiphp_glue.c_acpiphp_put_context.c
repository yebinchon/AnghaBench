
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* self; } ;
struct acpiphp_context {TYPE_2__ hp; int bridge; scalar_t__ refcount; } ;
struct TYPE_3__ {int * hp; } ;


 int WARN_ON (int ) ;
 int kfree (struct acpiphp_context*) ;

__attribute__((used)) static void acpiphp_put_context(struct acpiphp_context *context)
{
 if (--context->refcount)
  return;

 WARN_ON(context->bridge);
 context->hp.self->hp = ((void*)0);
 kfree(context);
}
