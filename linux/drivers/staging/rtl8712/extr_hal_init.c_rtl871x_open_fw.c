
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct firmware {int size; int * data; } ;
struct _adapter {struct firmware* fw; TYPE_1__* pnetdev; } ;
struct TYPE_2__ {int dev; } ;


 int dev_err (int *,char*,int) ;

__attribute__((used)) static u32 rtl871x_open_fw(struct _adapter *adapter, const u8 **mappedfw)
{
 const struct firmware **raw = &adapter->fw;

 if (adapter->fw->size > 200000) {
  dev_err(&adapter->pnetdev->dev, "r8172u: Badfw->size of %d\n",
   (int)adapter->fw->size);
  return 0;
 }
 *mappedfw = (*raw)->data;
 return (*raw)->size;
}
