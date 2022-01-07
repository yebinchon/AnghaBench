
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long INTENB1 ;
 unsigned long INTENB2 ;

__attribute__((used)) static inline unsigned long get_intenb_reg(int port)
{
 return port == 0 ? INTENB1 : INTENB2;
}
