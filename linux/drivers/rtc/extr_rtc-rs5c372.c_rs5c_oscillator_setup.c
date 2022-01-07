
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rs5c372 {unsigned char* regs; int type; int time24; int client; } ;
typedef int buf ;


 unsigned char R2x2x_CTRL2_XSTP ;
 unsigned char RS5C372_CTRL2_24 ;
 int RS5C_ADDR (size_t) ;
 unsigned char RS5C_CTRL2_XSTP ;
 size_t RS5C_REG_CTRL1 ;
 size_t RS5C_REG_CTRL2 ;
 unsigned char RV5C387_CTRL1_24 ;
 int i2c_smbus_write_byte_data (int ,int,unsigned char) ;






 scalar_t__ unlikely (int) ;

__attribute__((used)) static int rs5c_oscillator_setup(struct rs5c372 *rs5c372)
{
 unsigned char buf[2];
 int addr, i, ret = 0;

 addr = RS5C_ADDR(RS5C_REG_CTRL1);
 buf[0] = rs5c372->regs[RS5C_REG_CTRL1];
 buf[1] = rs5c372->regs[RS5C_REG_CTRL2];

 switch (rs5c372->type) {
 case 133:
  if (buf[1] & R2x2x_CTRL2_XSTP)
   return ret;
  break;
 case 132:
  if (!(buf[1] & R2x2x_CTRL2_XSTP))
   return ret;
  break;
 default:
  if (!(buf[1] & RS5C_CTRL2_XSTP))
   return ret;
  break;
 }


 switch (rs5c372->type) {
 case 131:
 case 130:
  buf[1] |= RS5C372_CTRL2_24;
  rs5c372->time24 = 1;
  break;
 case 133:
 case 132:
 case 129:
 case 128:
  buf[0] |= RV5C387_CTRL1_24;
  rs5c372->time24 = 1;
  break;
 default:

  break;
 }

 for (i = 0; i < sizeof(buf); i++) {
  addr = RS5C_ADDR(RS5C_REG_CTRL1 + i);
  ret = i2c_smbus_write_byte_data(rs5c372->client, addr, buf[i]);
  if (unlikely(ret < 0))
   return ret;
 }

 rs5c372->regs[RS5C_REG_CTRL1] = buf[0];
 rs5c372->regs[RS5C_REG_CTRL2] = buf[1];

 return 0;
}
