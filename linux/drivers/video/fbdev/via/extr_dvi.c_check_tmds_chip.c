
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int tmds_register_read (int) ;

__attribute__((used)) static inline bool check_tmds_chip(int device_id_subaddr, int device_id)
{
 return tmds_register_read(device_id_subaddr) == device_id;
}
