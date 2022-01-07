
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct cifs_tcon {int resource_id; } ;
struct cifs_fscache_super_auxdata {int resource_id; } ;
typedef int loff_t ;
typedef enum fscache_checkaux { ____Placeholder_fscache_checkaux } fscache_checkaux ;
typedef int auxdata ;


 int FSCACHE_CHECKAUX_OBSOLETE ;
 int FSCACHE_CHECKAUX_OKAY ;
 scalar_t__ memcmp (void const*,struct cifs_fscache_super_auxdata*,int) ;
 int memset (struct cifs_fscache_super_auxdata*,int ,int) ;

__attribute__((used)) static enum
fscache_checkaux cifs_fscache_super_check_aux(void *cookie_netfs_data,
           const void *data,
           uint16_t datalen,
           loff_t object_size)
{
 struct cifs_fscache_super_auxdata auxdata;
 const struct cifs_tcon *tcon = cookie_netfs_data;

 if (datalen != sizeof(auxdata))
  return FSCACHE_CHECKAUX_OBSOLETE;

 memset(&auxdata, 0, sizeof(auxdata));
 auxdata.resource_id = tcon->resource_id;

 if (memcmp(data, &auxdata, datalen) != 0)
  return FSCACHE_CHECKAUX_OBSOLETE;

 return FSCACHE_CHECKAUX_OKAY;
}
