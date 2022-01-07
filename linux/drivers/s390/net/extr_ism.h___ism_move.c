
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct zpci_dev {int fh; } ;
struct ism_dev {int pdev; } ;


 int ZPCI_CREATE_REQ (int ,int ,unsigned int) ;
 int __zpci_store_block (void*,int ,int ) ;
 struct zpci_dev* to_zpci (int ) ;

__attribute__((used)) static inline int __ism_move(struct ism_dev *ism, u64 dmb_req, void *data,
        unsigned int size)
{
 struct zpci_dev *zdev = to_zpci(ism->pdev);
 u64 req = ZPCI_CREATE_REQ(zdev->fh, 0, size);

 return __zpci_store_block(data, req, dmb_req);
}
