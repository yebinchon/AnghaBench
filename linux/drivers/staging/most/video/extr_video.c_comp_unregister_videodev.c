
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct most_video_dev {int vdev; } ;


 int video_unregister_device (int ) ;

__attribute__((used)) static void comp_unregister_videodev(struct most_video_dev *mdev)
{
 video_unregister_device(mdev->vdev);
}
