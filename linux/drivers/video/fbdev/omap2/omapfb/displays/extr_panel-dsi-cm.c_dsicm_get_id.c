
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct panel_drv_data {int dummy; } ;


 int DCS_GET_ID1 ;
 int DCS_GET_ID2 ;
 int DCS_GET_ID3 ;
 int dsicm_dcs_read_1 (struct panel_drv_data*,int ,int *) ;

__attribute__((used)) static int dsicm_get_id(struct panel_drv_data *ddata, u8 *id1, u8 *id2, u8 *id3)
{
 int r;

 r = dsicm_dcs_read_1(ddata, DCS_GET_ID1, id1);
 if (r)
  return r;
 r = dsicm_dcs_read_1(ddata, DCS_GET_ID2, id2);
 if (r)
  return r;
 r = dsicm_dcs_read_1(ddata, DCS_GET_ID3, id3);
 if (r)
  return r;

 return 0;
}
