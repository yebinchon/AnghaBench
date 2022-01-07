
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct NCR5380_hostdata {int dummy; } ;


 int NCR5380_poll_politely2 (struct NCR5380_hostdata*,unsigned int,int,int,unsigned int,int,int,unsigned long) ;
 int NCR5380_read (unsigned int) ;

__attribute__((used)) static inline int NCR5380_poll_politely(struct NCR5380_hostdata *hostdata,
                                        unsigned int reg, u8 bit, u8 val,
                                        unsigned long wait)
{
 if ((NCR5380_read(reg) & bit) == val)
  return 0;

 return NCR5380_poll_politely2(hostdata, reg, bit, val,
      reg, bit, val, wait);
}
