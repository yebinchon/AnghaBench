
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct snic_fw_req {int dummy; } ;


 int rmb () ;

__attribute__((used)) static inline void
snic_color_dec(struct snic_fw_req *req, u8 *color)
{
 u8 *c = ((u8 *) req) + sizeof(struct snic_fw_req) - 1;

 *color = *c >> 7;







 rmb();
}
