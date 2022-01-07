; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/cio/extr_device.c_ccw_device_set_int_class.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/cio/extr_device.c_ccw_device_set_int_class.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccw_device = type { %struct.TYPE_2__*, %struct.ccw_driver* }
%struct.TYPE_2__ = type { i64 }
%struct.ccw_driver = type { i64 }

@IRQIO_CIO = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ccw_device*)* @ccw_device_set_int_class to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ccw_device_set_int_class(%struct.ccw_device* %0) #0 {
  %2 = alloca %struct.ccw_device*, align 8
  %3 = alloca %struct.ccw_driver*, align 8
  store %struct.ccw_device* %0, %struct.ccw_device** %2, align 8
  %4 = load %struct.ccw_device*, %struct.ccw_device** %2, align 8
  %5 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %4, i32 0, i32 1
  %6 = load %struct.ccw_driver*, %struct.ccw_driver** %5, align 8
  store %struct.ccw_driver* %6, %struct.ccw_driver** %3, align 8
  %7 = load %struct.ccw_driver*, %struct.ccw_driver** %3, align 8
  %8 = getelementptr inbounds %struct.ccw_driver, %struct.ccw_driver* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %19

11:                                               ; preds = %1
  %12 = load %struct.ccw_driver*, %struct.ccw_driver** %3, align 8
  %13 = getelementptr inbounds %struct.ccw_driver, %struct.ccw_driver* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load %struct.ccw_device*, %struct.ccw_device** %2, align 8
  %16 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  store i64 %14, i64* %18, align 8
  br label %25

19:                                               ; preds = %1
  %20 = load i64, i64* @IRQIO_CIO, align 8
  %21 = load %struct.ccw_device*, %struct.ccw_device** %2, align 8
  %22 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %21, i32 0, i32 0
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  store i64 %20, i64* %24, align 8
  br label %25

25:                                               ; preds = %19, %11
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
