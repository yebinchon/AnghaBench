
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct aac_dev {int dummy; } ;
struct TYPE_2__ {int OMR; } ;


 int AAC_INT_MODE_MSIX ;
 TYPE_1__ MUnit ;
 scalar_t__ aac_is_src (struct aac_dev*) ;
 int src_readl (struct aac_dev*,int ) ;

__attribute__((used)) static inline int aac_is_msix_mode(struct aac_dev *dev)
{
 u32 status = 0;

 if (aac_is_src(dev))
  status = src_readl(dev, MUnit.OMR);
 return (status & AAC_INT_MODE_MSIX);
}
