
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct us_data {char const* scsi_name; } ;
struct Scsi_Host {int dummy; } ;


 struct us_data* host_to_us (struct Scsi_Host*) ;

__attribute__((used)) static const char* host_info(struct Scsi_Host *host)
{
 struct us_data *us = host_to_us(host);
 return us->scsi_name;
}
