; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/host/extr_bcma-hcd.c_bcma_hcd_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/host/extr_bcma-hcd.c_bcma_hcd_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcma_device = type { i32 }
%struct.bcma_hcd_device = type { %struct.platform_device*, %struct.platform_device* }
%struct.platform_device = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bcma_device*)* @bcma_hcd_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bcma_hcd_remove(%struct.bcma_device* %0) #0 {
  %2 = alloca %struct.bcma_device*, align 8
  %3 = alloca %struct.bcma_hcd_device*, align 8
  %4 = alloca %struct.platform_device*, align 8
  %5 = alloca %struct.platform_device*, align 8
  store %struct.bcma_device* %0, %struct.bcma_device** %2, align 8
  %6 = load %struct.bcma_device*, %struct.bcma_device** %2, align 8
  %7 = call %struct.bcma_hcd_device* @bcma_get_drvdata(%struct.bcma_device* %6)
  store %struct.bcma_hcd_device* %7, %struct.bcma_hcd_device** %3, align 8
  %8 = load %struct.bcma_hcd_device*, %struct.bcma_hcd_device** %3, align 8
  %9 = getelementptr inbounds %struct.bcma_hcd_device, %struct.bcma_hcd_device* %8, i32 0, i32 1
  %10 = load %struct.platform_device*, %struct.platform_device** %9, align 8
  store %struct.platform_device* %10, %struct.platform_device** %4, align 8
  %11 = load %struct.bcma_hcd_device*, %struct.bcma_hcd_device** %3, align 8
  %12 = getelementptr inbounds %struct.bcma_hcd_device, %struct.bcma_hcd_device* %11, i32 0, i32 0
  %13 = load %struct.platform_device*, %struct.platform_device** %12, align 8
  store %struct.platform_device* %13, %struct.platform_device** %5, align 8
  %14 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %15 = icmp ne %struct.platform_device* %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %1
  %17 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %18 = call i32 @platform_device_unregister(%struct.platform_device* %17)
  br label %19

19:                                               ; preds = %16, %1
  %20 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %21 = icmp ne %struct.platform_device* %20, null
  br i1 %21, label %22, label %25

22:                                               ; preds = %19
  %23 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %24 = call i32 @platform_device_unregister(%struct.platform_device* %23)
  br label %25

25:                                               ; preds = %22, %19
  %26 = load %struct.bcma_device*, %struct.bcma_device** %2, align 8
  %27 = call i32 @bcma_core_disable(%struct.bcma_device* %26, i32 0)
  ret void
}

declare dso_local %struct.bcma_hcd_device* @bcma_get_drvdata(%struct.bcma_device*) #1

declare dso_local i32 @platform_device_unregister(%struct.platform_device*) #1

declare dso_local i32 @bcma_core_disable(%struct.bcma_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
