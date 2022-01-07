
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct TYPE_2__ {int RegDecryptCustomFile; } ;
struct adapter {TYPE_1__ registrypriv; } ;


 int DBG_871X (char*,...) ;
 char* GetLineFromBuffer (char*) ;
 int GetU1ByteIntegerFromStringInDecimal (char*,int*) ;
 scalar_t__ IsCommentString (char*) ;
 int PHY_SetTxPowerLimit (struct adapter*,int*,int*,int*,int*,int*,int*,int*) ;
 int ParseQualifiedString (char*,int*,char*,char,char) ;
 int TXPWR_LMT_MAX_REGULATION_NUM ;
 int _FAIL ;
 int _SUCCESS ;
 scalar_t__ eqNByte (int*,int*,int) ;
 int memset (void*,int ,int) ;
 int phy_DecryptBBPgParaFile (struct adapter*,char*) ;

__attribute__((used)) static int phy_ParsePowerLimitTableFile(struct adapter *Adapter, char *buffer)
{
 u32 i = 0, forCnt = 0;
 u8 loadingStage = 0, limitValue = 0, fraction = 0;
 char *szLine, *ptmp;
 int rtStatus = _SUCCESS;
 char band[10], bandwidth[10], rateSection[10],
  regulation[TXPWR_LMT_MAX_REGULATION_NUM][10], rfPath[10], colNumBuf[10];
 u8 colNum = 0;

 DBG_871X("===>phy_ParsePowerLimitTableFile()\n");

 if (Adapter->registrypriv.RegDecryptCustomFile == 1)
  phy_DecryptBBPgParaFile(Adapter, buffer);

 ptmp = buffer;
 for (szLine = GetLineFromBuffer(ptmp); szLine != ((void*)0); szLine = GetLineFromBuffer(ptmp)) {

  if (IsCommentString(szLine)) {
   continue;
  }

  if (loadingStage == 0) {
   for (forCnt = 0; forCnt < TXPWR_LMT_MAX_REGULATION_NUM; ++forCnt)
    memset((void *) regulation[forCnt], 0, 10);

   memset((void *) band, 0, 10);
   memset((void *) bandwidth, 0, 10);
   memset((void *) rateSection, 0, 10);
   memset((void *) rfPath, 0, 10);
   memset((void *) colNumBuf, 0, 10);

   if (szLine[0] != '#' || szLine[1] != '#')
    continue;


   i = 2;
   while (szLine[i] == ' ' || szLine[i] == '\t')
    ++i;

   szLine[--i] = ' ';


   if (!ParseQualifiedString(szLine, &i, band, ' ', ',')) {
    DBG_871X("Fail to parse band!\n");
    return _FAIL;
   }
   if (!ParseQualifiedString(szLine, &i, bandwidth, ' ', ',')) {
    DBG_871X("Fail to parse bandwidth!\n");
    return _FAIL;
   }
   if (!ParseQualifiedString(szLine, &i, rfPath, ' ', ',')) {
    DBG_871X("Fail to parse rf path!\n");
    return _FAIL;
   }
   if (!ParseQualifiedString(szLine, &i, rateSection, ' ', ',')) {
    DBG_871X("Fail to parse rate!\n");
    return _FAIL;
   }

   loadingStage = 1;
  } else if (loadingStage == 1) {
   if (szLine[0] != '#' || szLine[1] != '#')
    continue;


   i = 2;
   while (szLine[i] == ' ' || szLine[i] == '\t')
    ++i;

   if (!eqNByte((u8 *)(szLine + i), (u8 *)("START"), 5)) {
    DBG_871X("Lost \"##   START\" label\n");
    return _FAIL;
   }

   loadingStage = 2;
  } else if (loadingStage == 2) {
   if (szLine[0] != '#' || szLine[1] != '#')
    continue;


   i = 2;
   while (szLine[i] == ' ' || szLine[i] == '\t')
    ++i;

   if (!ParseQualifiedString(szLine, &i, colNumBuf, '#', '#')) {
    DBG_871X("Fail to parse column number!\n");
    return _FAIL;
   }

   if (!GetU1ByteIntegerFromStringInDecimal(colNumBuf, &colNum))
    return _FAIL;

   if (colNum > TXPWR_LMT_MAX_REGULATION_NUM) {
    DBG_871X(
     "invalid col number %d (greater than max %d)\n",
     colNum, TXPWR_LMT_MAX_REGULATION_NUM
    );
    return _FAIL;
   }

   for (forCnt = 0; forCnt < colNum; ++forCnt) {
    u8 regulation_name_cnt = 0;


    while (szLine[i] == ' ' || szLine[i] == '\t')
     ++i;

    while (szLine[i] != ' ' && szLine[i] != '\t' && szLine[i] != '\0')
     regulation[forCnt][regulation_name_cnt++] = szLine[i++];


    if (regulation_name_cnt == 0) {
     DBG_871X("invalid number of regulation!\n");
     return _FAIL;
    }
   }

   loadingStage = 3;
  } else if (loadingStage == 3) {
   char channel[10] = {0}, powerLimit[10] = {0};
   u8 cnt = 0;


   if (szLine[0] == '#' && szLine[1] == '#') {
    i = 2;
    while (szLine[i] == ' ' || szLine[i] == '\t')
     ++i;

    if (eqNByte((u8 *)(szLine + i), (u8 *)("END"), 3)) {
     loadingStage = 0;
     continue;
    } else {
     DBG_871X("Wrong format\n");
     DBG_871X("<===== phy_ParsePowerLimitTableFile()\n");
     return _FAIL;
    }
   }

   if ((szLine[0] != 'c' && szLine[0] != 'C') ||
     (szLine[1] != 'h' && szLine[1] != 'H')) {
    DBG_871X("Meet wrong channel => power limt pair\n");
    continue;
   }
   i = 2;


   cnt = 0;
   while (szLine[i] >= '0' && szLine[i] <= '9') {
    channel[cnt] = szLine[i];
    ++cnt;
    ++i;
   }


   for (forCnt = 0; forCnt < colNum; ++forCnt) {

    while (szLine[i] == ' ' || szLine[i] == '\t')
     ++i;


    cnt = 0;
    fraction = 0;
    memset((void *) powerLimit, 0, 10);
    while ((szLine[i] >= '0' && szLine[i] <= '9') || szLine[i] == '.') {
     if (szLine[i] == '.') {
      if ((szLine[i+1] >= '0' && szLine[i+1] <= '9')) {
       fraction = szLine[i+1];
       i += 2;
      } else {
       DBG_871X("Wrong fraction in TXPWR_LMT.txt\n");
       return _FAIL;
      }

      break;
     }

     powerLimit[cnt] = szLine[i];
     ++cnt;
     ++i;
    }

    if (powerLimit[0] == '\0') {
     powerLimit[0] = '6';
     powerLimit[1] = '3';
     i += 2;
    } else {
     if (!GetU1ByteIntegerFromStringInDecimal(powerLimit, &limitValue))
      return _FAIL;

     limitValue *= 2;
     cnt = 0;
     if (fraction == '5')
      ++limitValue;


     if (limitValue >= 100) {
      powerLimit[cnt++] = limitValue/100 + '0';
      limitValue %= 100;

      if (limitValue >= 10) {
       powerLimit[cnt++] = limitValue/10 + '0';
       limitValue %= 10;
      } else
       powerLimit[cnt++] = '0';

      powerLimit[cnt++] = limitValue + '0';
     } else if (limitValue >= 10) {
      powerLimit[cnt++] = limitValue/10 + '0';
      limitValue %= 10;
      powerLimit[cnt++] = limitValue + '0';
     }

     else
      powerLimit[cnt++] = limitValue + '0';

     powerLimit[cnt] = '\0';
    }




    PHY_SetTxPowerLimit(Adapter, (u8 *)regulation[forCnt], (u8 *)band,
     (u8 *)bandwidth, (u8 *)rateSection, (u8 *)rfPath, (u8 *)channel, (u8 *)powerLimit);

   }
  } else {
   DBG_871X("Abnormal loading stage in phy_ParsePowerLimitTableFile()!\n");
   rtStatus = _FAIL;
   break;
  }
 }

 DBG_871X("<===phy_ParsePowerLimitTableFile()\n");
 return rtStatus;
}
