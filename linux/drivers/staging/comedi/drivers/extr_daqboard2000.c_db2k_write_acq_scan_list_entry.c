
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct comedi_device {scalar_t__ mmio; } ;


 scalar_t__ DB2K_REG_ACQ_SCAN_LIST_FIFO ;
 int writew (int,scalar_t__) ;

__attribute__((used)) static void db2k_write_acq_scan_list_entry(struct comedi_device *dev, u16 entry)
{
 writew(entry & 0x00ff, dev->mmio + DB2K_REG_ACQ_SCAN_LIST_FIFO);
 writew((entry >> 8) & 0x00ff,
        dev->mmio + DB2K_REG_ACQ_SCAN_LIST_FIFO);
}
