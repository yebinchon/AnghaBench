; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/nvec/extr_nvec.c_tegra_nvec_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/nvec/extr_nvec.c_tegra_nvec_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.nvec_chip = type { i32, i32, i32, i32 }

@pm_power_off = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @tegra_nvec_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tegra_nvec_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.nvec_chip*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %4 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %5 = call %struct.nvec_chip* @platform_get_drvdata(%struct.platform_device* %4)
  store %struct.nvec_chip* %5, %struct.nvec_chip** %3, align 8
  %6 = load %struct.nvec_chip*, %struct.nvec_chip** %3, align 8
  %7 = call i32 @nvec_toggle_global_events(%struct.nvec_chip* %6, i32 0)
  %8 = load %struct.nvec_chip*, %struct.nvec_chip** %3, align 8
  %9 = getelementptr inbounds %struct.nvec_chip, %struct.nvec_chip* %8, i32 0, i32 3
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @mfd_remove_devices(i32 %10)
  %12 = load %struct.nvec_chip*, %struct.nvec_chip** %3, align 8
  %13 = load %struct.nvec_chip*, %struct.nvec_chip** %3, align 8
  %14 = getelementptr inbounds %struct.nvec_chip, %struct.nvec_chip* %13, i32 0, i32 2
  %15 = call i32 @nvec_unregister_notifier(%struct.nvec_chip* %12, i32* %14)
  %16 = load %struct.nvec_chip*, %struct.nvec_chip** %3, align 8
  %17 = getelementptr inbounds %struct.nvec_chip, %struct.nvec_chip* %16, i32 0, i32 1
  %18 = call i32 @cancel_work_sync(i32* %17)
  %19 = load %struct.nvec_chip*, %struct.nvec_chip** %3, align 8
  %20 = getelementptr inbounds %struct.nvec_chip, %struct.nvec_chip* %19, i32 0, i32 0
  %21 = call i32 @cancel_work_sync(i32* %20)
  store i32* null, i32** @pm_power_off, align 8
  ret i32 0
}

declare dso_local %struct.nvec_chip* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @nvec_toggle_global_events(%struct.nvec_chip*, i32) #1

declare dso_local i32 @mfd_remove_devices(i32) #1

declare dso_local i32 @nvec_unregister_notifier(%struct.nvec_chip*, i32*) #1

declare dso_local i32 @cancel_work_sync(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
