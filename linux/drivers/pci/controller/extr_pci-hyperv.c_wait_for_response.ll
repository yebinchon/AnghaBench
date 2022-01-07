; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/controller/extr_pci-hyperv.c_wait_for_response.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/controller/extr_pci-hyperv.c_wait_for_response.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hv_device = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.completion = type { i32 }

@.str = private unnamed_addr constant [21 x i8] c"The device is gone.\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hv_device*, %struct.completion*)* @wait_for_response to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wait_for_response(%struct.hv_device* %0, %struct.completion* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hv_device*, align 8
  %5 = alloca %struct.completion*, align 8
  store %struct.hv_device* %0, %struct.hv_device** %4, align 8
  store %struct.completion* %1, %struct.completion** %5, align 8
  br label %6

6:                                                ; preds = %2, %26
  %7 = load %struct.hv_device*, %struct.hv_device** %4, align 8
  %8 = getelementptr inbounds %struct.hv_device, %struct.hv_device* %7, i32 0, i32 1
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %19

13:                                               ; preds = %6
  %14 = load %struct.hv_device*, %struct.hv_device** %4, align 8
  %15 = getelementptr inbounds %struct.hv_device, %struct.hv_device* %14, i32 0, i32 0
  %16 = call i32 @dev_warn_once(i32* %15, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %17 = load i32, i32* @ENODEV, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %28

19:                                               ; preds = %6
  %20 = load %struct.completion*, %struct.completion** %5, align 8
  %21 = load i32, i32* @HZ, align 4
  %22 = sdiv i32 %21, 10
  %23 = call i64 @wait_for_completion_timeout(%struct.completion* %20, i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %19
  br label %27

26:                                               ; preds = %19
  br label %6

27:                                               ; preds = %25
  store i32 0, i32* %3, align 4
  br label %28

28:                                               ; preds = %27, %13
  %29 = load i32, i32* %3, align 4
  ret i32 %29
}

declare dso_local i32 @dev_warn_once(i32*, i8*) #1

declare dso_local i64 @wait_for_completion_timeout(%struct.completion*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
