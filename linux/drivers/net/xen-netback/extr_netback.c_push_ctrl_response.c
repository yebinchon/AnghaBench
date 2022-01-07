
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xenvif {int ctrl_irq; int ctrl; } ;


 int RING_PUSH_RESPONSES_AND_CHECK_NOTIFY (int *,int) ;
 int notify_remote_via_irq (int ) ;

__attribute__((used)) static void push_ctrl_response(struct xenvif *vif)
{
 int notify;

 RING_PUSH_RESPONSES_AND_CHECK_NOTIFY(&vif->ctrl, notify);
 if (notify)
  notify_remote_via_irq(vif->ctrl_irq);
}
