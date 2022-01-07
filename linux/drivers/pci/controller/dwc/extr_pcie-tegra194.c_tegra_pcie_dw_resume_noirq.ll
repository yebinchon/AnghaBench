; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/controller/dwc/extr_pcie-tegra194.c_tegra_pcie_dw_resume_noirq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/controller/dwc/extr_pcie-tegra194.c_tegra_pcie_dw_resume_noirq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.tegra_pcie_dw = type { i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [25 x i8] c"Failed to init host: %d\0A\00", align 1
@PORT_LOGIC_MSI_CTRL_INT_0_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*)* @tegra_pcie_dw_resume_noirq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tegra_pcie_dw_resume_noirq(%struct.device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.tegra_pcie_dw*, align 8
  %5 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %3, align 8
  %6 = load %struct.device*, %struct.device** %3, align 8
  %7 = call %struct.tegra_pcie_dw* @dev_get_drvdata(%struct.device* %6)
  store %struct.tegra_pcie_dw* %7, %struct.tegra_pcie_dw** %4, align 8
  %8 = load %struct.tegra_pcie_dw*, %struct.tegra_pcie_dw** %4, align 8
  %9 = getelementptr inbounds %struct.tegra_pcie_dw, %struct.tegra_pcie_dw* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %42

13:                                               ; preds = %1
  %14 = load %struct.tegra_pcie_dw*, %struct.tegra_pcie_dw** %4, align 8
  %15 = call i32 @tegra_pcie_config_controller(%struct.tegra_pcie_dw* %14, i32 1)
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* %5, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %13
  %19 = load i32, i32* %5, align 4
  store i32 %19, i32* %2, align 4
  br label %42

20:                                               ; preds = %13
  %21 = load %struct.tegra_pcie_dw*, %struct.tegra_pcie_dw** %4, align 8
  %22 = getelementptr inbounds %struct.tegra_pcie_dw, %struct.tegra_pcie_dw* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = call i32 @tegra_pcie_dw_host_init(i32* %23)
  store i32 %24, i32* %5, align 4
  %25 = load i32, i32* %5, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %20
  %28 = load %struct.device*, %struct.device** %3, align 8
  %29 = load i32, i32* %5, align 4
  %30 = call i32 @dev_err(%struct.device* %28, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %29)
  br label %39

31:                                               ; preds = %20
  %32 = load %struct.tegra_pcie_dw*, %struct.tegra_pcie_dw** %4, align 8
  %33 = getelementptr inbounds %struct.tegra_pcie_dw, %struct.tegra_pcie_dw* %32, i32 0, i32 1
  %34 = load i32, i32* @PORT_LOGIC_MSI_CTRL_INT_0_EN, align 4
  %35 = load %struct.tegra_pcie_dw*, %struct.tegra_pcie_dw** %4, align 8
  %36 = getelementptr inbounds %struct.tegra_pcie_dw, %struct.tegra_pcie_dw* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @dw_pcie_writel_dbi(%struct.TYPE_2__* %33, i32 %34, i32 %37)
  store i32 0, i32* %2, align 4
  br label %42

39:                                               ; preds = %27
  %40 = load %struct.tegra_pcie_dw*, %struct.tegra_pcie_dw** %4, align 8
  %41 = call i32 @__deinit_controller(%struct.tegra_pcie_dw* %40)
  store i32 %41, i32* %2, align 4
  br label %42

42:                                               ; preds = %39, %31, %18, %12
  %43 = load i32, i32* %2, align 4
  ret i32 %43
}

declare dso_local %struct.tegra_pcie_dw* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @tegra_pcie_config_controller(%struct.tegra_pcie_dw*, i32) #1

declare dso_local i32 @tegra_pcie_dw_host_init(i32*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

declare dso_local i32 @dw_pcie_writel_dbi(%struct.TYPE_2__*, i32, i32) #1

declare dso_local i32 @__deinit_controller(%struct.tegra_pcie_dw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
