; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/ti/extr_pinctrl-ti-iodelay.c_ti_iodelay_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/ti/extr_pinctrl-ti-iodelay.c_ti_iodelay_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.ti_iodelay_device = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @ti_iodelay_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ti_iodelay_remove(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.ti_iodelay_device*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %5 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %6 = call %struct.ti_iodelay_device* @platform_get_drvdata(%struct.platform_device* %5)
  store %struct.ti_iodelay_device* %6, %struct.ti_iodelay_device** %4, align 8
  %7 = load %struct.ti_iodelay_device*, %struct.ti_iodelay_device** %4, align 8
  %8 = icmp ne %struct.ti_iodelay_device* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %23

10:                                               ; preds = %1
  %11 = load %struct.ti_iodelay_device*, %struct.ti_iodelay_device** %4, align 8
  %12 = getelementptr inbounds %struct.ti_iodelay_device, %struct.ti_iodelay_device* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %10
  %16 = load %struct.ti_iodelay_device*, %struct.ti_iodelay_device** %4, align 8
  %17 = getelementptr inbounds %struct.ti_iodelay_device, %struct.ti_iodelay_device* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = call i32 @pinctrl_unregister(i64 %18)
  br label %20

20:                                               ; preds = %15, %10
  %21 = load %struct.ti_iodelay_device*, %struct.ti_iodelay_device** %4, align 8
  %22 = call i32 @ti_iodelay_pinconf_deinit_dev(%struct.ti_iodelay_device* %21)
  store i32 0, i32* %2, align 4
  br label %23

23:                                               ; preds = %20, %9
  %24 = load i32, i32* %2, align 4
  ret i32 %24
}

declare dso_local %struct.ti_iodelay_device* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @pinctrl_unregister(i64) #1

declare dso_local i32 @ti_iodelay_pinconf_deinit_dev(%struct.ti_iodelay_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
