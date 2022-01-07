
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct imx_media_fim {int ctrl_handler; } ;


 int v4l2_ctrl_handler_free (int *) ;

void imx_media_fim_free(struct imx_media_fim *fim)
{
 v4l2_ctrl_handler_free(&fim->ctrl_handler);
}
