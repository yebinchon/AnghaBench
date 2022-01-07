
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct nfc_target {int dummy; } ;
struct nfc_hci_dev {int dummy; } ;



__attribute__((used)) static int microread_complete_target_discovered(struct nfc_hci_dev *hdev,
      u8 gate,
      struct nfc_target *target)
{
 return 0;
}
