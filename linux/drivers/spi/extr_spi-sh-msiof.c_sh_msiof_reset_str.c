
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sh_msiof_spi_priv {int dummy; } ;


 int STR ;
 int STR_RDREQ ;
 int STR_TDREQ ;
 int sh_msiof_read (struct sh_msiof_spi_priv*,int ) ;
 int sh_msiof_write (struct sh_msiof_spi_priv*,int ,int) ;

__attribute__((used)) static void sh_msiof_reset_str(struct sh_msiof_spi_priv *p)
{
 sh_msiof_write(p, STR,
         sh_msiof_read(p, STR) & ~(STR_TDREQ | STR_RDREQ));
}
