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
typedef  scalar_t__ u32 ;
struct scatterlist {int dummy; } ;
struct ahash_request {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct scatterlist*) ; 
 int /*<<< orphan*/  FUNC1 (struct ahash_request*,struct scatterlist*,void*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct ahash_request*) ; 
 int /*<<< orphan*/  FUNC3 (struct scatterlist*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct scatterlist*,void const*,scalar_t__) ; 

__attribute__((used)) static void FUNC5(struct ahash_request *hash,
	const void *buf, u32 payload_length, u32 padding,
	const void *pad_bytes, void *data_crc)
{
	struct scatterlist sg[2];

	FUNC3(sg, FUNC0(sg));
	FUNC4(sg, buf, payload_length);
	if (padding)
		FUNC4(sg + 1, pad_bytes, padding);

	FUNC1(hash, sg, data_crc, payload_length + padding);

	FUNC2(hash);
}