; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/cio/extr_scm.c_scm_dev_avail.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/cio/extr_scm.c_scm_dev_avail.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i64 }
%struct.scm_driver = type { i32 (%struct.scm_device*, i32)* }
%struct.scm_device = type opaque
%struct.scm_device.0 = type { i32 }

@SCM_AVAIL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, i8*)* @scm_dev_avail to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @scm_dev_avail(%struct.device* %0, i8* %1) #0 {
  %3 = alloca %struct.device*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.scm_driver*, align 8
  %6 = alloca %struct.scm_device.0*, align 8
  store %struct.device* %0, %struct.device** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load %struct.device*, %struct.device** %3, align 8
  %8 = getelementptr inbounds %struct.device, %struct.device* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = call %struct.scm_driver* @to_scm_drv(i64 %9)
  store %struct.scm_driver* %10, %struct.scm_driver** %5, align 8
  %11 = load %struct.device*, %struct.device** %3, align 8
  %12 = call %struct.scm_device.0* @to_scm_dev(%struct.device* %11)
  store %struct.scm_device.0* %12, %struct.scm_device.0** %6, align 8
  %13 = load %struct.device*, %struct.device** %3, align 8
  %14 = getelementptr inbounds %struct.device, %struct.device* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %30

17:                                               ; preds = %2
  %18 = load %struct.scm_driver*, %struct.scm_driver** %5, align 8
  %19 = getelementptr inbounds %struct.scm_driver, %struct.scm_driver* %18, i32 0, i32 0
  %20 = load i32 (%struct.scm_device*, i32)*, i32 (%struct.scm_device*, i32)** %19, align 8
  %21 = icmp ne i32 (%struct.scm_device*, i32)* %20, null
  br i1 %21, label %22, label %30

22:                                               ; preds = %17
  %23 = load %struct.scm_driver*, %struct.scm_driver** %5, align 8
  %24 = getelementptr inbounds %struct.scm_driver, %struct.scm_driver* %23, i32 0, i32 0
  %25 = load i32 (%struct.scm_device*, i32)*, i32 (%struct.scm_device*, i32)** %24, align 8
  %26 = load %struct.scm_device.0*, %struct.scm_device.0** %6, align 8
  %27 = bitcast %struct.scm_device.0* %26 to %struct.scm_device*
  %28 = load i32, i32* @SCM_AVAIL, align 4
  %29 = call i32 %25(%struct.scm_device* %27, i32 %28)
  br label %30

30:                                               ; preds = %22, %17, %2
  ret i32 0
}

declare dso_local %struct.scm_driver* @to_scm_drv(i64) #1

declare dso_local %struct.scm_device.0* @to_scm_dev(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
