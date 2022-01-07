
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct qcom_glink {TYPE_1__* tx_pipe; } ;
struct TYPE_2__ {int (* write ) (TYPE_1__*,void const*,size_t,void const*,size_t) ;} ;


 int stub1 (TYPE_1__*,void const*,size_t,void const*,size_t) ;

__attribute__((used)) static void qcom_glink_tx_write(struct qcom_glink *glink,
    const void *hdr, size_t hlen,
    const void *data, size_t dlen)
{
 glink->tx_pipe->write(glink->tx_pipe, hdr, hlen, data, dlen);
}
