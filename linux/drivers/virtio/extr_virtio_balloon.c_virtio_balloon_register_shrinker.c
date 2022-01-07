
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int seeks; int count_objects; int scan_objects; } ;
struct virtio_balloon {TYPE_1__ shrinker; } ;


 int DEFAULT_SEEKS ;
 int register_shrinker (TYPE_1__*) ;
 int virtio_balloon_shrinker_count ;
 int virtio_balloon_shrinker_scan ;

__attribute__((used)) static int virtio_balloon_register_shrinker(struct virtio_balloon *vb)
{
 vb->shrinker.scan_objects = virtio_balloon_shrinker_scan;
 vb->shrinker.count_objects = virtio_balloon_shrinker_count;
 vb->shrinker.seeks = DEFAULT_SEEKS;

 return register_shrinker(&vb->shrinker);
}
