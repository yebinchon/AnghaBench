; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_gvp11.c_check_wd33c93.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_gvp11.c_check_wd33c93.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gvp11_scsiregs = type { i8, i8 }

@ENODEV = common dso_local global i32 0, align 4
@WD_AUXILIARY_STATUS = common dso_local global i8 0, align 1
@WD_SCSI_STATUS = common dso_local global i8 0, align 1
@WD_TIMEOUT_PERIOD = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gvp11_scsiregs*)* @check_wd33c93 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_wd33c93(%struct.gvp11_scsiregs* %0) #0 {
  %2 = alloca %struct.gvp11_scsiregs*, align 8
  store %struct.gvp11_scsiregs* %0, %struct.gvp11_scsiregs** %2, align 8
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
