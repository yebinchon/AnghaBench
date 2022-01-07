
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct imgu_device {int dummy; } ;
struct imgu_css {TYPE_2__* pipes; int dev; } ;
struct TYPE_3__ {int * binary_params_p; int obgrid; int gdc; int acc; int parameter_set_info; } ;
struct TYPE_4__ {TYPE_1__ pool; } ;


 unsigned int IMGU_ABI_NUM_MEMORIES ;
 struct imgu_device* dev_get_drvdata (int ) ;
 int imgu_css_pool_cleanup (struct imgu_device*,int *) ;

__attribute__((used)) static void imgu_css_pipeline_cleanup(struct imgu_css *css, unsigned int pipe)
{
 struct imgu_device *imgu = dev_get_drvdata(css->dev);
 unsigned int i;

 imgu_css_pool_cleanup(imgu,
         &css->pipes[pipe].pool.parameter_set_info);
 imgu_css_pool_cleanup(imgu, &css->pipes[pipe].pool.acc);
 imgu_css_pool_cleanup(imgu, &css->pipes[pipe].pool.gdc);
 imgu_css_pool_cleanup(imgu, &css->pipes[pipe].pool.obgrid);

 for (i = 0; i < IMGU_ABI_NUM_MEMORIES; i++)
  imgu_css_pool_cleanup(imgu,
          &css->pipes[pipe].pool.binary_params_p[i]);
}
