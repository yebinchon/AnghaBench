
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef void* u8 ;
struct TYPE_3__ {void* word_en; int word_cnts; int data; void* offset; } ;
typedef TYPE_1__* PPGPKT_STRUCT ;


 int Efuse_CalculateWordCnts (void*) ;
 int PGPKT_DATA_SIZE ;
 int efuse_WordEnableDataRead (void*,void**,int ) ;
 int memset (int ,int,int ) ;

__attribute__((used)) static void hal_EfuseConstructPGPkt(
 u8 offset,
 u8 word_en,
 u8 *pData,
 PPGPKT_STRUCT pTargetPkt
)
{
 memset(pTargetPkt->data, 0xFF, PGPKT_DATA_SIZE);
 pTargetPkt->offset = offset;
 pTargetPkt->word_en = word_en;
 efuse_WordEnableDataRead(word_en, pData, pTargetPkt->data);
 pTargetPkt->word_cnts = Efuse_CalculateWordCnts(pTargetPkt->word_en);
}
