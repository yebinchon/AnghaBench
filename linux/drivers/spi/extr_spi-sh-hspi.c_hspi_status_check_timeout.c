
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct hspi_priv {int dev; } ;


 int ETIMEDOUT ;
 int SPSR ;
 int dev_err (int ,char*) ;
 int hspi_read (struct hspi_priv*,int ) ;
 int udelay (int) ;

__attribute__((used)) static int hspi_status_check_timeout(struct hspi_priv *hspi, u32 mask, u32 val)
{
 int t = 256;

 while (t--) {
  if ((mask & hspi_read(hspi, SPSR)) == val)
   return 0;

  udelay(10);
 }

 dev_err(hspi->dev, "timeout\n");
 return -ETIMEDOUT;
}
