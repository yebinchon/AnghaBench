; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/controller/extr_pcie-cadence-host.c_cdns_pcie_shutdown.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/controller/extr_pcie-cadence-host.c_cdns_pcie_shutdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { i32 }
%struct.cdns_pcie = type { i32 }

@.str = private unnamed_addr constant [28 x i8] c"pm_runtime_put_sync failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.platform_device*)* @cdns_pcie_shutdown to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cdns_pcie_shutdown(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.cdns_pcie*, align 8
  %5 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %6 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %7 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %6, i32 0, i32 0
  store %struct.device* %7, %struct.device** %3, align 8
  %8 = load %struct.device*, %struct.device** %3, align 8
  %9 = call %struct.cdns_pcie* @dev_get_drvdata(%struct.device* %8)
  store %struct.cdns_pcie* %9, %struct.cdns_pcie** %4, align 8
  %10 = load %struct.device*, %struct.device** %3, align 8
  %11 = call i32 @pm_runtime_put_sync(%struct.device* %10)
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* %5, align 4
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %1
  %15 = load %struct.device*, %struct.device** %3, align 8
  %16 = call i32 @dev_dbg(%struct.device* %15, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  br label %17

17:                                               ; preds = %14, %1
  %18 = load %struct.device*, %struct.device** %3, align 8
  %19 = call i32 @pm_runtime_disable(%struct.device* %18)
  %20 = load %struct.cdns_pcie*, %struct.cdns_pcie** %4, align 8
  %21 = call i32 @cdns_pcie_disable_phy(%struct.cdns_pcie* %20)
  ret void
}

declare dso_local %struct.cdns_pcie* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @pm_runtime_put_sync(%struct.device*) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*) #1

declare dso_local i32 @pm_runtime_disable(%struct.device*) #1

declare dso_local i32 @cdns_pcie_disable_phy(%struct.cdns_pcie*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
