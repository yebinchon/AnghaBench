
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sas_identify_frame {int dummy; } ;
struct mvs_info {int dummy; } ;


 scalar_t__ CONFIG_ID_FRAME0 ;
 int cpu_to_le32 (int ) ;
 int memcpy (struct sas_identify_frame*,int *,int) ;
 int mvs_read_port_cfg_data (struct mvs_info*,int) ;
 int mvs_write_port_cfg_addr (struct mvs_info*,int,scalar_t__) ;

__attribute__((used)) static void mvs_94xx_get_dev_identify_frame(struct mvs_info *mvi, int port_id,
     struct sas_identify_frame *id)
{
 int i;
 u32 id_frame[7];

 for (i = 0; i < 7; i++) {
  mvs_write_port_cfg_addr(mvi, port_id,
     CONFIG_ID_FRAME0 + i * 4);
  id_frame[i] = cpu_to_le32(mvs_read_port_cfg_data(mvi, port_id));
 }
 memcpy(id, id_frame, 28);
}
