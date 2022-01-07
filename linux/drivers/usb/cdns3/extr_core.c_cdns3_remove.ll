; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/cdns3/extr_core.c_cdns3_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/cdns3/extr_core.c_cdns3_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.cdns3 = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @cdns3_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cdns3_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.cdns3*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %4 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %5 = call %struct.cdns3* @platform_get_drvdata(%struct.platform_device* %4)
  store %struct.cdns3* %5, %struct.cdns3** %3, align 8
  %6 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %7 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %6, i32 0, i32 0
  %8 = call i32 @pm_runtime_get_sync(i32* %7)
  %9 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %10 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %9, i32 0, i32 0
  %11 = call i32 @pm_runtime_disable(i32* %10)
  %12 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %13 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %12, i32 0, i32 0
  %14 = call i32 @pm_runtime_put_noidle(i32* %13)
  %15 = load %struct.cdns3*, %struct.cdns3** %3, align 8
  %16 = call i32 @cdns3_exit_roles(%struct.cdns3* %15)
  %17 = load %struct.cdns3*, %struct.cdns3** %3, align 8
  %18 = getelementptr inbounds %struct.cdns3, %struct.cdns3* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @usb_role_switch_unregister(i32 %19)
  %21 = load %struct.cdns3*, %struct.cdns3** %3, align 8
  %22 = getelementptr inbounds %struct.cdns3, %struct.cdns3* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @phy_power_off(i32 %23)
  %25 = load %struct.cdns3*, %struct.cdns3** %3, align 8
  %26 = getelementptr inbounds %struct.cdns3, %struct.cdns3* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @phy_power_off(i32 %27)
  %29 = load %struct.cdns3*, %struct.cdns3** %3, align 8
  %30 = getelementptr inbounds %struct.cdns3, %struct.cdns3* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @phy_exit(i32 %31)
  %33 = load %struct.cdns3*, %struct.cdns3** %3, align 8
  %34 = getelementptr inbounds %struct.cdns3, %struct.cdns3* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @phy_exit(i32 %35)
  ret i32 0
}

declare dso_local %struct.cdns3* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @pm_runtime_get_sync(i32*) #1

declare dso_local i32 @pm_runtime_disable(i32*) #1

declare dso_local i32 @pm_runtime_put_noidle(i32*) #1

declare dso_local i32 @cdns3_exit_roles(%struct.cdns3*) #1

declare dso_local i32 @usb_role_switch_unregister(i32) #1

declare dso_local i32 @phy_power_off(i32) #1

declare dso_local i32 @phy_exit(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
