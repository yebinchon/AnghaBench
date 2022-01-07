
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct zpci_dev {int fh; } ;
struct ism_dev {int pdev; } ;


 int ZPCI_CREATE_REQ (int ,int,unsigned long) ;
 int __zpci_store_block (void*,int ,unsigned long) ;
 struct zpci_dev* to_zpci (int ) ;

__attribute__((used)) static inline void __ism_write_cmd(struct ism_dev *ism, void *data,
       unsigned long offset, unsigned long len)
{
 struct zpci_dev *zdev = to_zpci(ism->pdev);
 u64 req = ZPCI_CREATE_REQ(zdev->fh, 2, len);

 if (len)
  __zpci_store_block(data, req, offset);
}
