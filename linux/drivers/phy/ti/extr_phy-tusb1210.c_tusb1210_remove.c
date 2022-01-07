
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ulpi {int dummy; } ;
struct tusb1210 {int phy; } ;


 struct tusb1210* ulpi_get_drvdata (struct ulpi*) ;
 int ulpi_phy_destroy (struct ulpi*,int ) ;

__attribute__((used)) static void tusb1210_remove(struct ulpi *ulpi)
{
 struct tusb1210 *tusb = ulpi_get_drvdata(ulpi);

 ulpi_phy_destroy(ulpi, tusb->phy);
}
