
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct tape_request {int dummy; } ;
struct tape_device {TYPE_1__* cdev; } ;
struct TYPE_4__ {char* data; } ;
struct tape_3590_sense {TYPE_2__ fmt; } ;
struct irb {scalar_t__ ecw; } ;
struct TYPE_3__ {int dev; } ;


 int EKEYREJECTED ;
 int ENOKEY ;
 int ENOTCONN ;
 int dev_err (int *,char*) ;
 int tape_3590_erp_basic (struct tape_device*,struct tape_request*,struct irb*,int ) ;

__attribute__((used)) static int tape_3590_crypt_error(struct tape_device *device,
     struct tape_request *request, struct irb *irb)
{
 u8 cu_rc;
 u16 ekm_rc2;
 char *sense;

 sense = ((struct tape_3590_sense *) irb->ecw)->fmt.data;
 cu_rc = sense[0];
 ekm_rc2 = *((u16*) &sense[10]);
 if ((cu_rc == 0) && (ekm_rc2 == 0xee31))

  return tape_3590_erp_basic(device, request, irb, -EKEYREJECTED);
 if ((cu_rc == 1) || (cu_rc == 2))

  return tape_3590_erp_basic(device, request, irb, -ENOTCONN);

 dev_err (&device->cdev->dev, "The tape unit failed to obtain the "
  "encryption key from EKM\n");

 return tape_3590_erp_basic(device, request, irb, -ENOKEY);
}
