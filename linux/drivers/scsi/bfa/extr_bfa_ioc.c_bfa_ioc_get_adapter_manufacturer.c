
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bfa_ioc_s {int dummy; } ;


 int BFA_ADAPTER_MFG_NAME_LEN ;
 int BFA_MFG_NAME ;
 int memset (void*,int ,int ) ;
 int strlcpy (char*,int ,int ) ;

void
bfa_ioc_get_adapter_manufacturer(struct bfa_ioc_s *ioc, char *manufacturer)
{
 memset((void *)manufacturer, 0, BFA_ADAPTER_MFG_NAME_LEN);
 strlcpy(manufacturer, BFA_MFG_NAME, BFA_ADAPTER_MFG_NAME_LEN);
}
