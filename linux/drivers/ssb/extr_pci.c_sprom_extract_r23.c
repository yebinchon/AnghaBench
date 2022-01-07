
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct ssb_sprom {int dummy; } ;


 int SPEX (int ,int ,int,int ) ;
 int SSB_SPROM2_BFLHI ;
 int SSB_SPROM2_MAXP_A ;
 int SSB_SPROM2_MAXP_A_HI ;
 int SSB_SPROM2_MAXP_A_LO ;
 int SSB_SPROM2_MAXP_A_LO_SHIFT ;
 int SSB_SPROM2_OPO ;
 int SSB_SPROM2_OPO_VALUE ;
 int SSB_SPROM2_PA1HIB0 ;
 int SSB_SPROM2_PA1HIB1 ;
 int SSB_SPROM2_PA1HIB2 ;
 int SSB_SPROM2_PA1LOB0 ;
 int SSB_SPROM2_PA1LOB1 ;
 int SSB_SPROM2_PA1LOB2 ;
 int boardflags_hi ;
 int maxpwr_ah ;
 int maxpwr_al ;
 int opo ;
 int pa1hib0 ;
 int pa1hib1 ;
 int pa1hib2 ;
 int pa1lob0 ;
 int pa1lob1 ;
 int pa1lob2 ;

__attribute__((used)) static void sprom_extract_r23(struct ssb_sprom *out, const u16 *in)
{
 SPEX(boardflags_hi, SSB_SPROM2_BFLHI, 0xFFFF, 0);
 SPEX(opo, SSB_SPROM2_OPO, SSB_SPROM2_OPO_VALUE, 0);
 SPEX(pa1lob0, SSB_SPROM2_PA1LOB0, 0xFFFF, 0);
 SPEX(pa1lob1, SSB_SPROM2_PA1LOB1, 0xFFFF, 0);
 SPEX(pa1lob2, SSB_SPROM2_PA1LOB2, 0xFFFF, 0);
 SPEX(pa1hib0, SSB_SPROM2_PA1HIB0, 0xFFFF, 0);
 SPEX(pa1hib1, SSB_SPROM2_PA1HIB1, 0xFFFF, 0);
 SPEX(pa1hib2, SSB_SPROM2_PA1HIB2, 0xFFFF, 0);
 SPEX(maxpwr_ah, SSB_SPROM2_MAXP_A, SSB_SPROM2_MAXP_A_HI, 0);
 SPEX(maxpwr_al, SSB_SPROM2_MAXP_A, SSB_SPROM2_MAXP_A_LO,
      SSB_SPROM2_MAXP_A_LO_SHIFT);
}
