
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wwn ;
typedef unsigned int u8 ;
typedef int u64 ;


 int EINVAL ;
 int hex_to_bin (int ) ;
 int memset (unsigned int*,int ,int) ;
 int wwn_to_u64 (unsigned int*) ;

__attribute__((used)) static int
fc_parse_wwn(const char *ns, u64 *nm)
{
 unsigned int i, j;
 u8 wwn[8];

 memset(wwn, 0, sizeof(wwn));


 for (i=0, j=0; i < 16; i++) {
  int value;

  value = hex_to_bin(*ns++);
  if (value >= 0)
   j = (j << 4) | value;
  else
   return -EINVAL;
  if (i % 2) {
   wwn[i/2] = j & 0xff;
   j = 0;
  }
 }

 *nm = wwn_to_u64(wwn);

 return 0;
}
