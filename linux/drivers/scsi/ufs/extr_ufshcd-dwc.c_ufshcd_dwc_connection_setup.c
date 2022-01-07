
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ufshcd_dme_attr_val {int member_1; int member_2; int member_0; } ;
struct ufs_hba {int dummy; } ;


 int ARRAY_SIZE (struct ufshcd_dme_attr_val const*) ;
 int DME_LOCAL ;
 int DME_PEER ;
 int N_DEVICEID ;
 int N_DEVICEID_VALID ;
 int T_CONNECTIONSTATE ;
 int T_CPORTFLAGS ;
 int T_CPORTMODE ;
 int T_PEERCPORTID ;
 int T_PEERDEVICEID ;
 int T_TRAFFICCLASS ;
 int UIC_ARG_MIB (int ) ;
 int ufshcd_dwc_dme_set_attrs (struct ufs_hba*,struct ufshcd_dme_attr_val const*,int ) ;

__attribute__((used)) static int ufshcd_dwc_connection_setup(struct ufs_hba *hba)
{
 const struct ufshcd_dme_attr_val setup_attrs[] = {
  { UIC_ARG_MIB(T_CONNECTIONSTATE), 0, DME_LOCAL },
  { UIC_ARG_MIB(N_DEVICEID), 0, DME_LOCAL },
  { UIC_ARG_MIB(N_DEVICEID_VALID), 0, DME_LOCAL },
  { UIC_ARG_MIB(T_PEERDEVICEID), 1, DME_LOCAL },
  { UIC_ARG_MIB(T_PEERCPORTID), 0, DME_LOCAL },
  { UIC_ARG_MIB(T_TRAFFICCLASS), 0, DME_LOCAL },
  { UIC_ARG_MIB(T_CPORTFLAGS), 0x6, DME_LOCAL },
  { UIC_ARG_MIB(T_CPORTMODE), 1, DME_LOCAL },
  { UIC_ARG_MIB(T_CONNECTIONSTATE), 1, DME_LOCAL },
  { UIC_ARG_MIB(T_CONNECTIONSTATE), 0, DME_PEER },
  { UIC_ARG_MIB(N_DEVICEID), 1, DME_PEER },
  { UIC_ARG_MIB(N_DEVICEID_VALID), 1, DME_PEER },
  { UIC_ARG_MIB(T_PEERDEVICEID), 1, DME_PEER },
  { UIC_ARG_MIB(T_PEERCPORTID), 0, DME_PEER },
  { UIC_ARG_MIB(T_TRAFFICCLASS), 0, DME_PEER },
  { UIC_ARG_MIB(T_CPORTFLAGS), 0x6, DME_PEER },
  { UIC_ARG_MIB(T_CPORTMODE), 1, DME_PEER },
  { UIC_ARG_MIB(T_CONNECTIONSTATE), 1, DME_PEER }
 };

 return ufshcd_dwc_dme_set_attrs(hba, setup_attrs, ARRAY_SIZE(setup_attrs));
}
