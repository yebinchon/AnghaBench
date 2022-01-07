
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hwbus_priv {int func; } ;


 int sdio_claim_host (int ) ;

__attribute__((used)) static void cw1200_sdio_lock(struct hwbus_priv *self)
{
 sdio_claim_host(self->func);
}
