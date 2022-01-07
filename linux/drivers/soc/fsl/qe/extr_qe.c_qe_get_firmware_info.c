
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct qe_firmware_info {int * vtraps; int extended_modes; int id; } ;
struct property {int length; int * value; } ;
struct device_node {int dummy; } ;


 unsigned int ARRAY_SIZE (int *) ;
 struct property* of_find_property (struct device_node*,char*,int *) ;
 struct device_node* of_get_child_by_name (struct device_node*,char*) ;
 char* of_get_property (struct device_node*,char*,int *) ;
 int of_node_put (struct device_node*) ;
 struct qe_firmware_info qe_firmware_info ;
 int qe_firmware_uploaded ;
 struct device_node* qe_get_device_node () ;
 int strlcpy (int ,char const*,int) ;

struct qe_firmware_info *qe_get_firmware_info(void)
{
 static int initialized;
 struct property *prop;
 struct device_node *qe;
 struct device_node *fw = ((void*)0);
 const char *sprop;
 unsigned int i;





 if (qe_firmware_uploaded)
  return &qe_firmware_info;

 if (initialized)
  return ((void*)0);

 initialized = 1;

 qe = qe_get_device_node();
 if (!qe)
  return ((void*)0);


 fw = of_get_child_by_name(qe, "firmware");
 of_node_put(qe);


 if (!fw)
  return ((void*)0);

 qe_firmware_uploaded = 1;


 sprop = of_get_property(fw, "id", ((void*)0));
 if (sprop)
  strlcpy(qe_firmware_info.id, sprop,
   sizeof(qe_firmware_info.id));

 prop = of_find_property(fw, "extended-modes", ((void*)0));
 if (prop && (prop->length == sizeof(u64))) {
  const u64 *iprop = prop->value;

  qe_firmware_info.extended_modes = *iprop;
 }

 prop = of_find_property(fw, "virtual-traps", ((void*)0));
 if (prop && (prop->length == 32)) {
  const u32 *iprop = prop->value;

  for (i = 0; i < ARRAY_SIZE(qe_firmware_info.vtraps); i++)
   qe_firmware_info.vtraps[i] = iprop[i];
 }

 of_node_put(fw);

 return &qe_firmware_info;
}
