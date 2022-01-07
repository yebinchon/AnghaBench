
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct platform_device {int dummy; } ;
struct TYPE_2__ {int index; } ;
struct goldfish_tty {int irq; int * base; TYPE_1__ console; } ;


 int free_irq (int ,struct platform_device*) ;
 scalar_t__ goldfish_tty_current_line_count ;
 int goldfish_tty_delete_driver () ;
 int goldfish_tty_driver ;
 int goldfish_tty_lock ;
 int iounmap (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct goldfish_tty* platform_get_drvdata (struct platform_device*) ;
 int tty_unregister_device (int ,int ) ;
 int unregister_console (TYPE_1__*) ;

__attribute__((used)) static int goldfish_tty_remove(struct platform_device *pdev)
{
 struct goldfish_tty *qtty = platform_get_drvdata(pdev);

 mutex_lock(&goldfish_tty_lock);

 unregister_console(&qtty->console);
 tty_unregister_device(goldfish_tty_driver, qtty->console.index);
 iounmap(qtty->base);
 qtty->base = ((void*)0);
 free_irq(qtty->irq, pdev);
 goldfish_tty_current_line_count--;
 if (goldfish_tty_current_line_count == 0)
  goldfish_tty_delete_driver();
 mutex_unlock(&goldfish_tty_lock);
 return 0;
}
