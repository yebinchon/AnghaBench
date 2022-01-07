
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct serial8250_em_priv {int sclk; int line; } ;
struct platform_device {int dummy; } ;


 int clk_disable_unprepare (int ) ;
 struct serial8250_em_priv* platform_get_drvdata (struct platform_device*) ;
 int serial8250_unregister_port (int ) ;

__attribute__((used)) static int serial8250_em_remove(struct platform_device *pdev)
{
 struct serial8250_em_priv *priv = platform_get_drvdata(pdev);

 serial8250_unregister_port(priv->line);
 clk_disable_unprepare(priv->sclk);
 return 0;
}
