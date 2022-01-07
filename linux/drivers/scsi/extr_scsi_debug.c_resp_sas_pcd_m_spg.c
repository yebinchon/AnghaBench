
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sas_pcd_m_pg ;


 int memcpy (unsigned char*,unsigned char*,int) ;
 int memset (unsigned char*,int ,int) ;
 scalar_t__ naa3_comp_a ;
 scalar_t__ naa3_comp_c ;
 int put_unaligned_be32 (int,unsigned char*) ;
 int put_unaligned_be64 (scalar_t__,unsigned char*) ;

__attribute__((used)) static int resp_sas_pcd_m_spg(unsigned char *p, int pcontrol, int target,
         int target_dev_id)
{
 unsigned char sas_pcd_m_pg[] = {0x59, 0x1, 0, 0x64, 0, 0x6, 0, 2,
      0, 0, 0, 0, 0x10, 0x9, 0x8, 0x0,
      0, 0, 0, 0, 0, 0, 0, 0,
      0, 0, 0, 0, 0, 0, 0, 0,
      0x2, 0, 0, 0, 0, 0, 0, 0,
      0x88, 0x99, 0, 0, 0, 0, 0, 0,
      0, 0, 0, 0, 0, 0, 0, 0,
      0, 1, 0, 0, 0x10, 0x9, 0x8, 0x0,
      0, 0, 0, 0, 0, 0, 0, 0,
      0, 0, 0, 0, 0, 0, 0, 0,
      0x3, 0, 0, 0, 0, 0, 0, 0,
      0x88, 0x99, 0, 0, 0, 0, 0, 0,
      0, 0, 0, 0, 0, 0, 0, 0,
  };
 int port_a, port_b;

 put_unaligned_be64(naa3_comp_a, sas_pcd_m_pg + 16);
 put_unaligned_be64(naa3_comp_c + 1, sas_pcd_m_pg + 24);
 put_unaligned_be64(naa3_comp_a, sas_pcd_m_pg + 64);
 put_unaligned_be64(naa3_comp_c + 1, sas_pcd_m_pg + 72);
 port_a = target_dev_id + 1;
 port_b = port_a + 1;
 memcpy(p, sas_pcd_m_pg, sizeof(sas_pcd_m_pg));
 put_unaligned_be32(port_a, p + 20);
 put_unaligned_be32(port_b, p + 48 + 20);
 if (1 == pcontrol)
  memset(p + 4, 0, sizeof(sas_pcd_m_pg) - 4);
 return sizeof(sas_pcd_m_pg);
}
