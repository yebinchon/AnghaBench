
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int LINKSYSWRT330_LINKSYSWRT300_BROADCOM ;
 int LINKSYSWRT350_LINKSYSWRT150_BROADCOM ;
 int UNKNOWN_BORADCOM ;
 scalar_t__ memcmp (int*,int ,int) ;

__attribute__((used)) static u8 HTIOTActIsCCDFsync(u8 *PeerMacAddr)
{
 u8 retValue = 0;

 if ((memcmp(PeerMacAddr, UNKNOWN_BORADCOM, 3) == 0) ||
     (memcmp(PeerMacAddr, LINKSYSWRT330_LINKSYSWRT300_BROADCOM, 3) == 0) ||
     (memcmp(PeerMacAddr, LINKSYSWRT350_LINKSYSWRT150_BROADCOM, 3) == 0))
  retValue = 1;

 return retValue;
}
