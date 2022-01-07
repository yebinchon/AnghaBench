
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_9__ ;
typedef struct TYPE_17__ TYPE_8__ ;
typedef struct TYPE_16__ TYPE_7__ ;
typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_10__ {int ucTSID; } ;
struct TYPE_11__ {TYPE_1__ field; } ;
struct TYPE_12__ {TYPE_2__ TSInfo; } ;
struct TYPE_13__ {TYPE_3__ f; } ;
struct TYPE_18__ {int Addr; TYPE_4__ TSpec; } ;
struct TYPE_16__ {int SeqNum; } ;
struct TYPE_17__ {TYPE_7__ field; } ;
struct TYPE_14__ {int BufferSize; int TID; int BAPolicy; scalar_t__ AMSDU_Support; } ;
struct TYPE_15__ {TYPE_5__ field; } ;
struct ba_record {TYPE_8__ BaStartSeqCtrl; scalar_t__ BaTimeoutValue; TYPE_6__ BaParamSet; int DialogToken; scalar_t__ bValid; } ;
struct tx_ts_record {int TxCurSeq; TYPE_9__ TsCommonInfo; struct ba_record TxPendingBARecord; } ;
struct rtllib_device {int dummy; } ;


 int ActivateBAEntry (struct rtllib_device*,struct ba_record*,int ) ;
 int BA_SETUP_TIMEOUT ;
 int DeActivateBAEntry (struct rtllib_device*,struct ba_record*) ;
 int rtllib_send_ADDBAReq (struct rtllib_device*,int ,struct ba_record*) ;

void TsInitAddBA(struct rtllib_device *ieee, struct tx_ts_record *pTS,
   u8 Policy, u8 bOverwritePending)
{
 struct ba_record *pBA = &pTS->TxPendingBARecord;

 if (pBA->bValid && !bOverwritePending)
  return;

 DeActivateBAEntry(ieee, pBA);

 pBA->DialogToken++;
 pBA->BaParamSet.field.AMSDU_Support = 0;
 pBA->BaParamSet.field.BAPolicy = Policy;
 pBA->BaParamSet.field.TID =
    pTS->TsCommonInfo.TSpec.f.TSInfo.field.ucTSID;
 pBA->BaParamSet.field.BufferSize = 32;
 pBA->BaTimeoutValue = 0;
 pBA->BaStartSeqCtrl.field.SeqNum = (pTS->TxCurSeq + 3) % 4096;

 ActivateBAEntry(ieee, pBA, BA_SETUP_TIMEOUT);

 rtllib_send_ADDBAReq(ieee, pTS->TsCommonInfo.Addr, pBA);
}
