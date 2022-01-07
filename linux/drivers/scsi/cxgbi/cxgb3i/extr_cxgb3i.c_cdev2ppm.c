
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct t3cdev {struct cxgbi_ppm* ulp_iscsi; } ;
struct cxgbi_ppm {int dummy; } ;
struct cxgbi_device {scalar_t__ lldev; } ;



__attribute__((used)) static struct cxgbi_ppm *cdev2ppm(struct cxgbi_device *cdev)
{
 return ((struct t3cdev *)cdev->lldev)->ulp_iscsi;
}
