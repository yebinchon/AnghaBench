
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qcom_iris {int vregs; int num_vregs; int xo_clk; } ;


 int clk_disable_unprepare (int ) ;
 int regulator_bulk_disable (int ,int ) ;

void qcom_iris_disable(struct qcom_iris *iris)
{
 clk_disable_unprepare(iris->xo_clk);
 regulator_bulk_disable(iris->num_vregs, iris->vregs);
}
