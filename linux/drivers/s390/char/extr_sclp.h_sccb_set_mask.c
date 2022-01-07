
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int val ;
typedef int u8 ;
typedef int sccb_mask_t ;


 int memcpy (int *,int *,int ) ;
 int memset (int *,int ,size_t) ;
 int min (int,size_t) ;

__attribute__((used)) static inline void sccb_set_mask(u8 *masks, size_t len, int i, sccb_mask_t val)
{
 memset(masks + i * len, 0, len);
 memcpy(masks + i * len, &val, min(sizeof(val), len));
}
