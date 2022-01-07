
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_device {scalar_t__ mmio; } ;


 int DB2K_ACQ_CONTROL_ADC_PACER_DISABLE ;
 int DB2K_ACQ_CONTROL_SEQ_STOP_SCAN_LIST ;
 scalar_t__ DB2K_REG_ACQ_CONTROL ;
 scalar_t__ DB2K_REG_TRIG_CONTROL ;
 int DB2K_TRIG_CONTROL_DISABLE ;
 int DB2K_TRIG_CONTROL_TYPE_ANALOG ;
 int DB2K_TRIG_CONTROL_TYPE_TTL ;
 int db2k_adc_stop_dma_transfer (struct comedi_device*) ;
 int udelay (int) ;
 int writew (int,scalar_t__) ;

__attribute__((used)) static void db2k_adc_disarm(struct comedi_device *dev)
{

 udelay(2);
 writew(DB2K_TRIG_CONTROL_TYPE_ANALOG | DB2K_TRIG_CONTROL_DISABLE,
        dev->mmio + DB2K_REG_TRIG_CONTROL);
 udelay(2);
 writew(DB2K_TRIG_CONTROL_TYPE_TTL | DB2K_TRIG_CONTROL_DISABLE,
        dev->mmio + DB2K_REG_TRIG_CONTROL);


 udelay(2);
 writew(DB2K_ACQ_CONTROL_SEQ_STOP_SCAN_LIST,
        dev->mmio + DB2K_REG_ACQ_CONTROL);


 udelay(2);
 writew(DB2K_ACQ_CONTROL_ADC_PACER_DISABLE,
        dev->mmio + DB2K_REG_ACQ_CONTROL);


 db2k_adc_stop_dma_transfer(dev);
}
