
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct apr_hdr {int pkt_size; int dest_svc; int dest_domain; int src_svc; int src_domain; } ;
struct apr_pkt {struct apr_hdr hdr; } ;
struct TYPE_2__ {int parent; } ;
struct apr_device {int lock; int svc_id; int domain_id; TYPE_1__ dev; } ;
struct apr {int ch; } ;


 int APR_DOMAIN_APPS ;
 struct apr* dev_get_drvdata (int ) ;
 int rpmsg_trysend (int ,struct apr_pkt*,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

int apr_send_pkt(struct apr_device *adev, struct apr_pkt *pkt)
{
 struct apr *apr = dev_get_drvdata(adev->dev.parent);
 struct apr_hdr *hdr;
 unsigned long flags;
 int ret;

 spin_lock_irqsave(&adev->lock, flags);

 hdr = &pkt->hdr;
 hdr->src_domain = APR_DOMAIN_APPS;
 hdr->src_svc = adev->svc_id;
 hdr->dest_domain = adev->domain_id;
 hdr->dest_svc = adev->svc_id;

 ret = rpmsg_trysend(apr->ch, pkt, hdr->pkt_size);
 spin_unlock_irqrestore(&adev->lock, flags);

 return ret ? ret : hdr->pkt_size;
}
