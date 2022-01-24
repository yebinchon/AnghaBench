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
typedef  int u32 ;
struct rtw_cbuf {int size; scalar_t__ read; scalar_t__ write; } ;

/* Variables and functions */
 struct rtw_cbuf* FUNC0 (int) ; 

struct rtw_cbuf *FUNC1(u32 size)
{
	struct rtw_cbuf *cbuf;

	cbuf = FUNC0(sizeof(*cbuf) + sizeof(void *) * size);

	if (cbuf) {
		cbuf->write = cbuf->read = 0;
		cbuf->size = size;
	}

	return cbuf;
}