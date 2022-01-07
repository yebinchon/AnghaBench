
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xenvif {int ctrl; } ;


 int RING_HAS_UNCONSUMED_REQUESTS (int *) ;
 scalar_t__ likely (int ) ;

__attribute__((used)) static bool xenvif_ctrl_work_todo(struct xenvif *vif)
{
 if (likely(RING_HAS_UNCONSUMED_REQUESTS(&vif->ctrl)))
  return 1;

 return 0;
}
