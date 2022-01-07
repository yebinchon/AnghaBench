
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uuid_le ;
struct wmi_driver {struct wmi_device_id* id_table; } ;
struct wmi_device_id {void const* context; scalar_t__* guid_string; } ;
struct TYPE_2__ {int guid; } ;
struct wmi_block {TYPE_1__ gblock; } ;


 int memcmp (int ,int *,int) ;
 scalar_t__ uuid_le_to_bin (scalar_t__*,int *) ;

__attribute__((used)) static const void *find_guid_context(struct wmi_block *wblock,
          struct wmi_driver *wdriver)
{
 const struct wmi_device_id *id;
 uuid_le guid_input;

 if (wblock == ((void*)0) || wdriver == ((void*)0))
  return ((void*)0);
 if (wdriver->id_table == ((void*)0))
  return ((void*)0);

 id = wdriver->id_table;
 while (*id->guid_string) {
  if (uuid_le_to_bin(id->guid_string, &guid_input))
   continue;
  if (!memcmp(wblock->gblock.guid, &guid_input, 16))
   return id->context;
  id++;
 }
 return ((void*)0);
}
