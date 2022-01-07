
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct brcmstb_waketmr {scalar_t__ base; } ;


 scalar_t__ BRCMSTB_WKTMR_EVENT ;
 int readl_relaxed (scalar_t__) ;
 int writel_relaxed (int,scalar_t__) ;

__attribute__((used)) static inline void brcmstb_waketmr_clear_alarm(struct brcmstb_waketmr *timer)
{
 writel_relaxed(1, timer->base + BRCMSTB_WKTMR_EVENT);
 (void)readl_relaxed(timer->base + BRCMSTB_WKTMR_EVENT);
}
