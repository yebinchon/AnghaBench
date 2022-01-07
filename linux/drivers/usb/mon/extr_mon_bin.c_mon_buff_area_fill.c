
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mon_reader_bin {int dummy; } ;
struct mon_bin_hdr {char type; scalar_t__ len_cap; } ;


 struct mon_bin_hdr* MON_OFF2HDR (struct mon_reader_bin const*,unsigned int) ;
 scalar_t__ PKT_SIZE ;
 int memset (struct mon_bin_hdr*,int ,scalar_t__) ;

__attribute__((used)) static void mon_buff_area_fill(const struct mon_reader_bin *rp,
    unsigned int offset, unsigned int size)
{
 struct mon_bin_hdr *ep;

 ep = MON_OFF2HDR(rp, offset);
 memset(ep, 0, PKT_SIZE);
 ep->type = '@';
 ep->len_cap = size - PKT_SIZE;
}
