
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int parent; } ;
struct acpiphp_context {TYPE_1__ func; } ;


 int put_bridge (int ) ;

__attribute__((used)) static void acpiphp_let_context_go(struct acpiphp_context *context)
{
 put_bridge(context->func.parent);
}
