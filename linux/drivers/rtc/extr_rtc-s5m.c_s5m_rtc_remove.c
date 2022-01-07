
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct s5m_rtc_info {int i2c; } ;
struct platform_device {int dummy; } ;


 int i2c_unregister_device (int ) ;
 struct s5m_rtc_info* platform_get_drvdata (struct platform_device*) ;

__attribute__((used)) static int s5m_rtc_remove(struct platform_device *pdev)
{
 struct s5m_rtc_info *info = platform_get_drvdata(pdev);

 i2c_unregister_device(info->i2c);

 return 0;
}
