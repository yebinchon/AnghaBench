
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct qlogicpti {int bursts; struct platform_device* op; } ;
struct TYPE_3__ {TYPE_2__* of_node; } ;
struct platform_device {TYPE_1__ dev; } ;
struct TYPE_4__ {struct TYPE_4__* parent; } ;


 int DMA_BURST16 ;
 int DMA_BURST32 ;
 int of_getintprop_default (TYPE_2__*,char*,int) ;

__attribute__((used)) static void qpti_get_bursts(struct qlogicpti *qpti)
{
 struct platform_device *op = qpti->op;
 u8 bursts, bmask;

 bursts = of_getintprop_default(op->dev.of_node, "burst-sizes", 0xff);
 bmask = of_getintprop_default(op->dev.of_node->parent, "burst-sizes", 0xff);
 if (bmask != 0xff)
  bursts &= bmask;
 if (bursts == 0xff ||
     (bursts & DMA_BURST16) == 0 ||
     (bursts & DMA_BURST32) == 0)
  bursts = (DMA_BURST32 - 1);

 qpti->bursts = bursts;
}
