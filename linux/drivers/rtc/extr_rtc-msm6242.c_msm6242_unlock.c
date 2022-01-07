
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msm6242_priv {int dummy; } ;


 int MSM6242_CD ;
 int MSM6242_CD_HOLD ;
 int msm6242_clear (struct msm6242_priv*,int ,int ) ;

__attribute__((used)) static void msm6242_unlock(struct msm6242_priv *priv)
{
 msm6242_clear(priv, MSM6242_CD_HOLD, MSM6242_CD);
}
