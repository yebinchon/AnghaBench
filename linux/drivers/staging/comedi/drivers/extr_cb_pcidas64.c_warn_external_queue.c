
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_device {int class_dev; } ;


 int dev_err (int ,char*) ;

__attribute__((used)) static inline void warn_external_queue(struct comedi_device *dev)
{
 dev_err(dev->class_dev,
  "AO command and AI external channel queue cannot be used simultaneously\n");
 dev_err(dev->class_dev,
  "Use internal AI channel queue (channels must be consecutive and use same range/aref)\n");
}
