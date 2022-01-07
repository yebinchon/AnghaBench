
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;


 int crc_ccitt (int ,int const*,size_t const) ;
 int swab16 (int) ;

__attribute__((used)) static bool rt2800_check_firmware_crc(const u8 *data, const size_t len)
{
 u16 fw_crc;
 u16 crc;






 fw_crc = (data[len - 2] << 8 | data[len - 1]);
 crc = crc_ccitt(~0, data, len - 2);







 crc = swab16(crc);

 return fw_crc == crc;
}
