; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/controller/dwc/extr_pci-imx6.c_imx6_pcie_wait_for_speed_change.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/controller/dwc/extr_pci-imx6.c_imx6_pcie_wait_for_speed_change.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.imx6_pcie = type { %struct.dw_pcie* }
%struct.dw_pcie = type { %struct.device* }
%struct.device = type { i32 }

@PCIE_LINK_WIDTH_SPEED_CONTROL = common dso_local global i32 0, align 4
@PORT_LOGIC_SPEED_CHANGE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"Speed change timeout\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.imx6_pcie*)* @imx6_pcie_wait_for_speed_change to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @imx6_pcie_wait_for_speed_change(%struct.imx6_pcie* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.imx6_pcie*, align 8
  %4 = alloca %struct.dw_pcie*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.imx6_pcie* %0, %struct.imx6_pcie** %3, align 8
  %8 = load %struct.imx6_pcie*, %struct.imx6_pcie** %3, align 8
  %9 = getelementptr inbounds %struct.imx6_pcie, %struct.imx6_pcie* %8, i32 0, i32 0
  %10 = load %struct.dw_pcie*, %struct.dw_pcie** %9, align 8
  store %struct.dw_pcie* %10, %struct.dw_pcie** %4, align 8
  %11 = load %struct.dw_pcie*, %struct.dw_pcie** %4, align 8
  %12 = getelementptr inbounds %struct.dw_pcie, %struct.dw_pcie* %11, i32 0, i32 0
  %13 = load %struct.device*, %struct.device** %12, align 8
  store %struct.device* %13, %struct.device** %5, align 8
  store i32 0, i32* %7, align 4
  br label %14

14:                                               ; preds = %28, %1
  %15 = load i32, i32* %7, align 4
  %16 = icmp ult i32 %15, 200
  br i1 %16, label %17, label %31

17:                                               ; preds = %14
  %18 = load %struct.dw_pcie*, %struct.dw_pcie** %4, align 8
  %19 = load i32, i32* @PCIE_LINK_WIDTH_SPEED_CONTROL, align 4
  %20 = call i32 @dw_pcie_readl_dbi(%struct.dw_pcie* %18, i32 %19)
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* @PORT_LOGIC_SPEED_CHANGE, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %17
  store i32 0, i32* %2, align 4
  br label %36

26:                                               ; preds = %17
  %27 = call i32 @usleep_range(i32 100, i32 1000)
  br label %28

28:                                               ; preds = %26
  %29 = load i32, i32* %7, align 4
  %30 = add i32 %29, 1
  store i32 %30, i32* %7, align 4
  br label %14

31:                                               ; preds = %14
  %32 = load %struct.device*, %struct.device** %5, align 8
  %33 = call i32 @dev_err(%struct.device* %32, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %34 = load i32, i32* @ETIMEDOUT, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %2, align 4
  br label %36

36:                                               ; preds = %31, %25
  %37 = load i32, i32* %2, align 4
  ret i32 %37
}

declare dso_local i32 @dw_pcie_readl_dbi(%struct.dw_pcie*, i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
