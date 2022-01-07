
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EAGAIN ;
 int ENODEV ;

__attribute__((used)) static bool gb_i2c_expected_transfer_error(int errno)
{
 return errno == -EAGAIN || errno == -ENODEV;
}
