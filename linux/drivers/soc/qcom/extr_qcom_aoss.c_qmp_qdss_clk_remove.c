
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct qmp {int qdss_clk; TYPE_1__* dev; } ;
struct TYPE_2__ {int of_node; } ;


 int clk_hw_unregister (int *) ;
 int of_clk_del_provider (int ) ;

__attribute__((used)) static void qmp_qdss_clk_remove(struct qmp *qmp)
{
 of_clk_del_provider(qmp->dev->of_node);
 clk_hw_unregister(&qmp->qdss_clk);
}
