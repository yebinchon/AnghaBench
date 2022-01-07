
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct asd_ha_struct {TYPE_2__* phys; } ;
struct TYPE_4__ {TYPE_1__* phy_desc; } ;
struct TYPE_3__ {int* sas_addr; } ;


 int ASD_SATA_INTERLOCK_TIMEOUT ;
 int EN_ARP2HALTC ;
 int LEDMODE_TXRX ;
 int LEDTIMER ;
 int LEDTIMERS_100ms ;
 scalar_t__ LmARP2INTCTL (int) ;
 int LmARP2INTEN (int) ;
 int LmBITL_TIMER (int) ;
 int LmBLIND48 ;
 int LmCONTROL (int) ;
 int LmFRMERREN (int) ;
 int LmFRMERREN_MASK ;
 scalar_t__ LmHWTSTAT (int) ;
 scalar_t__ LmHWTSTATEN (int) ;
 int LmHWTSTATEN_MASK ;
 int LmM0INTEN_MASK ;
 int LmM1INTEN_MASK ;
 scalar_t__ LmM1SASALIGN (int) ;
 scalar_t__ LmM1STPALIGN (int) ;
 int LmM2INTEN_MASK ;
 int LmM3INTVEC0 (int) ;
 int LmM3INTVEC1 (int) ;
 int LmM3INTVEC10 (int) ;
 int LmM3INTVEC2 (int) ;
 int LmM3INTVEC3 (int) ;
 int LmM3INTVEC4 (int) ;
 int LmM3INTVEC5 (int) ;
 int LmM3INTVEC6 (int) ;
 int LmM3INTVEC7 (int) ;
 int LmM3INTVEC8 (int) ;
 int LmM3INTVEC9 (int) ;
 int LmM3SATATIMER (int) ;
 int LmM5INTEN_MASK ;
 int LmMODECTL (int) ;
 int LmMnBUFPERR ;
 scalar_t__ LmMnBUFSTAT (int,int ) ;
 scalar_t__ LmMnDMAERRS (int,int) ;
 int LmMnFRMERR (int,int ) ;
 scalar_t__ LmMnHOLDLVL (int,int ) ;
 int LmMnINT (int,int) ;
 int LmMnINTEN (int,int) ;
 scalar_t__ LmMnSATAFS (int,int) ;
 scalar_t__ LmMnSCRATCHPAGE (int,int) ;
 scalar_t__ LmMnSGDMAERRS (int,int) ;
 scalar_t__ LmMnXFRLVL (int,int) ;
 int LmMnXFRLVL_256 ;
 int LmMnXFRLVL_512 ;
 scalar_t__ LmMnXMTSIZE (int,int) ;
 int LmPRGMCNT (int) ;
 int LmPRIMSTAT0EN (int) ;
 int LmPRIMSTAT0EN_MASK ;
 int LmPRIMSTAT1EN (int) ;
 int LmPRIMSTAT1EN_MASK ;
 int LmPRMSTAT0 (int) ;
 int LmPRMSTAT1 (int) ;
 int LmREQMBX (int) ;
 int LmRSPMBX (int) ;
 scalar_t__ LmSCRATCHPAGE (int) ;
 scalar_t__ LmWWN (int) ;
 int RSTINTCTL ;
 int SAS_ADDR_SIZE ;
 int SAS_ALIGN_DEFAULT ;
 int STP_ALIGN_DEFAULT ;
 int asd_read_reg_dword (struct asd_ha_struct*,int ) ;
 int asd_write_reg_byte (struct asd_ha_struct*,scalar_t__,int) ;
 int asd_write_reg_dword (struct asd_ha_struct*,int ,int) ;
 int asd_write_reg_word (struct asd_ha_struct*,int ,int) ;
 int lseq_idle_loop ;
 int* lseq_vecs ;

__attribute__((used)) static void asd_init_lseq_cio(struct asd_ha_struct *asd_ha, int lseq)
{
 u8 *sas_addr;
 int i;


 asd_write_reg_dword(asd_ha, LmARP2INTEN(lseq), EN_ARP2HALTC);

 asd_write_reg_byte(asd_ha, LmSCRATCHPAGE(lseq), 0);


 for (i = 0; i < 3; i++)
  asd_write_reg_byte(asd_ha, LmMnSCRATCHPAGE(lseq, i), 0);


 asd_write_reg_byte(asd_ha, LmMnSCRATCHPAGE(lseq, 5), 0);

 asd_write_reg_dword(asd_ha, LmRSPMBX(lseq), 0);


 asd_write_reg_dword(asd_ha, LmMnINTEN(lseq, 0), LmM0INTEN_MASK);
 asd_write_reg_dword(asd_ha, LmMnINT(lseq, 0), 0xFFFFFFFF);

 asd_write_reg_dword(asd_ha, LmMnINTEN(lseq, 1), LmM1INTEN_MASK);
 asd_write_reg_dword(asd_ha, LmMnINT(lseq, 1), 0xFFFFFFFF);

 asd_write_reg_dword(asd_ha, LmMnINTEN(lseq, 2), LmM2INTEN_MASK);
 asd_write_reg_dword(asd_ha, LmMnINT(lseq, 2), 0xFFFFFFFF);

 asd_write_reg_dword(asd_ha, LmMnINTEN(lseq, 5), LmM5INTEN_MASK);
 asd_write_reg_dword(asd_ha, LmMnINT(lseq, 5), 0xFFFFFFFF);


 asd_write_reg_byte(asd_ha, LmHWTSTATEN(lseq), LmHWTSTATEN_MASK);


 asd_write_reg_dword(asd_ha, LmPRIMSTAT0EN(lseq), LmPRIMSTAT0EN_MASK);
 asd_write_reg_dword(asd_ha, LmPRIMSTAT1EN(lseq), LmPRIMSTAT1EN_MASK);


 asd_write_reg_dword(asd_ha, LmFRMERREN(lseq), LmFRMERREN_MASK);
 asd_write_reg_byte(asd_ha, LmMnHOLDLVL(lseq, 0), 0x50);


 asd_write_reg_byte(asd_ha, LmMnXFRLVL(lseq, 0), LmMnXFRLVL_512);

 asd_write_reg_byte(asd_ha, LmMnXFRLVL(lseq, 1), LmMnXFRLVL_256);


 asd_write_reg_word(asd_ha, LmPRGMCNT(lseq), lseq_idle_loop);


 asd_write_reg_dword(asd_ha, LmMODECTL(lseq), LmBLIND48);
 asd_write_reg_word(asd_ha, LmM3SATATIMER(lseq),
      ASD_SATA_INTERLOCK_TIMEOUT);

 (void) asd_read_reg_dword(asd_ha, LmREQMBX(lseq));


 asd_write_reg_dword(asd_ha, LmPRMSTAT0(lseq), 0xFFFFFFFF);
 asd_write_reg_dword(asd_ha, LmPRMSTAT1(lseq), 0xFFFFFFFF);


 asd_write_reg_byte(asd_ha, LmHWTSTAT(lseq), 0xFF);


 asd_write_reg_byte(asd_ha, LmMnDMAERRS(lseq, 0), 0xFF);
 asd_write_reg_byte(asd_ha, LmMnDMAERRS(lseq, 1), 0xFF);


 asd_write_reg_byte(asd_ha, LmMnSGDMAERRS(lseq, 0), 0xFF);
 asd_write_reg_byte(asd_ha, LmMnSGDMAERRS(lseq, 1), 0xFF);


 asd_write_reg_byte(asd_ha, LmMnBUFSTAT(lseq, 0), LmMnBUFPERR);


 asd_write_reg_dword(asd_ha, LmMnFRMERR(lseq, 0), 0xFFFFFFFF);


 asd_write_reg_byte(asd_ha, LmARP2INTCTL(lseq), RSTINTCTL);


 sas_addr = asd_ha->phys[lseq].phy_desc->sas_addr;
 for (i = 0; i < SAS_ADDR_SIZE; i++)
  asd_write_reg_byte(asd_ha, LmWWN(lseq) + i, sas_addr[i]);


 asd_write_reg_byte(asd_ha, LmMnXMTSIZE(lseq, 1), 0);


 asd_write_reg_word(asd_ha, LmBITL_TIMER(lseq), 9);


 asd_write_reg_byte(asd_ha, LmMnSATAFS(lseq, 1), 0x80);



 asd_write_reg_word(asd_ha, LmM3INTVEC0(lseq), lseq_vecs[0]);
 asd_write_reg_word(asd_ha, LmM3INTVEC1(lseq), lseq_vecs[1]);
 asd_write_reg_word(asd_ha, LmM3INTVEC2(lseq), lseq_vecs[2]);
 asd_write_reg_word(asd_ha, LmM3INTVEC3(lseq), lseq_vecs[3]);
 asd_write_reg_word(asd_ha, LmM3INTVEC4(lseq), lseq_vecs[4]);
 asd_write_reg_word(asd_ha, LmM3INTVEC5(lseq), lseq_vecs[5]);
 asd_write_reg_word(asd_ha, LmM3INTVEC6(lseq), lseq_vecs[6]);
 asd_write_reg_word(asd_ha, LmM3INTVEC7(lseq), lseq_vecs[7]);
 asd_write_reg_word(asd_ha, LmM3INTVEC8(lseq), lseq_vecs[8]);
 asd_write_reg_word(asd_ha, LmM3INTVEC9(lseq), lseq_vecs[9]);
 asd_write_reg_word(asd_ha, LmM3INTVEC10(lseq), lseq_vecs[10]);




 asd_write_reg_dword(asd_ha, LmCONTROL(lseq),
       (LEDTIMER | LEDMODE_TXRX | LEDTIMERS_100ms));


 asd_write_reg_byte(asd_ha, LmM1SASALIGN(lseq), SAS_ALIGN_DEFAULT);
 asd_write_reg_byte(asd_ha, LmM1STPALIGN(lseq), STP_ALIGN_DEFAULT);
}
