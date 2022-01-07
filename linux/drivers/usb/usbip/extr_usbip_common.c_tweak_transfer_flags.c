
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int URB_NO_TRANSFER_DMA_MAP ;

__attribute__((used)) static unsigned int tweak_transfer_flags(unsigned int flags)
{
 flags &= ~URB_NO_TRANSFER_DMA_MAP;
 return flags;
}
