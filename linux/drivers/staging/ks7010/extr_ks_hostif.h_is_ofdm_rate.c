
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int RATE_MASK ;
 int TX_RATE_12M ;
 int TX_RATE_18M ;
 int TX_RATE_24M ;
 int TX_RATE_36M ;
 int TX_RATE_48M ;
 int TX_RATE_54M ;
 int TX_RATE_6M ;
 int TX_RATE_9M ;

__attribute__((used)) static inline bool is_ofdm_rate(u8 rate)
{
 return (((rate & RATE_MASK) == TX_RATE_6M) ||
  ((rate & RATE_MASK) == TX_RATE_12M) ||
  ((rate & RATE_MASK) == TX_RATE_24M) ||
  ((rate & RATE_MASK) == TX_RATE_9M) ||
  ((rate & RATE_MASK) == TX_RATE_18M) ||
  ((rate & RATE_MASK) == TX_RATE_36M) ||
  ((rate & RATE_MASK) == TX_RATE_48M) ||
  ((rate & RATE_MASK) == TX_RATE_54M));
}
