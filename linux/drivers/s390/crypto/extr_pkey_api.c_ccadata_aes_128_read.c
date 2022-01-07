
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kobject {int dummy; } ;
struct file {int dummy; } ;
struct bin_attribute {int dummy; } ;
typedef int ssize_t ;
typedef int loff_t ;


 int PKEY_KEYTYPE_AES_128 ;
 int pkey_ccadata_aes_attr_read (int ,int,char*,int ,size_t) ;

__attribute__((used)) static ssize_t ccadata_aes_128_read(struct file *filp,
        struct kobject *kobj,
        struct bin_attribute *attr,
        char *buf, loff_t off,
        size_t count)
{
 return pkey_ccadata_aes_attr_read(PKEY_KEYTYPE_AES_128, 0, buf,
       off, count);
}
