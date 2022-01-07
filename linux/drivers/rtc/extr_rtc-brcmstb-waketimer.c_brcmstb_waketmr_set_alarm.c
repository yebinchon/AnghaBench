
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct brcmstb_waketmr {unsigned int rate; scalar_t__ base; } ;


 scalar_t__ BRCMSTB_WKTMR_ALARM ;
 scalar_t__ BRCMSTB_WKTMR_PRESCALER ;
 int brcmstb_waketmr_clear_alarm (struct brcmstb_waketmr*) ;
 int writel_relaxed (unsigned int,scalar_t__) ;

__attribute__((used)) static void brcmstb_waketmr_set_alarm(struct brcmstb_waketmr *timer,
          unsigned int secs)
{
 brcmstb_waketmr_clear_alarm(timer);


 writel_relaxed(timer->rate, timer->base + BRCMSTB_WKTMR_PRESCALER);

 writel_relaxed(secs + 1, timer->base + BRCMSTB_WKTMR_ALARM);
}
