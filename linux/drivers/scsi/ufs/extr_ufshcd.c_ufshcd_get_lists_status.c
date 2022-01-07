
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int UFSHCD_STATUS_READY ;

__attribute__((used)) static inline int ufshcd_get_lists_status(u32 reg)
{
 return !((reg & UFSHCD_STATUS_READY) == UFSHCD_STATUS_READY);
}
