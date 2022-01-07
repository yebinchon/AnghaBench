
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FIFO_DATA_LOW ;
 int nsp32_multi_read4 (unsigned int,int ,void*,unsigned long) ;

__attribute__((used)) static inline void nsp32_fifo_read(unsigned int base,
       void *buf,
       unsigned long count)
{
 nsp32_multi_read4(base, FIFO_DATA_LOW, buf, count);
}
