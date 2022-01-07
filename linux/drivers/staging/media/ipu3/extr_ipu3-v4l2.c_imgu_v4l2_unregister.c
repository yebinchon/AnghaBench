
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct imgu_device {int media_dev; int v4l2_dev; } ;


 int IMGU_MAX_PIPE_NUM ;
 int imgu_v4l2_cleanup_pipes (struct imgu_device*,int ) ;
 int media_device_cleanup (int *) ;
 int media_device_unregister (int *) ;
 int v4l2_device_unregister (int *) ;

int imgu_v4l2_unregister(struct imgu_device *imgu)
{
 media_device_unregister(&imgu->media_dev);
 imgu_v4l2_cleanup_pipes(imgu, IMGU_MAX_PIPE_NUM);
 v4l2_device_unregister(&imgu->v4l2_dev);
 media_device_cleanup(&imgu->media_dev);

 return 0;
}
