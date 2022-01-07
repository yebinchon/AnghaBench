
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nci_dev {int dummy; } ;
typedef scalar_t__ __u8 ;
typedef int __u32 ;


 int NFC_PROTO_ISO15693_MASK ;
 scalar_t__ ST_NCI1_X_PROPRIETARY_ISO15693 ;

__attribute__((used)) static __u32 st_nci_get_rfprotocol(struct nci_dev *ndev,
      __u8 rf_protocol)
{
 return rf_protocol == ST_NCI1_X_PROPRIETARY_ISO15693 ?
  NFC_PROTO_ISO15693_MASK : 0;
}
