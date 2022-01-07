
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct imgu_device {int dummy; } ;


 int IMGU_NODE_NUM ;
 int imgu_v4l2_nodes_cleanup_pipe (struct imgu_device*,int,int ) ;
 int imgu_v4l2_subdev_cleanup (struct imgu_device*,int) ;

__attribute__((used)) static void imgu_v4l2_cleanup_pipes(struct imgu_device *imgu, unsigned int pipe)
{
 int i;

 for (i = 0; i < pipe; i++) {
  imgu_v4l2_nodes_cleanup_pipe(imgu, i, IMGU_NODE_NUM);
  imgu_v4l2_subdev_cleanup(imgu, i);
 }
}
