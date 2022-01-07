
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev {int dummy; } ;
struct prp_priv {int dummy; } ;
struct imx_ic_priv {struct prp_priv* task_priv; } ;


 struct imx_ic_priv* v4l2_get_subdevdata (struct v4l2_subdev*) ;

__attribute__((used)) static inline struct prp_priv *sd_to_priv(struct v4l2_subdev *sd)
{
 struct imx_ic_priv *ic_priv = v4l2_get_subdevdata(sd);

 return ic_priv->task_priv;
}
