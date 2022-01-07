
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct imx_media_fim {int ctrl_handler; TYPE_1__* sd; } ;
struct TYPE_2__ {int ctrl_handler; } ;


 int v4l2_ctrl_add_handler (int ,int *,int *,int) ;

int imx_media_fim_add_controls(struct imx_media_fim *fim)
{

 return v4l2_ctrl_add_handler(fim->sd->ctrl_handler,
         &fim->ctrl_handler, ((void*)0), 0);
}
