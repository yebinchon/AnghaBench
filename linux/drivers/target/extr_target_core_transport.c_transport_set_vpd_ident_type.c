
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct t10_vpd {unsigned char device_identifier_type; } ;


 int transport_dump_vpd_ident_type (struct t10_vpd*,int *,int ) ;

int transport_set_vpd_ident_type(struct t10_vpd *vpd, unsigned char *page_83)
{





 vpd->device_identifier_type = (page_83[1] & 0x0f);
 return transport_dump_vpd_ident_type(vpd, ((void*)0), 0);
}
