
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct aac_dev {int dummy; } ;


 int AAC_ENABLE_INTERRUPT ;
 int aac_src_access_devreg (struct aac_dev*,int ) ;

__attribute__((used)) static void aac_src_enable_interrupt_message(struct aac_dev *dev)
{
 aac_src_access_devreg(dev, AAC_ENABLE_INTERRUPT);
}
