
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PAGE_SHIFT ;
 int int_sqrt (int ) ;
 int totalram_pages () ;

__attribute__((used)) static inline int default_congestion_kb(void)
{
 int congestion_kb;
 congestion_kb = (16*int_sqrt(totalram_pages())) << (PAGE_SHIFT-10);
 if (congestion_kb > 256*1024)
  congestion_kb = 256*1024;

 return congestion_kb;
}
