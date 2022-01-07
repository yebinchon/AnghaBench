
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sdio_func {int dummy; } ;


 int sdio_claim_host (struct sdio_func*) ;
 int sdio_get_drvdata (struct sdio_func*) ;
 int sdio_release_host (struct sdio_func*) ;
 int wilc_handle_isr (int ) ;

__attribute__((used)) static void wilc_sdio_interrupt(struct sdio_func *func)
{
 sdio_release_host(func);
 wilc_handle_isr(sdio_get_drvdata(func));
 sdio_claim_host(func);
}
