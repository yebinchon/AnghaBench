
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ s16 ;



__attribute__((used)) static inline int frame_after(int frame, int after)
{

 return (s16)((s16)after - (s16)frame) < 0;
}
