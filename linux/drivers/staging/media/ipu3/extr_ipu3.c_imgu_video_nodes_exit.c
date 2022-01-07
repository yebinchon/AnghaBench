
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct imgu_device {int dummy; } ;


 int IMGU_MAX_PIPE_NUM ;
 int imgu_dummybufs_cleanup (struct imgu_device*,int) ;
 int imgu_v4l2_unregister (struct imgu_device*) ;

__attribute__((used)) static void imgu_video_nodes_exit(struct imgu_device *imgu)
{
 int i;

 for (i = 0; i < IMGU_MAX_PIPE_NUM; i++)
  imgu_dummybufs_cleanup(imgu, i);

 imgu_v4l2_unregister(imgu);
}
