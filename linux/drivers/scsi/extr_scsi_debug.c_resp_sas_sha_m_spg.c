
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sas_sha_m_pg ;


 int memcpy (unsigned char*,unsigned char*,int) ;
 int memset (unsigned char*,int ,int) ;

__attribute__((used)) static int resp_sas_sha_m_spg(unsigned char *p, int pcontrol)
{
 unsigned char sas_sha_m_pg[] = {0x59, 0x2, 0, 0xc, 0, 0x6, 0x10, 0,
      0, 0, 0, 0, 0, 0, 0, 0,
  };

 memcpy(p, sas_sha_m_pg, sizeof(sas_sha_m_pg));
 if (1 == pcontrol)
  memset(p + 4, 0, sizeof(sas_sha_m_pg) - 4);
 return sizeof(sas_sha_m_pg);
}
