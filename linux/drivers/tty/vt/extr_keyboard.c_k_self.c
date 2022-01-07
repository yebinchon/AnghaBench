
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vc_data {int dummy; } ;


 int conv_8bit_to_uni (unsigned char) ;
 int k_unicode (struct vc_data*,int ,char) ;

__attribute__((used)) static void k_self(struct vc_data *vc, unsigned char value, char up_flag)
{
 k_unicode(vc, conv_8bit_to_uni(value), up_flag);
}
