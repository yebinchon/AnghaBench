
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int uchar ;



__attribute__((used)) static inline void
calc_sync_msg(unsigned int period, unsigned int offset, unsigned int fast,
                uchar msg[2])
{




 period /= 4;
 if (offset && fast)
  period /= 2;
 msg[0] = period;
 msg[1] = offset;
}
