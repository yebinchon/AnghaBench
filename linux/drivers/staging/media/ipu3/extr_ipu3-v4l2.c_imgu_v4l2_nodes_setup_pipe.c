
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct imgu_device {int dummy; } ;


 int IMGU_NODE_NUM ;
 int imgu_v4l2_node_setup (struct imgu_device*,int,int) ;
 int imgu_v4l2_nodes_cleanup_pipe (struct imgu_device*,int,int) ;

__attribute__((used)) static int imgu_v4l2_nodes_setup_pipe(struct imgu_device *imgu, int pipe)
{
 int i, r;

 for (i = 0; i < IMGU_NODE_NUM; i++) {
  r = imgu_v4l2_node_setup(imgu, pipe, i);
  if (r)
   goto cleanup;
 }

 return 0;

cleanup:
 imgu_v4l2_nodes_cleanup_pipe(imgu, pipe, i);
 return r;
}
