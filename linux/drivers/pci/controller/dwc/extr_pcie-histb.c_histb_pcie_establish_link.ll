; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/controller/dwc/extr_pcie-histb.c_histb_pcie_establish_link.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/controller/dwc/extr_pcie-histb.c_histb_pcie_establish_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcie_port = type { i32 }
%struct.dw_pcie = type { i32 }
%struct.histb_pcie = type { i32 }

@.str = private unnamed_addr constant [17 x i8] c"Link already up\0A\00", align 1
@PCIE_SYS_CTRL0 = common dso_local global i32 0, align 4
@PCIE_DEVICE_TYPE_MASK = common dso_local global i32 0, align 4
@PCIE_WM_RC = common dso_local global i32 0, align 4
@PCIE_SYS_CTRL7 = common dso_local global i32 0, align 4
@PCIE_APP_LTSSM_ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pcie_port*)* @histb_pcie_establish_link to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @histb_pcie_establish_link(%struct.pcie_port* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pcie_port*, align 8
  %4 = alloca %struct.dw_pcie*, align 8
  %5 = alloca %struct.histb_pcie*, align 8
  %6 = alloca i32, align 4
  store %struct.pcie_port* %0, %struct.pcie_port** %3, align 8
  %7 = load %struct.pcie_port*, %struct.pcie_port** %3, align 8
  %8 = call %struct.dw_pcie* @to_dw_pcie_from_pp(%struct.pcie_port* %7)
  store %struct.dw_pcie* %8, %struct.dw_pcie** %4, align 8
  %9 = load %struct.dw_pcie*, %struct.dw_pcie** %4, align 8
  %10 = call %struct.histb_pcie* @to_histb_pcie(%struct.dw_pcie* %9)
  store %struct.histb_pcie* %10, %struct.histb_pcie** %5, align 8
  %11 = load %struct.dw_pcie*, %struct.dw_pcie** %4, align 8
  %12 = call i64 @dw_pcie_link_up(%struct.dw_pcie* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %19

14:                                               ; preds = %1
  %15 = load %struct.dw_pcie*, %struct.dw_pcie** %4, align 8
  %16 = getelementptr inbounds %struct.dw_pcie, %struct.dw_pcie* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @dev_info(i32 %17, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %48

19:                                               ; preds = %1
  %20 = load %struct.histb_pcie*, %struct.histb_pcie** %5, align 8
  %21 = load i32, i32* @PCIE_SYS_CTRL0, align 4
  %22 = call i32 @histb_pcie_readl(%struct.histb_pcie* %20, i32 %21)
  store i32 %22, i32* %6, align 4
  %23 = load i32, i32* @PCIE_DEVICE_TYPE_MASK, align 4
  %24 = xor i32 %23, -1
  %25 = load i32, i32* %6, align 4
  %26 = and i32 %25, %24
  store i32 %26, i32* %6, align 4
  %27 = load i32, i32* @PCIE_WM_RC, align 4
  %28 = load i32, i32* %6, align 4
  %29 = or i32 %28, %27
  store i32 %29, i32* %6, align 4
  %30 = load %struct.histb_pcie*, %struct.histb_pcie** %5, align 8
  %31 = load i32, i32* @PCIE_SYS_CTRL0, align 4
  %32 = load i32, i32* %6, align 4
  %33 = call i32 @histb_pcie_writel(%struct.histb_pcie* %30, i32 %31, i32 %32)
  %34 = load %struct.pcie_port*, %struct.pcie_port** %3, align 8
  %35 = call i32 @dw_pcie_setup_rc(%struct.pcie_port* %34)
  %36 = load %struct.histb_pcie*, %struct.histb_pcie** %5, align 8
  %37 = load i32, i32* @PCIE_SYS_CTRL7, align 4
  %38 = call i32 @histb_pcie_readl(%struct.histb_pcie* %36, i32 %37)
  store i32 %38, i32* %6, align 4
  %39 = load i32, i32* @PCIE_APP_LTSSM_ENABLE, align 4
  %40 = load i32, i32* %6, align 4
  %41 = or i32 %40, %39
  store i32 %41, i32* %6, align 4
  %42 = load %struct.histb_pcie*, %struct.histb_pcie** %5, align 8
  %43 = load i32, i32* @PCIE_SYS_CTRL7, align 4
  %44 = load i32, i32* %6, align 4
  %45 = call i32 @histb_pcie_writel(%struct.histb_pcie* %42, i32 %43, i32 %44)
  %46 = load %struct.dw_pcie*, %struct.dw_pcie** %4, align 8
  %47 = call i32 @dw_pcie_wait_for_link(%struct.dw_pcie* %46)
  store i32 %47, i32* %2, align 4
  br label %48

48:                                               ; preds = %19, %14
  %49 = load i32, i32* %2, align 4
  ret i32 %49
}

declare dso_local %struct.dw_pcie* @to_dw_pcie_from_pp(%struct.pcie_port*) #1

declare dso_local %struct.histb_pcie* @to_histb_pcie(%struct.dw_pcie*) #1

declare dso_local i64 @dw_pcie_link_up(%struct.dw_pcie*) #1

declare dso_local i32 @dev_info(i32, i8*) #1

declare dso_local i32 @histb_pcie_readl(%struct.histb_pcie*, i32) #1

declare dso_local i32 @histb_pcie_writel(%struct.histb_pcie*, i32, i32) #1

declare dso_local i32 @dw_pcie_setup_rc(%struct.pcie_port*) #1

declare dso_local i32 @dw_pcie_wait_for_link(%struct.dw_pcie*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
