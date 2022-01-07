
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct zpci_dev {int fh; } ;
struct ism_dev {int pdev; } ;


 int ZPCI_CREATE_REQ (int ,int,int) ;
 int __zpci_load (void*,int ,unsigned long) ;
 struct zpci_dev* to_zpci (int ) ;

__attribute__((used)) static inline void __ism_read_cmd(struct ism_dev *ism, void *data,
      unsigned long offset, unsigned long len)
{
 struct zpci_dev *zdev = to_zpci(ism->pdev);
 u64 req = ZPCI_CREATE_REQ(zdev->fh, 2, 8);

 while (len > 0) {
  __zpci_load(data, req, offset);
  offset += 8;
  data += 8;
  len -= 8;
 }
}
