
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct us_data {int dummy; } ;
struct Scsi_Host {scalar_t__ hostdata; } ;



__attribute__((used)) static inline struct us_data *host_to_us(struct Scsi_Host *host) {
 return (struct us_data *) host->hostdata;
}
