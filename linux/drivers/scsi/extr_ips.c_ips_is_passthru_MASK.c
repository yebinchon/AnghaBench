#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct scsi_cmnd {scalar_t__* cmnd; TYPE_1__* device; } ;
struct scatterlist {int offset; } ;
struct TYPE_2__ {scalar_t__ channel; scalar_t__ id; scalar_t__ lun; } ;

/* Variables and functions */
 scalar_t__ IPS_ADAPTER_ID ; 
 scalar_t__ IPS_IOCTL_COMMAND ; 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 char* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (unsigned long) ; 
 struct scatterlist* FUNC5 (struct scsi_cmnd*) ; 
 int /*<<< orphan*/  FUNC6 (struct scatterlist*) ; 

__attribute__((used)) static int FUNC7(struct scsi_cmnd *SC)
{
	unsigned long flags;

	FUNC0("ips_is_passthru", 1);

	if (!SC)
		return (0);

	if ((SC->cmnd[0] == IPS_IOCTL_COMMAND) &&
	    (SC->device->channel == 0) &&
	    (SC->device->id == IPS_ADAPTER_ID) &&
	    (SC->device->lun == 0) && FUNC5(SC)) {
                struct scatterlist *sg = FUNC5(SC);
                char  *buffer;

                /* kmap_atomic() ensures addressability of the user buffer.*/
                /* local_irq_save() protects the KM_IRQ0 address slot.     */
                FUNC4(flags);
                buffer = FUNC1(FUNC6(sg)) + sg->offset;
                if (buffer && buffer[0] == 'C' && buffer[1] == 'O' &&
                    buffer[2] == 'P' && buffer[3] == 'P') {
                        FUNC2(buffer - sg->offset);
                        FUNC3(flags);
                        return 1;
                }
                FUNC2(buffer - sg->offset);
                FUNC3(flags);
	}
	return 0;
}