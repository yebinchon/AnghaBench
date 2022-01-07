
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int CISTPL_IO_16BIT ;
 unsigned int CISTPL_IO_8BIT ;
 int IO_DATA_PATH_WIDTH_16 ;
 int IO_DATA_PATH_WIDTH_8 ;
 int IO_DATA_PATH_WIDTH_AUTO ;

__attribute__((used)) static int pcmcia_io_cfg_data_width(unsigned int flags)
{
 if (!(flags & CISTPL_IO_8BIT))
  return IO_DATA_PATH_WIDTH_16;
 if (!(flags & CISTPL_IO_16BIT))
  return IO_DATA_PATH_WIDTH_8;
 return IO_DATA_PATH_WIDTH_AUTO;
}
