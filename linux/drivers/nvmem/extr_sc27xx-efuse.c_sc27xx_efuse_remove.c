
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sc27xx_efuse {int hwlock; } ;
struct platform_device {int dummy; } ;


 int hwspin_lock_free (int ) ;
 struct sc27xx_efuse* platform_get_drvdata (struct platform_device*) ;

__attribute__((used)) static int sc27xx_efuse_remove(struct platform_device *pdev)
{
 struct sc27xx_efuse *efuse = platform_get_drvdata(pdev);

 hwspin_lock_free(efuse->hwlock);
 return 0;
}
