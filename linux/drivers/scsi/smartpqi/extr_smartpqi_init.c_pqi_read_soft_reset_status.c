
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct pqi_ctrl_info {int soft_reset_status; } ;


 int readb (int ) ;

__attribute__((used)) static inline u8 pqi_read_soft_reset_status(struct pqi_ctrl_info *ctrl_info)
{
 if (!ctrl_info->soft_reset_status)
  return 0;

 return readb(ctrl_info->soft_reset_status);
}
