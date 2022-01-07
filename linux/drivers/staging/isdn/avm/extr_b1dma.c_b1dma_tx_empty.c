
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int inb (unsigned int) ;

__attribute__((used)) static inline int b1dma_tx_empty(unsigned int port)
{
 return inb(port + 0x03) & 0x1;
}
