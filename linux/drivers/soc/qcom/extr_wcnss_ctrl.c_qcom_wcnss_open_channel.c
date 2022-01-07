
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wcnss_ctrl {TYPE_1__* channel; } ;
struct rpmsg_endpoint {int dummy; } ;
struct rpmsg_channel_info {void* dst; void* src; int name; } ;
typedef int rpmsg_rx_cb_t ;
struct TYPE_2__ {int rpdev; } ;


 void* RPMSG_ADDR_ANY ;
 struct rpmsg_endpoint* rpmsg_create_ept (int ,int ,void*,struct rpmsg_channel_info) ;
 int strscpy (int ,char const*,int) ;

struct rpmsg_endpoint *qcom_wcnss_open_channel(void *wcnss, const char *name, rpmsg_rx_cb_t cb, void *priv)
{
 struct rpmsg_channel_info chinfo;
 struct wcnss_ctrl *_wcnss = wcnss;

 strscpy(chinfo.name, name, sizeof(chinfo.name));
 chinfo.src = RPMSG_ADDR_ANY;
 chinfo.dst = RPMSG_ADDR_ANY;

 return rpmsg_create_ept(_wcnss->channel->rpdev, cb, priv, chinfo);
}
