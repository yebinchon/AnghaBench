
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u64 ;


 int sprintf (char*,char*,int,int,int,int,int,int,int,int) ;

__attribute__((used)) static inline void
wwn2str(char *wwn_str, u64 wwn)
{
 union {
  u64 wwn;
  u8 byte[8];
 } w;

 w.wwn = wwn;
 sprintf(wwn_str, "%02x:%02x:%02x:%02x:%02x:%02x:%02x:%02x", w.byte[0],
  w.byte[1], w.byte[2], w.byte[3], w.byte[4], w.byte[5],
  w.byte[6], w.byte[7]);
}
