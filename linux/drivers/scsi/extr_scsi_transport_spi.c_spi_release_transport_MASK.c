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
struct TYPE_2__ {int /*<<< orphan*/  host_attrs; int /*<<< orphan*/  target_attrs; } ;
struct spi_internal {TYPE_1__ t; } ;
struct scsi_transport_template {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct spi_internal*) ; 
 struct spi_internal* FUNC1 (struct scsi_transport_template*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

void FUNC3(struct scsi_transport_template *t)
{
	struct spi_internal *i = FUNC1(t);

	FUNC2(&i->t.target_attrs);
	FUNC2(&i->t.host_attrs);

	FUNC0(i);
}