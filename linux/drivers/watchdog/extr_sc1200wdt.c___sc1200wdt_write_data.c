
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PMDR ;
 int PMIR ;
 int outb (unsigned char,int ) ;
 int outb_p (unsigned char,int ) ;

__attribute__((used)) static inline void __sc1200wdt_write_data(unsigned char index,
      unsigned char data)
{
 outb_p(index, PMIR);
 outb(data, PMDR);
}
