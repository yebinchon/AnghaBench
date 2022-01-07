
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int devno; } ;
struct dasd_diag_init_io {unsigned int block_size; int end_block; int flaga; int offset; int dev_nr; } ;
struct dasd_diag_private {TYPE_1__ dev_id; struct dasd_diag_init_io iib; } ;
struct dasd_device {struct dasd_diag_private* private; } ;
typedef int blocknum_t ;


 int DASD_DIAG_FLAGA_DEFAULT ;
 int INIT_BIO ;
 int dia250 (struct dasd_diag_init_io*,int ) ;
 int memset (struct dasd_diag_init_io*,int ,int) ;

__attribute__((used)) static inline int
mdsk_init_io(struct dasd_device *device, unsigned int blocksize,
      blocknum_t offset, blocknum_t *end_block)
{
 struct dasd_diag_private *private = device->private;
 struct dasd_diag_init_io *iib = &private->iib;
 int rc;

 memset(iib, 0, sizeof (struct dasd_diag_init_io));

 iib->dev_nr = private->dev_id.devno;
 iib->block_size = blocksize;
 iib->offset = offset;
 iib->flaga = DASD_DIAG_FLAGA_DEFAULT;

 rc = dia250(iib, INIT_BIO);

 if ((rc & 3) == 0 && end_block)
  *end_block = iib->end_block;

 return rc;
}
