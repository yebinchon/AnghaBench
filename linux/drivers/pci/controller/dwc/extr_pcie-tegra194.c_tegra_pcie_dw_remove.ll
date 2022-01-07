; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/controller/dwc/extr_pcie-tegra194.c_tegra_pcie_dw_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/controller/dwc/extr_pcie-tegra194.c_tegra_pcie_dw_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.tegra_pcie_dw = type { i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @tegra_pcie_dw_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tegra_pcie_dw_remove(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.tegra_pcie_dw*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %5 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %6 = call %struct.tegra_pcie_dw* @platform_get_drvdata(%struct.platform_device* %5)
  store %struct.tegra_pcie_dw* %6, %struct.tegra_pcie_dw** %4, align 8
  %7 = load %struct.tegra_pcie_dw*, %struct.tegra_pcie_dw** %4, align 8
  %8 = getelementptr inbounds %struct.tegra_pcie_dw, %struct.tegra_pcie_dw* %7, i32 0, i32 3
  %9 = load i32, i32* %8, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %31

12:                                               ; preds = %1
  %13 = load %struct.tegra_pcie_dw*, %struct.tegra_pcie_dw** %4, align 8
  %14 = getelementptr inbounds %struct.tegra_pcie_dw, %struct.tegra_pcie_dw* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @debugfs_remove_recursive(i32 %15)
  %17 = load %struct.tegra_pcie_dw*, %struct.tegra_pcie_dw** %4, align 8
  %18 = call i32 @tegra_pcie_deinit_controller(%struct.tegra_pcie_dw* %17)
  %19 = load %struct.tegra_pcie_dw*, %struct.tegra_pcie_dw** %4, align 8
  %20 = getelementptr inbounds %struct.tegra_pcie_dw, %struct.tegra_pcie_dw* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @pm_runtime_put_sync(i32 %21)
  %23 = load %struct.tegra_pcie_dw*, %struct.tegra_pcie_dw** %4, align 8
  %24 = getelementptr inbounds %struct.tegra_pcie_dw, %struct.tegra_pcie_dw* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @pm_runtime_disable(i32 %25)
  %27 = load %struct.tegra_pcie_dw*, %struct.tegra_pcie_dw** %4, align 8
  %28 = getelementptr inbounds %struct.tegra_pcie_dw, %struct.tegra_pcie_dw* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @tegra_bpmp_put(i32 %29)
  store i32 0, i32* %2, align 4
  br label %31

31:                                               ; preds = %12, %11
  %32 = load i32, i32* %2, align 4
  ret i32 %32
}

declare dso_local %struct.tegra_pcie_dw* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @debugfs_remove_recursive(i32) #1

declare dso_local i32 @tegra_pcie_deinit_controller(%struct.tegra_pcie_dw*) #1

declare dso_local i32 @pm_runtime_put_sync(i32) #1

declare dso_local i32 @pm_runtime_disable(i32) #1

declare dso_local i32 @tegra_bpmp_put(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
