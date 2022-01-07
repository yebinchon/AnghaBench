
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct scrub_parity {int ebitmap; } ;


 int __scrub_mark_bitmap (struct scrub_parity*,int ,int ,int ) ;

__attribute__((used)) static inline void scrub_parity_mark_sectors_error(struct scrub_parity *sparity,
         u64 start, u64 len)
{
 __scrub_mark_bitmap(sparity, sparity->ebitmap, start, len);
}
