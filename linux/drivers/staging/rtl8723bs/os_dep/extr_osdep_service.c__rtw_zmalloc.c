
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 void* _rtw_malloc (int ) ;
 int memset (void*,int ,int ) ;

void *_rtw_zmalloc(u32 sz)
{
 void *pbuf = _rtw_malloc(sz);

 if (pbuf)
  memset(pbuf, 0, sz);

 return pbuf;
}
