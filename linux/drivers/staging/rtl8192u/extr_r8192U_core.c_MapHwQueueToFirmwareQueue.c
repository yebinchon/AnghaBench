
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;





 int COMP_ERR ;


 int QSLT_BE ;
 int QSLT_BEACON ;
 int QSLT_BK ;
 int QSLT_CMD ;
 int QSLT_HIGH ;
 int QSLT_MGNT ;
 int QSLT_VI ;
 int QSLT_VO ;
 int RT_TRACE (int ,char*,int) ;




__attribute__((used)) static u8 MapHwQueueToFirmwareQueue(u8 QueueID)
{
 u8 QueueSelect = 0x0;

 switch (QueueID) {
 case 134:
  QueueSelect = QSLT_BE;
  break;

 case 133:
  QueueSelect = QSLT_BK;
  break;

 case 128:
  QueueSelect = QSLT_VO;
  break;

 case 129:
  QueueSelect = QSLT_VI;
  break;
 case 131:
  QueueSelect = QSLT_MGNT;
  break;

 case 135:
  QueueSelect = QSLT_BEACON;
  break;



 case 130:
  QueueSelect = QSLT_CMD;
  break;
 case 132:
  QueueSelect = QSLT_HIGH;
  break;

 default:
  RT_TRACE(COMP_ERR,
    "TransmitTCB(): Impossible Queue Selection: %d\n",
    QueueID);
  break;
 }
 return QueueSelect;
}
