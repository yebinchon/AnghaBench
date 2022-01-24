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
struct vmlogrdr_priv_t {char* recording_name; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  size_t ssize_t ;
typedef  int /*<<< orphan*/  cp_response ;
typedef  int /*<<< orphan*/  cp_command ;

/* Variables and functions */
 size_t EINVAL ; 
 int /*<<< orphan*/  FUNC0 (char*,char*,int,int /*<<< orphan*/ *) ; 
 struct vmlogrdr_priv_t* FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,int) ; 
 scalar_t__ recording_class_AB ; 
 int /*<<< orphan*/  FUNC3 (char*,int,char*,char*) ; 

__attribute__((used)) static ssize_t FUNC4(struct device * dev,
				    struct device_attribute *attr,
				    const char * buf, size_t count)
{

	char cp_command[80];
	char cp_response[80];
	struct vmlogrdr_priv_t *priv = FUNC1(dev);

	if (buf[0] != '1')
		return -EINVAL;

	FUNC2(cp_command, 0x00, sizeof(cp_command));
	FUNC2(cp_response, 0x00, sizeof(cp_response));

        /*
	 * The recording command needs to be called with option QID
	 * for guests that have previlege classes A or B.
	 * Other guests will not recognize the command and we have to
	 * issue the same command without the QID parameter.
	 */

	if (recording_class_AB)
		FUNC3(cp_command, sizeof(cp_command),
			 "RECORDING %s PURGE QID * ",
			 priv->recording_name);
	else
		FUNC3(cp_command, sizeof(cp_command),
			 "RECORDING %s PURGE ",
			 priv->recording_name);

	FUNC0(cp_command, cp_response, sizeof(cp_response), NULL);

	return count;
}