
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ofdm_plcp_header {int* prefix; } ;



__attribute__((used)) static inline u8 zd_ofdm_plcp_header_rate(const struct ofdm_plcp_header *header)
{
 return header->prefix[0] & 0xf;
}
