
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {unsigned int io_shift; scalar_t__ io_base; } ;
struct TYPE_5__ {TYPE_1__ scsi; } ;
typedef TYPE_2__ FAS216_Info ;


 unsigned char readb (scalar_t__) ;

__attribute__((used)) static inline unsigned char fas216_readb(FAS216_Info *info, unsigned int reg)
{
 unsigned int off = reg << info->scsi.io_shift;
 return readb(info->scsi.io_base + off);
}
