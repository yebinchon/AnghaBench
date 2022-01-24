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
struct _sas_device {int dummy; } ;
struct MPT3SAS_TARGET {int dummy; } ;
struct MPT3SAS_ADAPTER {int /*<<< orphan*/  sas_device_lock; } ;

/* Variables and functions */
 struct _sas_device* FUNC0 (struct MPT3SAS_ADAPTER*,struct MPT3SAS_TARGET*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static struct _sas_device *
FUNC3(struct MPT3SAS_ADAPTER *ioc,
		struct MPT3SAS_TARGET *tgt_priv)
{
	struct _sas_device *ret;
	unsigned long flags;

	FUNC1(&ioc->sas_device_lock, flags);
	ret = FUNC0(ioc, tgt_priv);
	FUNC2(&ioc->sas_device_lock, flags);

	return ret;
}