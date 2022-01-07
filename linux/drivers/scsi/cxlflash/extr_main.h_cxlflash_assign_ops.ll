; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/cxlflash/extr_main.h_cxlflash_assign_ops.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/cxlflash/extr_main.h_cxlflash_assign_ops.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cxlflash_backend_ops = type { i32 }
%struct.dev_dependent_vals = type { i32 }

@CXLFLASH_OCXL_DEV = common dso_local global i32 0, align 4
@cxlflash_cxl_ops = common dso_local global %struct.cxlflash_backend_ops zeroinitializer, align 4
@cxlflash_ocxl_ops = common dso_local global %struct.cxlflash_backend_ops zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.cxlflash_backend_ops* (%struct.dev_dependent_vals*)* @cxlflash_assign_ops to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.cxlflash_backend_ops* @cxlflash_assign_ops(%struct.dev_dependent_vals* %0) #0 {
  %2 = alloca %struct.dev_dependent_vals*, align 8
  %3 = alloca %struct.cxlflash_backend_ops*, align 8
  store %struct.dev_dependent_vals* %0, %struct.dev_dependent_vals** %2, align 8
  store %struct.cxlflash_backend_ops* null, %struct.cxlflash_backend_ops** %3, align 8
  %4 = load %struct.cxlflash_backend_ops*, %struct.cxlflash_backend_ops** %3, align 8
  ret %struct.cxlflash_backend_ops* %4
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
