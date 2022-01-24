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
struct scatterlist {int dummy; } ;
struct domain_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct scatterlist*,void*,int) ; 
 int FUNC1 (struct domain_device*,struct scatterlist*,struct scatterlist*) ; 

__attribute__((used)) static int FUNC2(struct domain_device *dev, void *req, int req_size,
			    void *resp, int resp_size)
{
	struct scatterlist req_sg;
	struct scatterlist resp_sg;

	FUNC0(&req_sg, req, req_size);
	FUNC0(&resp_sg, resp, resp_size);
	return FUNC1(dev, &req_sg, &resp_sg);
}