
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bfa_wc_s {int dummy; } ;


 int bfa_wc_down (struct bfa_wc_s*) ;

__attribute__((used)) static inline void
bfa_wc_wait(struct bfa_wc_s *wc)
{
 bfa_wc_down(wc);
}
