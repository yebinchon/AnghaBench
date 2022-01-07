
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct zfcp_latency_record {int max; int min; int sum; } ;


 int max (int ,scalar_t__) ;
 int min (int ,scalar_t__) ;

__attribute__((used)) static void zfcp_fsf_update_lat(struct zfcp_latency_record *lat_rec, u32 lat)
{
 lat_rec->sum += lat;
 lat_rec->min = min(lat_rec->min, lat);
 lat_rec->max = max(lat_rec->max, lat);
}
