
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int disconnect_pg ;


 int memcpy (unsigned char*,unsigned char*,int) ;
 int memset (unsigned char*,int ,int) ;

__attribute__((used)) static int resp_disconnect_pg(unsigned char *p, int pcontrol, int target)
{
 unsigned char disconnect_pg[] = {0x2, 0xe, 128, 128, 0, 10, 0, 0,
      0, 0, 0, 0, 0, 0, 0, 0};

 memcpy(p, disconnect_pg, sizeof(disconnect_pg));
 if (1 == pcontrol)
  memset(p + 2, 0, sizeof(disconnect_pg) - 2);
 return sizeof(disconnect_pg);
}
