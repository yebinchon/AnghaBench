
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int pra; } ;


 int SER_DTR ;
 int SER_RTS ;
 TYPE_1__ ciab ;

__attribute__((used)) static __inline__ void rtsdtr_ctrl(int bits)
{
    ciab.pra = ((bits & (SER_RTS | SER_DTR)) ^ (SER_RTS | SER_DTR)) | (ciab.pra & ~(SER_RTS | SER_DTR));
}
