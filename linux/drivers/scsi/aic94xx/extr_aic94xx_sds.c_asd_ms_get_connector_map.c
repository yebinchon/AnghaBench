
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct asd_ms_conn_map {scalar_t__ maj; } ;
struct asd_manuf_sec {int dummy; } ;
struct asd_ha_struct {int dummy; } ;


 int ASD_DPRINTK (char*,...) ;
 int ENOENT ;
 struct asd_ms_conn_map* asd_find_ll_by_id (struct asd_manuf_sec*,char,char) ;

__attribute__((used)) static int asd_ms_get_connector_map(struct asd_ha_struct *asd_ha,
        struct asd_manuf_sec *manuf_sec)
{
 struct asd_ms_conn_map *cm;

 cm = asd_find_ll_by_id(manuf_sec, 'M', 'C');
 if (!cm) {
  ASD_DPRINTK("ms: no connector map found\n");
  return 0;
 }

 if (cm->maj != 0) {
  ASD_DPRINTK("ms: unsupported: connector map major version 0x%x"
       "\n", cm->maj);
  return -ENOENT;
 }



 return 0;
}
