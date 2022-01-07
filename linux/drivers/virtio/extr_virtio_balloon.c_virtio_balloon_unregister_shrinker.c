
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct virtio_balloon {int shrinker; } ;


 int unregister_shrinker (int *) ;

__attribute__((used)) static void virtio_balloon_unregister_shrinker(struct virtio_balloon *vb)
{
 unregister_shrinker(&vb->shrinker);
}
