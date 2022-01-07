
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct hisi_hba {int dummy; } ;


 int PORT_STATE ;
 int hisi_sas_read32 (struct hisi_hba*,int ) ;

__attribute__((used)) static bool check_any_wideports_v2_hw(struct hisi_hba *hisi_hba)
{
 u32 port_state;

 port_state = hisi_sas_read32(hisi_hba, PORT_STATE);
 if (port_state & 0x1ff)
  return 1;

 return 0;
}
