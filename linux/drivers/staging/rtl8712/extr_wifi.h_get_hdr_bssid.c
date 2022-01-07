
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned char* GetAddr1Ptr (unsigned char*) ;
 unsigned char* GetAddr2Ptr (unsigned char*) ;
 unsigned char* GetAddr3Ptr (unsigned char*) ;
 int GetFrDs (unsigned char*) ;
 int GetToDs (unsigned char*) ;

__attribute__((used)) static inline unsigned char *get_hdr_bssid(unsigned char *pframe)
{
 unsigned char *sa;
 unsigned int to_fr_ds = (GetToDs(pframe) << 1) | GetFrDs(pframe);

 switch (to_fr_ds) {
 case 0x00:
  sa = GetAddr3Ptr(pframe);
  break;
 case 0x01:
  sa = GetAddr2Ptr(pframe);
  break;
 case 0x02:
  sa = GetAddr1Ptr(pframe);
  break;
 default:
  sa = ((void*)0);
  break;
 }
 return sa;
}
