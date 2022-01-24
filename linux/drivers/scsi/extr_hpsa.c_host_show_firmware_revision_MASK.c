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
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct ctlr_info {unsigned char* hba_inquiry_data; } ;
struct Scsi_Host {int dummy; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 struct Scsi_Host* FUNC0 (struct device*) ; 
 struct ctlr_info* FUNC1 (struct Scsi_Host*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,char*,unsigned char,unsigned char,unsigned char,unsigned char) ; 

__attribute__((used)) static ssize_t FUNC3(struct device *dev,
	     struct device_attribute *attr, char *buf)
{
	struct ctlr_info *h;
	struct Scsi_Host *shost = FUNC0(dev);
	unsigned char *fwrev;

	h = FUNC1(shost);
	if (!h->hba_inquiry_data)
		return 0;
	fwrev = &h->hba_inquiry_data[32];
	return FUNC2(buf, 20, "%c%c%c%c\n",
		fwrev[0], fwrev[1], fwrev[2], fwrev[3]);
}