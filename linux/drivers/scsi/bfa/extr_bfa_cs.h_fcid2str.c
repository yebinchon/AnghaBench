
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;


 int sprintf (char*,char*,int,int,int) ;

__attribute__((used)) static inline void
fcid2str(char *fcid_str, u32 fcid)
{
 union {
  u32 fcid;
  u8 byte[4];
 } f;

 f.fcid = fcid;
 sprintf(fcid_str, "%02x:%02x:%02x", f.byte[1], f.byte[2], f.byte[3]);
}
