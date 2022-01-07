
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sas_identify_frame {int _un1; int phy_id; int * sas_addr; int * _un4_11; int target_bits; int initiator_bits; scalar_t__ frame_type; int dev_type; } ;
struct hisi_hba {int sas_addr; } ;
typedef int identify_frame ;


 int SAS_ADDR_SIZE ;
 int SAS_END_DEVICE ;
 int SAS_PROTOCOL_ALL ;
 int SAS_PROTOCOL_NONE ;
 int TX_ID_DWORD0 ;
 int TX_ID_DWORD1 ;
 int TX_ID_DWORD2 ;
 int TX_ID_DWORD3 ;
 int TX_ID_DWORD4 ;
 int TX_ID_DWORD5 ;
 int __swab32 (int ) ;
 int hisi_sas_phy_write32 (struct hisi_hba*,int,int ,int ) ;
 int memcpy (int *,int ,int ) ;
 int memset (struct sas_identify_frame*,int ,int) ;

__attribute__((used)) static void config_id_frame_v3_hw(struct hisi_hba *hisi_hba, int phy_no)
{
 struct sas_identify_frame identify_frame;
 u32 *identify_buffer;

 memset(&identify_frame, 0, sizeof(identify_frame));
 identify_frame.dev_type = SAS_END_DEVICE;
 identify_frame.frame_type = 0;
 identify_frame._un1 = 1;
 identify_frame.initiator_bits = SAS_PROTOCOL_ALL;
 identify_frame.target_bits = SAS_PROTOCOL_NONE;
 memcpy(&identify_frame._un4_11[0], hisi_hba->sas_addr, SAS_ADDR_SIZE);
 memcpy(&identify_frame.sas_addr[0], hisi_hba->sas_addr, SAS_ADDR_SIZE);
 identify_frame.phy_id = phy_no;
 identify_buffer = (u32 *)(&identify_frame);

 hisi_sas_phy_write32(hisi_hba, phy_no, TX_ID_DWORD0,
   __swab32(identify_buffer[0]));
 hisi_sas_phy_write32(hisi_hba, phy_no, TX_ID_DWORD1,
   __swab32(identify_buffer[1]));
 hisi_sas_phy_write32(hisi_hba, phy_no, TX_ID_DWORD2,
   __swab32(identify_buffer[2]));
 hisi_sas_phy_write32(hisi_hba, phy_no, TX_ID_DWORD3,
   __swab32(identify_buffer[3]));
 hisi_sas_phy_write32(hisi_hba, phy_no, TX_ID_DWORD4,
   __swab32(identify_buffer[4]));
 hisi_sas_phy_write32(hisi_hba, phy_no, TX_ID_DWORD5,
   __swab32(identify_buffer[5]));
}
