
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_client {int dummy; } ;


 int RX8025_BIT_CTRL2_PON ;
 int RX8025_BIT_CTRL2_VDET ;
 int RX8025_BIT_CTRL2_XST ;
 int RX8025_REG_CTRL2 ;
 int rx8025_read_reg (struct i2c_client*,int ) ;
 int rx8025_write_reg (struct i2c_client*,int ,int) ;

__attribute__((used)) static int rx8025_reset_validity(struct i2c_client *client)
{
 int ctrl2 = rx8025_read_reg(client, RX8025_REG_CTRL2);

 if (ctrl2 < 0)
  return ctrl2;

 ctrl2 &= ~(RX8025_BIT_CTRL2_PON | RX8025_BIT_CTRL2_VDET);

 return rx8025_write_reg(client, RX8025_REG_CTRL2,
    ctrl2 | RX8025_BIT_CTRL2_XST);
}
