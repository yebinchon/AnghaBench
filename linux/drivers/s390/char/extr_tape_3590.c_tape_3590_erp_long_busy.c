
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tape_request {int dummy; } ;
struct tape_device {int dummy; } ;
struct irb {int dummy; } ;


 int DBF_EVENT (int,char*) ;
 int TAPE_IO_LONG_BUSY ;

__attribute__((used)) static int
tape_3590_erp_long_busy(struct tape_device *device,
   struct tape_request *request, struct irb *irb)
{
 DBF_EVENT(6, "Device is busy\n");
 return TAPE_IO_LONG_BUSY;
}
