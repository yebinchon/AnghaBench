#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int limit_entry; } ;
typedef  TYPE_1__ nsp32_target ;
struct TYPE_8__ {TYPE_1__* target; void* resettime; } ;
typedef  TYPE_2__ nsp32_hw_data ;

/* Variables and functions */
 int NSP32_HOST_SCSIID ; 
 int TRUE ; 
 scalar_t__ ULTRA20M_MODE ; 
 void* FUNC0 (TYPE_2__*,int) ; 
 int FUNC1 (TYPE_2__*,TYPE_1__*,int) ; 
 scalar_t__ trans_mode ; 

__attribute__((used)) static int FUNC2(nsp32_hw_data *data)
{
	int           ret, i;
	nsp32_target *target;
	int           entry, val;

	/*
	 * Reset time which is designated by EEPROM.
	 *
	 * TODO: Not used yet.
	 */
	data->resettime = FUNC0(data, 0x11);

	/*
	 * each device Synchronous Transfer Period
	 */
	for (i = 0; i < NSP32_HOST_SCSIID; i++) {
		target = &data->target[i];
		ret = FUNC0(data, i);
		switch (ret) {
		case 0:		/* 20MB/s */
			val = 0x0c;
			break;
		case 1:		/* 10MB/s */
			val = 0x19;
			break;
		case 2:		/* 5MB/s */
			val = 0x32;
			break;
		case 3:		/* ASYNC */
			val = 0x00;
			break;
		default:	/* default 20MB/s */
			val = 0x0c;
			break;
		}
		entry = FUNC1(data, target, val);
		if (entry < 0 || trans_mode == ULTRA20M_MODE) {
			/* search failed... set maximum speed */
			entry = 0;
		}
		target->limit_entry = entry;
	}

	return TRUE;
}