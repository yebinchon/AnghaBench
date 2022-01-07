
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int sccb_mask_t ;
typedef int res ;


 int memcpy (int *,int *,int ) ;
 int min (int,size_t) ;

__attribute__((used)) static inline sccb_mask_t sccb_get_mask(u8 *masks, size_t len, int i)
{
 sccb_mask_t res = 0;

 memcpy(&res, masks + i * len, min(sizeof(res), len));
 return res;
}
