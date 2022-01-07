; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/block/extr_dasd_eckd.c_dasd_eckd_ext_pool_id.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/block/extr_dasd_eckd.c_dasd_eckd_ext_pool_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dasd_device = type { %struct.dasd_eckd_private* }
%struct.dasd_eckd_private = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dasd_device*)* @dasd_eckd_ext_pool_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dasd_eckd_ext_pool_id(%struct.dasd_device* %0) #0 {
  %2 = alloca %struct.dasd_device*, align 8
  %3 = alloca %struct.dasd_eckd_private*, align 8
  store %struct.dasd_device* %0, %struct.dasd_device** %2, align 8
  %4 = load %struct.dasd_device*, %struct.dasd_device** %2, align 8
  %5 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %4, i32 0, i32 0
  %6 = load %struct.dasd_eckd_private*, %struct.dasd_eckd_private** %5, align 8
  store %struct.dasd_eckd_private* %6, %struct.dasd_eckd_private** %3, align 8
  %7 = load %struct.dasd_eckd_private*, %struct.dasd_eckd_private** %3, align 8
  %8 = getelementptr inbounds %struct.dasd_eckd_private, %struct.dasd_eckd_private* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  ret i32 %10
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
