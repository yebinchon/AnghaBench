
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct imgu_device {int dummy; } ;
struct imgu_css_pipe {TYPE_1__* aux_frames; int ** binary_params_cs; } ;
struct imgu_css {struct imgu_css_pipe* pipes; int dev; } ;
struct TYPE_2__ {int * mem; } ;


 unsigned int IMGU_ABI_NUM_MEMORIES ;
 int IMGU_ABI_PARAM_CLASS_NUM ;
 unsigned int IPU3_CSS_AUX_FRAMES ;
 unsigned int IPU3_CSS_AUX_FRAME_REF ;
 unsigned int IPU3_CSS_AUX_FRAME_TNR ;
 struct imgu_device* dev_get_drvdata (int ) ;
 int imgu_dmamap_free (struct imgu_device*,int *) ;

__attribute__((used)) static void imgu_css_binary_cleanup(struct imgu_css *css, unsigned int pipe)
{
 struct imgu_device *imgu = dev_get_drvdata(css->dev);
 unsigned int i, j;

 struct imgu_css_pipe *css_pipe = &css->pipes[pipe];

 for (j = 0; j < IMGU_ABI_PARAM_CLASS_NUM - 1; j++)
  for (i = 0; i < IMGU_ABI_NUM_MEMORIES; i++)
   imgu_dmamap_free(imgu,
      &css_pipe->binary_params_cs[j][i]);

 j = IPU3_CSS_AUX_FRAME_REF;
 for (i = 0; i < IPU3_CSS_AUX_FRAMES; i++)
  imgu_dmamap_free(imgu,
     &css_pipe->aux_frames[j].mem[i]);

 j = IPU3_CSS_AUX_FRAME_TNR;
 for (i = 0; i < IPU3_CSS_AUX_FRAMES; i++)
  imgu_dmamap_free(imgu,
     &css_pipe->aux_frames[j].mem[i]);
}
