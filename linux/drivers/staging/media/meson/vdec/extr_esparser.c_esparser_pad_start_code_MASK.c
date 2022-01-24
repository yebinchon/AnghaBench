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
typedef  int u8 ;
typedef  int u32 ;
struct vb2_buffer {int dummy; } ;

/* Variables and functions */
 int ESPARSER_MIN_PACKET_SIZE ; 
 int SEARCH_PATTERN_LEN ; 
 int /*<<< orphan*/  FUNC0 (int*,int /*<<< orphan*/ ,int) ; 
 int FUNC1 (struct vb2_buffer*,int /*<<< orphan*/ ) ; 
 int* FUNC2 (struct vb2_buffer*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static u32 FUNC3(struct vb2_buffer *vb)
{
	u32 payload_size = FUNC1(vb, 0);
	u32 pad_size = 0;
	u8 *vaddr = FUNC2(vb, 0) + payload_size;

	if (payload_size < ESPARSER_MIN_PACKET_SIZE) {
		pad_size = ESPARSER_MIN_PACKET_SIZE - payload_size;
		FUNC0(vaddr, 0, pad_size);
	}

	FUNC0(vaddr + pad_size, 0, SEARCH_PATTERN_LEN);
	vaddr[pad_size]     = 0x00;
	vaddr[pad_size + 1] = 0x00;
	vaddr[pad_size + 2] = 0x01;
	vaddr[pad_size + 3] = 0xff;

	return pad_size;
}