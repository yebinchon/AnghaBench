
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_2__ {void* a1; void* a0; } ;
struct ssb_sprom {int revision; TYPE_1__ antenna_gain; int et1mac; int et0mac; int il0mac; } ;


 int SPEX (int ,int ,int,int) ;
 size_t SPOFF (int ) ;
 int SSB_SPROM1_AGAIN ;
 int SSB_SPROM1_AGAIN_A ;
 int SSB_SPROM1_AGAIN_A_SHIFT ;
 int SSB_SPROM1_AGAIN_BG ;
 int SSB_SPROM1_AGAIN_BG_SHIFT ;
 int SSB_SPROM1_BFLLO ;
 int SSB_SPROM1_BINF ;
 int SSB_SPROM1_BINF_ANTA ;
 int SSB_SPROM1_BINF_ANTA_SHIFT ;
 int SSB_SPROM1_BINF_ANTBG ;
 int SSB_SPROM1_BINF_ANTBG_SHIFT ;
 int SSB_SPROM1_BINF_BREV ;
 int SSB_SPROM1_BINF_CCODE ;
 int SSB_SPROM1_BINF_CCODE_SHIFT ;
 int SSB_SPROM1_CCODE ;
 int SSB_SPROM1_ET0MAC ;
 int SSB_SPROM1_ET1MAC ;
 int SSB_SPROM1_ETHPHY ;
 int SSB_SPROM1_ETHPHY_ET0A ;
 int SSB_SPROM1_ETHPHY_ET0M ;
 int SSB_SPROM1_ETHPHY_ET1A ;
 int SSB_SPROM1_ETHPHY_ET1A_SHIFT ;
 int SSB_SPROM1_ETHPHY_ET1M ;
 int SSB_SPROM1_GPIOA ;
 int SSB_SPROM1_GPIOA_P0 ;
 int SSB_SPROM1_GPIOA_P1 ;
 int SSB_SPROM1_GPIOA_P1_SHIFT ;
 int SSB_SPROM1_GPIOB ;
 int SSB_SPROM1_GPIOB_P2 ;
 int SSB_SPROM1_GPIOB_P3 ;
 int SSB_SPROM1_GPIOB_P3_SHIFT ;
 int SSB_SPROM1_IL0MAC ;
 int SSB_SPROM1_ITSSI ;
 int SSB_SPROM1_ITSSI_A ;
 int SSB_SPROM1_ITSSI_A_SHIFT ;
 int SSB_SPROM1_ITSSI_BG ;
 int SSB_SPROM1_MAXPWR ;
 int SSB_SPROM1_MAXPWR_A ;
 int SSB_SPROM1_MAXPWR_A_SHIFT ;
 int SSB_SPROM1_MAXPWR_BG ;
 int SSB_SPROM1_PA0B0 ;
 int SSB_SPROM1_PA0B1 ;
 int SSB_SPROM1_PA0B2 ;
 int SSB_SPROM1_PA1B0 ;
 int SSB_SPROM1_PA1B1 ;
 int SSB_SPROM1_PA1B2 ;
 int SSB_SPROM1_SPID ;
 int SSB_SPROM3_IL0MAC ;
 int * alpha2 ;
 int ant_available_a ;
 int ant_available_bg ;
 int board_rev ;
 int board_type ;
 int boardflags_lo ;
 int country_code ;
 int et0mdcport ;
 int et0phyaddr ;
 int et1mdcport ;
 int et1phyaddr ;
 int gpio0 ;
 int gpio1 ;
 int gpio2 ;
 int gpio3 ;
 int itssi_a ;
 int itssi_bg ;
 int maxpwr_a ;
 int maxpwr_bg ;
 int pa0b0 ;
 int pa0b1 ;
 int pa0b2 ;
 int pa1b0 ;
 int pa1b1 ;
 int pa1b2 ;
 void* sprom_extract_antgain (int,int const*,int ,int ,int ) ;
 int sprom_extract_r23 (struct ssb_sprom*,int const*) ;
 int sprom_get_mac (int ,int const*) ;

__attribute__((used)) static void sprom_extract_r123(struct ssb_sprom *out, const u16 *in)
{
 u16 loc[3];

 if (out->revision == 3)
  loc[0] = SSB_SPROM3_IL0MAC;
 else {
  loc[0] = SSB_SPROM1_IL0MAC;
  loc[1] = SSB_SPROM1_ET0MAC;
  loc[2] = SSB_SPROM1_ET1MAC;
 }
 sprom_get_mac(out->il0mac, &in[SPOFF(loc[0])]);
 if (out->revision < 3) {
  sprom_get_mac(out->et0mac, &in[SPOFF(loc[1])]);
  sprom_get_mac(out->et1mac, &in[SPOFF(loc[2])]);
 }
 SPEX(et0phyaddr, SSB_SPROM1_ETHPHY, SSB_SPROM1_ETHPHY_ET0A, 0);
 SPEX(et1phyaddr, SSB_SPROM1_ETHPHY, SSB_SPROM1_ETHPHY_ET1A,
      SSB_SPROM1_ETHPHY_ET1A_SHIFT);
 SPEX(et0mdcport, SSB_SPROM1_ETHPHY, SSB_SPROM1_ETHPHY_ET0M, 14);
 SPEX(et1mdcport, SSB_SPROM1_ETHPHY, SSB_SPROM1_ETHPHY_ET1M, 15);
 SPEX(board_rev, SSB_SPROM1_BINF, SSB_SPROM1_BINF_BREV, 0);
 SPEX(board_type, SSB_SPROM1_SPID, 0xFFFF, 0);
 if (out->revision == 1)
  SPEX(country_code, SSB_SPROM1_BINF, SSB_SPROM1_BINF_CCODE,
       SSB_SPROM1_BINF_CCODE_SHIFT);
 SPEX(ant_available_a, SSB_SPROM1_BINF, SSB_SPROM1_BINF_ANTA,
      SSB_SPROM1_BINF_ANTA_SHIFT);
 SPEX(ant_available_bg, SSB_SPROM1_BINF, SSB_SPROM1_BINF_ANTBG,
      SSB_SPROM1_BINF_ANTBG_SHIFT);
 SPEX(pa0b0, SSB_SPROM1_PA0B0, 0xFFFF, 0);
 SPEX(pa0b1, SSB_SPROM1_PA0B1, 0xFFFF, 0);
 SPEX(pa0b2, SSB_SPROM1_PA0B2, 0xFFFF, 0);
 SPEX(pa1b0, SSB_SPROM1_PA1B0, 0xFFFF, 0);
 SPEX(pa1b1, SSB_SPROM1_PA1B1, 0xFFFF, 0);
 SPEX(pa1b2, SSB_SPROM1_PA1B2, 0xFFFF, 0);
 SPEX(gpio0, SSB_SPROM1_GPIOA, SSB_SPROM1_GPIOA_P0, 0);
 SPEX(gpio1, SSB_SPROM1_GPIOA, SSB_SPROM1_GPIOA_P1,
      SSB_SPROM1_GPIOA_P1_SHIFT);
 SPEX(gpio2, SSB_SPROM1_GPIOB, SSB_SPROM1_GPIOB_P2, 0);
 SPEX(gpio3, SSB_SPROM1_GPIOB, SSB_SPROM1_GPIOB_P3,
      SSB_SPROM1_GPIOB_P3_SHIFT);
 SPEX(maxpwr_a, SSB_SPROM1_MAXPWR, SSB_SPROM1_MAXPWR_A,
      SSB_SPROM1_MAXPWR_A_SHIFT);
 SPEX(maxpwr_bg, SSB_SPROM1_MAXPWR, SSB_SPROM1_MAXPWR_BG, 0);
 SPEX(itssi_a, SSB_SPROM1_ITSSI, SSB_SPROM1_ITSSI_A,
      SSB_SPROM1_ITSSI_A_SHIFT);
 SPEX(itssi_bg, SSB_SPROM1_ITSSI, SSB_SPROM1_ITSSI_BG, 0);
 SPEX(boardflags_lo, SSB_SPROM1_BFLLO, 0xFFFF, 0);

 SPEX(alpha2[0], SSB_SPROM1_CCODE, 0xff00, 8);
 SPEX(alpha2[1], SSB_SPROM1_CCODE, 0x00ff, 0);


 out->antenna_gain.a0 = sprom_extract_antgain(out->revision, in,
           SSB_SPROM1_AGAIN,
           SSB_SPROM1_AGAIN_BG,
           SSB_SPROM1_AGAIN_BG_SHIFT);
 out->antenna_gain.a1 = sprom_extract_antgain(out->revision, in,
           SSB_SPROM1_AGAIN,
           SSB_SPROM1_AGAIN_A,
           SSB_SPROM1_AGAIN_A_SHIFT);
 if (out->revision >= 2)
  sprom_extract_r23(out, in);
}
