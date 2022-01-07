
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned char* GetAddr1Ptr (unsigned char*) ;
 unsigned char* GetAddr3Ptr (unsigned char*) ;
 int GetFrDs (unsigned char*) ;
 int GetToDs (unsigned char*) ;

__attribute__((used)) static inline unsigned char *get_da(unsigned char *pframe)
{
 unsigned char *da;
 unsigned int to_fr_ds = (GetToDs(pframe) << 1) | GetFrDs(pframe);

 switch (to_fr_ds) {
 case 0x00:
  da = GetAddr1Ptr(pframe);
  break;
 case 0x01:
  da = GetAddr1Ptr(pframe);
  break;
 case 0x02:
  da = GetAddr3Ptr(pframe);
  break;
 default:
  da = GetAddr3Ptr(pframe);
  break;
 }
 return da;
}
