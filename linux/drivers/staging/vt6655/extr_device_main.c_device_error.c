
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vnt_private {TYPE_1__* pcid; } ;
struct TYPE_2__ {int dev; } ;


 unsigned short ISR_FETALERR ;
 int MACbShutdown (struct vnt_private*) ;
 int dev_err (int *,char*) ;

__attribute__((used)) static void device_error(struct vnt_private *priv, unsigned short status)
{
 if (status & ISR_FETALERR) {
  dev_err(&priv->pcid->dev, "Hardware fatal error\n");

  MACbShutdown(priv);
  return;
 }
}
