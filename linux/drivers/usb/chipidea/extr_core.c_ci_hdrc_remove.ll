; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/chipidea/extr_core.c_ci_hdrc_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/chipidea/extr_core.c_ci_hdrc_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.ci_hdrc = type { i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @ci_hdrc_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ci_hdrc_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.ci_hdrc*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %4 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %5 = call %struct.ci_hdrc* @platform_get_drvdata(%struct.platform_device* %4)
  store %struct.ci_hdrc* %5, %struct.ci_hdrc** %3, align 8
  %6 = load %struct.ci_hdrc*, %struct.ci_hdrc** %3, align 8
  %7 = getelementptr inbounds %struct.ci_hdrc, %struct.ci_hdrc* %6, i32 0, i32 1
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %15

10:                                               ; preds = %1
  %11 = load %struct.ci_hdrc*, %struct.ci_hdrc** %3, align 8
  %12 = getelementptr inbounds %struct.ci_hdrc, %struct.ci_hdrc* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = call i32 @usb_role_switch_unregister(i64 %13)
  br label %15

15:                                               ; preds = %10, %1
  %16 = load %struct.ci_hdrc*, %struct.ci_hdrc** %3, align 8
  %17 = getelementptr inbounds %struct.ci_hdrc, %struct.ci_hdrc* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %30

20:                                               ; preds = %15
  %21 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %22 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %21, i32 0, i32 0
  %23 = call i32 @pm_runtime_get_sync(i32* %22)
  %24 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %25 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %24, i32 0, i32 0
  %26 = call i32 @pm_runtime_disable(i32* %25)
  %27 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %28 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %27, i32 0, i32 0
  %29 = call i32 @pm_runtime_put_noidle(i32* %28)
  br label %30

30:                                               ; preds = %20, %15
  %31 = load %struct.ci_hdrc*, %struct.ci_hdrc** %3, align 8
  %32 = call i32 @dbg_remove_files(%struct.ci_hdrc* %31)
  %33 = load %struct.ci_hdrc*, %struct.ci_hdrc** %3, align 8
  %34 = call i32 @ci_role_destroy(%struct.ci_hdrc* %33)
  %35 = load %struct.ci_hdrc*, %struct.ci_hdrc** %3, align 8
  %36 = call i32 @ci_hdrc_enter_lpm(%struct.ci_hdrc* %35, i32 1)
  %37 = load %struct.ci_hdrc*, %struct.ci_hdrc** %3, align 8
  %38 = call i32 @ci_usb_phy_exit(%struct.ci_hdrc* %37)
  %39 = load %struct.ci_hdrc*, %struct.ci_hdrc** %3, align 8
  %40 = call i32 @ci_ulpi_exit(%struct.ci_hdrc* %39)
  ret i32 0
}

declare dso_local %struct.ci_hdrc* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @usb_role_switch_unregister(i64) #1

declare dso_local i32 @pm_runtime_get_sync(i32*) #1

declare dso_local i32 @pm_runtime_disable(i32*) #1

declare dso_local i32 @pm_runtime_put_noidle(i32*) #1

declare dso_local i32 @dbg_remove_files(%struct.ci_hdrc*) #1

declare dso_local i32 @ci_role_destroy(%struct.ci_hdrc*) #1

declare dso_local i32 @ci_hdrc_enter_lpm(%struct.ci_hdrc*, i32) #1

declare dso_local i32 @ci_usb_phy_exit(%struct.ci_hdrc*) #1

declare dso_local i32 @ci_ulpi_exit(%struct.ci_hdrc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
