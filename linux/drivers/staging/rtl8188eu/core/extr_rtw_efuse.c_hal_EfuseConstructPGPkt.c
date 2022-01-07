
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* u8 ;
struct pgpkt {void* word_en; int word_cnts; scalar_t__ data; void* offset; } ;


 int Efuse_CalculateWordCnts (void*) ;
 int efuse_WordEnableDataRead (void*,void**,scalar_t__) ;
 int memset (void*,int,int) ;

__attribute__((used)) static void hal_EfuseConstructPGPkt(u8 offset, u8 word_en, u8 *pData, struct pgpkt *pTargetPkt)
{
 memset((void *)pTargetPkt->data, 0xFF, sizeof(u8) * 8);
 pTargetPkt->offset = offset;
 pTargetPkt->word_en = word_en;
 efuse_WordEnableDataRead(word_en, pData, pTargetPkt->data);
 pTargetPkt->word_cnts = Efuse_CalculateWordCnts(pTargetPkt->word_en);
}
