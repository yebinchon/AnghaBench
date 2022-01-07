
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int ARRAY_SIZE (char const**) ;
 char const** scsi_device_types ;

const char *scsi_device_type(unsigned type)
{
 if (type == 0x1e)
  return "Well-known LUN   ";
 if (type == 0x1f)
  return "No Device        ";
 if (type >= ARRAY_SIZE(scsi_device_types))
  return "Unknown          ";
 return scsi_device_types[type];
}
