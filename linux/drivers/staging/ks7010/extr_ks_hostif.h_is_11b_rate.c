
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int RATE_MASK ;
 int TX_RATE_11M ;
 int TX_RATE_1M ;
 int TX_RATE_2M ;
 int TX_RATE_5M ;

__attribute__((used)) static inline bool is_11b_rate(u8 rate)
{
 return (((rate & RATE_MASK) == TX_RATE_1M) ||
  ((rate & RATE_MASK) == TX_RATE_2M) ||
  ((rate & RATE_MASK) == TX_RATE_5M) ||
  ((rate & RATE_MASK) == TX_RATE_11M));
}
