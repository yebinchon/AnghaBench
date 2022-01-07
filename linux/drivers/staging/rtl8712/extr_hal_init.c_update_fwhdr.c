
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct fw_hdr {void* fw_priv_sz; void* img_SRAM_size; void* img_IMEM_size; void* dmem_size; void* version; void* signature; } ;
typedef int __le32 ;
typedef int __le16 ;


 void* le16_to_cpu (int ) ;
 void* le32_to_cpu (int ) ;

__attribute__((used)) static void update_fwhdr(struct fw_hdr *pfwhdr, const u8 *pmappedfw)
{
 pfwhdr->signature = le16_to_cpu(*(__le16 *)pmappedfw);
 pfwhdr->version = le16_to_cpu(*(__le16 *)(pmappedfw + 2));

 pfwhdr->dmem_size = le32_to_cpu(*(__le32 *)(pmappedfw + 4));

 pfwhdr->img_IMEM_size = le32_to_cpu(*(__le32 *)(pmappedfw + 8));

 pfwhdr->img_SRAM_size = le32_to_cpu(*(__le32 *)(pmappedfw + 12));

 pfwhdr->fw_priv_sz = le32_to_cpu(*(__le32 *)(pmappedfw + 16));
}
