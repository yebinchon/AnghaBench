
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned char PPP_ESCAPE ;
 unsigned char PPP_FLAG ;
 unsigned char PPP_TRANS ;

__attribute__((used)) static inline int muststuff(unsigned char c)
{
 if (c < PPP_TRANS) return 1;
 if (c == PPP_FLAG) return 1;
 if (c == PPP_ESCAPE) return 1;



 return 0;
}
