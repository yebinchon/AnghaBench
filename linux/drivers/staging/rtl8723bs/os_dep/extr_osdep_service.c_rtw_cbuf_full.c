
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtw_cbuf {int write; int read; } ;



inline bool rtw_cbuf_full(struct rtw_cbuf *cbuf)
{
 return (cbuf->write == cbuf->read - 1) ? 1 : 0;
}
