
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xenvif {unsigned int num_queues; int * queues; } ;
struct backend_info {struct xenvif* vif; } ;


 int synchronize_net () ;
 int vfree (int *) ;
 int xen_unregister_watchers (struct xenvif*) ;
 int xenvif_debugfs_delif (struct xenvif*) ;
 int xenvif_deinit_queue (int *) ;
 int xenvif_disconnect_ctrl (struct xenvif*) ;
 int xenvif_disconnect_data (struct xenvif*) ;

__attribute__((used)) static void backend_disconnect(struct backend_info *be)
{
 struct xenvif *vif = be->vif;

 if (vif) {
  unsigned int num_queues = vif->num_queues;
  unsigned int queue_index;

  xen_unregister_watchers(vif);



  xenvif_disconnect_data(vif);




  vif->num_queues = 0;
  synchronize_net();

  for (queue_index = 0; queue_index < num_queues; ++queue_index)
   xenvif_deinit_queue(&vif->queues[queue_index]);

  vfree(vif->queues);
  vif->queues = ((void*)0);

  xenvif_disconnect_ctrl(vif);
 }
}
