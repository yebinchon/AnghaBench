
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rw_semaphore {int dummy; } ;
struct fsg_lun {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 struct rw_semaphore* dev_get_drvdata (struct device*) ;
 struct fsg_lun* fsg_lun_from_dev (struct device*) ;
 int fsg_store_file (struct fsg_lun*,struct rw_semaphore*,char const*,size_t) ;

__attribute__((used)) static ssize_t file_store(struct device *dev, struct device_attribute *attr,
     const char *buf, size_t count)
{
 struct fsg_lun *curlun = fsg_lun_from_dev(dev);
 struct rw_semaphore *filesem = dev_get_drvdata(dev);

 return fsg_store_file(curlun, filesem, buf, count);
}
