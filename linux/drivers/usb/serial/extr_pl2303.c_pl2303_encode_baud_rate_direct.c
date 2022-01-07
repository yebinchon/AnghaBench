
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int speed_t ;


 int put_unaligned_le32 (int ,unsigned char*) ;

__attribute__((used)) static speed_t pl2303_encode_baud_rate_direct(unsigned char buf[4],
        speed_t baud)
{
 put_unaligned_le32(baud, buf);

 return baud;
}
