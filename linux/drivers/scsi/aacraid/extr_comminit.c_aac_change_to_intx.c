
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct aac_dev {int dummy; } ;


 int AAC_DISABLE_MSIX ;
 int AAC_ENABLE_INTX ;
 int aac_src_access_devreg (struct aac_dev*,int ) ;

__attribute__((used)) static inline void aac_change_to_intx(struct aac_dev *dev)
{
 aac_src_access_devreg(dev, AAC_DISABLE_MSIX);
 aac_src_access_devreg(dev, AAC_ENABLE_INTX);
}
