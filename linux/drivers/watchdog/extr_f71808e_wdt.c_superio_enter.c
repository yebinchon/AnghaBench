
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DRVNAME ;
 int EBUSY ;
 int SIO_UNLOCK_KEY ;
 int outb (int ,int) ;
 int pr_err (char*,int) ;
 int request_muxed_region (int,int,int ) ;

__attribute__((used)) static inline int superio_enter(int base)
{

 if (!request_muxed_region(base, 2, DRVNAME)) {
  pr_err("I/O address 0x%04x already in use\n", (int)base);
  return -EBUSY;
 }


 outb(SIO_UNLOCK_KEY, base);
 outb(SIO_UNLOCK_KEY, base);

 return 0;
}
