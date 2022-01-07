
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct cardstate {int dev; } ;
 unsigned int CBAUD ;
 int dev_err (int ,char*,unsigned int) ;
 int set_value (struct cardstate*,int,int) ;

__attribute__((used)) static int gigaset_baud_rate(struct cardstate *cs, unsigned cflag)
{
 u16 val;
 u32 rate;

 cflag &= CBAUD;

 switch (cflag) {
 case 133: rate = 300; break;
 case 129: rate = 600; break;
 case 136: rate = 1200; break;
 case 134: rate = 2400; break;
 case 131: rate = 4800; break;
 case 128: rate = 9600; break;
 case 135: rate = 19200; break;
 case 132: rate = 38400; break;
 case 130: rate = 57600; break;
 case 137: rate = 115200; break;
 default:
  rate = 9600;
  dev_err(cs->dev, "unsupported baudrate request 0x%x,"
   " using default of B9600\n", cflag);
 }

 val = 0x383fff / rate + 1;

 return set_value(cs, 1, val);
}
