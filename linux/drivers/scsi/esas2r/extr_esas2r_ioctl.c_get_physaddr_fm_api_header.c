
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u64 ;
typedef int u32 ;
struct esas2r_sg_context {int cur_offset; scalar_t__ adapter; } ;
struct esas2r_flash_img {int dummy; } ;
struct TYPE_2__ {scalar_t__ header_buff_phys; } ;
struct esas2r_adapter {int save_offset; TYPE_1__ firmware; } ;



__attribute__((used)) static u32 get_physaddr_fm_api_header(struct esas2r_sg_context *sgc, u64 *addr)
{
 struct esas2r_adapter *a = (struct esas2r_adapter *)sgc->adapter;
 int offset = sgc->cur_offset - a->save_offset;

 (*addr) = a->firmware.header_buff_phys + offset;
 return sizeof(struct esas2r_flash_img) - offset;
}
