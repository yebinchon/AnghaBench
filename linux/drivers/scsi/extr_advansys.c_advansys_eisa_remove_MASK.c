#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct eisa_scsi_data {struct Scsi_Host** host; } ;
struct device {int dummy; } ;
struct Scsi_Host {int io_port; } ;

/* Variables and functions */
 int /*<<< orphan*/  ASC_IOADR_GAP ; 
 int /*<<< orphan*/  FUNC0 (struct Scsi_Host*) ; 
 struct eisa_scsi_data* FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (struct eisa_scsi_data*) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct device *dev)
{
	int i;
	struct eisa_scsi_data *data = FUNC1(dev);

	for (i = 0; i < 2; i++) {
		int ioport;
		struct Scsi_Host *shost = data->host[i];
		if (!shost)
			continue;
		ioport = shost->io_port;
		FUNC0(shost);
		FUNC3(ioport, ASC_IOADR_GAP);
	}

	FUNC2(data);
	return 0;
}