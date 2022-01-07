
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rpmsg_device_id {int name; } ;
struct TYPE_2__ {int name; } ;
struct rpmsg_device {TYPE_1__ id; } ;


 int RPMSG_NAME_SIZE ;
 scalar_t__ strncmp (int ,int ,int ) ;

__attribute__((used)) static inline int rpmsg_id_match(const struct rpmsg_device *rpdev,
      const struct rpmsg_device_id *id)
{
 return strncmp(id->name, rpdev->id.name, RPMSG_NAME_SIZE) == 0;
}
