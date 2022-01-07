
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct rtw_cbuf {int size; scalar_t__ read; scalar_t__ write; } ;


 struct rtw_cbuf* rtw_malloc (int) ;

struct rtw_cbuf *rtw_cbuf_alloc(u32 size)
{
 struct rtw_cbuf *cbuf;

 cbuf = rtw_malloc(sizeof(*cbuf) + sizeof(void *) * size);

 if (cbuf) {
  cbuf->write = cbuf->read = 0;
  cbuf->size = size;
 }

 return cbuf;
}
