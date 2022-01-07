
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct qcom_glink {TYPE_1__* rx_pipe; } ;
struct TYPE_2__ {int (* advance ) (TYPE_1__*,size_t) ;} ;


 int stub1 (TYPE_1__*,size_t) ;

__attribute__((used)) static void qcom_glink_rx_advance(struct qcom_glink *glink, size_t count)
{
 glink->rx_pipe->advance(glink->rx_pipe, count);
}
