
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dasd_device {int dummy; } ;
struct ccw1 {int dummy; } ;
struct PFX_eckd_data {int dummy; } ;


 int prefix_LRE (struct ccw1*,struct PFX_eckd_data*,unsigned int,unsigned int,int,struct dasd_device*,struct dasd_device*,int ,int ,int ,int ,int ) ;

__attribute__((used)) static int prefix(struct ccw1 *ccw, struct PFX_eckd_data *pfxdata,
    unsigned int trk, unsigned int totrk, int cmd,
    struct dasd_device *basedev, struct dasd_device *startdev)
{
 return prefix_LRE(ccw, pfxdata, trk, totrk, cmd, basedev, startdev,
     0, 0, 0, 0, 0);
}
