
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvec_chip {scalar_t__ state; int dev; } ;


 int dev_err (int ,char*,unsigned int,scalar_t__) ;

__attribute__((used)) static void nvec_invalid_flags(struct nvec_chip *nvec, unsigned int status,
          bool reset)
{
 dev_err(nvec->dev, "unexpected status flags 0x%02x during state %i\n",
  status, nvec->state);
 if (reset)
  nvec->state = 0;
}
