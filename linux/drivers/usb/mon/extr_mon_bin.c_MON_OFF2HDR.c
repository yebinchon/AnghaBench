
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mon_reader_bin {TYPE_1__* b_vec; } ;
struct mon_bin_hdr {int dummy; } ;
struct TYPE_2__ {scalar_t__ ptr; } ;


 unsigned int CHUNK_SIZE ;

__attribute__((used)) static inline struct mon_bin_hdr *MON_OFF2HDR(const struct mon_reader_bin *rp,
    unsigned int offset)
{
 return (struct mon_bin_hdr *)
     (rp->b_vec[offset / CHUNK_SIZE].ptr + offset % CHUNK_SIZE);
}
