
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtlwifi_firmware_header {int signature; } ;


 int le16_to_cpu (int ) ;

__attribute__((used)) static bool is_fw_header(struct rtlwifi_firmware_header *hdr)
{
 return (le16_to_cpu(hdr->signature) & 0xfff0) == 0x2300;
}
