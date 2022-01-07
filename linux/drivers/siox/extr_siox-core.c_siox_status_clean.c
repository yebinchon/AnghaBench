
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;



__attribute__((used)) static inline u8 siox_status_clean(u8 status_read, u8 status_written)
{
 return status_read ^ (~status_written & 0xe);
}
