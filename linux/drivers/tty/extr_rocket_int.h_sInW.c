
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned short inw_p (unsigned short) ;

__attribute__((used)) static inline unsigned short sInW(unsigned short port)
{
 return inw_p(port);
}
