
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hwbus_priv {int func; } ;


 int sdio_release_host (int ) ;

__attribute__((used)) static void cw1200_sdio_unlock(struct hwbus_priv *self)
{
 sdio_release_host(self->func);
}
