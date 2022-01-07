
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct watchdog_device {int dummy; } ;
struct TYPE_2__ {int tcr; int wtmr; } ;


 int TXx9_TMTCR_TCE ;
 int TXx9_TMWTMR_WDIS ;
 int __raw_readl (int *) ;
 int __raw_writel (int,int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int txx9_lock ;
 TYPE_1__* txx9wdt_reg ;

__attribute__((used)) static int txx9wdt_stop(struct watchdog_device *wdt_dev)
{
 spin_lock(&txx9_lock);
 __raw_writel(TXx9_TMWTMR_WDIS, &txx9wdt_reg->wtmr);
 __raw_writel(__raw_readl(&txx9wdt_reg->tcr) & ~TXx9_TMTCR_TCE,
       &txx9wdt_reg->tcr);
 spin_unlock(&txx9_lock);
 return 0;
}
