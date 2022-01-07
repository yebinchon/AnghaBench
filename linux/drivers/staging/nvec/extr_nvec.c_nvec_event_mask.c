
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;



__attribute__((used)) static void nvec_event_mask(char *ev, u32 mask)
{
 ev[3] = mask >> 16 & 0xff;
 ev[4] = mask >> 24 & 0xff;
 ev[5] = mask >> 0 & 0xff;
 ev[6] = mask >> 8 & 0xff;
}
