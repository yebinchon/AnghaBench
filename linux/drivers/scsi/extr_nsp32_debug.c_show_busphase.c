
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int printk (char*,...) ;

__attribute__((used)) static void show_busphase(unsigned char stat)
{
 switch(stat) {
 case 134:
  printk( "BUSPHASE_COMMAND\n");
  break;
 case 131:
  printk( "BUSPHASE_MESSAGE_IN\n");
  break;
 case 130:
  printk( "BUSPHASE_MESSAGE_OUT\n");
  break;
 case 133:
  printk( "BUSPHASE_DATA_IN\n");
  break;
 case 132:
  printk( "BUSPHASE_DATA_OUT\n");
  break;
 case 128:
  printk( "BUSPHASE_STATUS\n");
  break;
 case 129:
  printk( "BUSPHASE_SELECT\n");
  break;
 default:
  printk( "BUSPHASE_other: 0x%x\n", stat);
  break;
 }
}
