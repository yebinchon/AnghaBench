; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/controller/extr_pcie-mediatek.c_mtk_pcie_check_cfg_cpld.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/controller/extr_pcie-mediatek.c_mtk_pcie_check_cfg_cpld.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtk_pcie_port = type { i64 }

@PCIE_APP_TLP_REQ = common dso_local global i64 0, align 8
@APP_CFG_REQ = common dso_local global i32 0, align 4
@USEC_PER_MSEC = common dso_local global i32 0, align 4
@PCIBIOS_SET_FAILED = common dso_local global i32 0, align 4
@APP_CPL_STATUS = common dso_local global i32 0, align 4
@PCIBIOS_SUCCESSFUL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mtk_pcie_port*)* @mtk_pcie_check_cfg_cpld to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtk_pcie_check_cfg_cpld(%struct.mtk_pcie_port* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mtk_pcie_port*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.mtk_pcie_port* %0, %struct.mtk_pcie_port** %3, align 8
  %6 = load %struct.mtk_pcie_port*, %struct.mtk_pcie_port** %3, align 8
  %7 = getelementptr inbounds %struct.mtk_pcie_port, %struct.mtk_pcie_port* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @PCIE_APP_TLP_REQ, align 8
  %10 = add nsw i64 %8, %9
  %11 = load i32, i32* %4, align 4
  %12 = load i32, i32* %4, align 4
  %13 = load i32, i32* @APP_CFG_REQ, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  %16 = xor i1 %15, true
  %17 = zext i1 %16 to i32
  %18 = load i32, i32* @USEC_PER_MSEC, align 4
  %19 = mul nsw i32 100, %18
  %20 = call i32 @readl_poll_timeout_atomic(i64 %10, i32 %11, i32 %17, i32 10, i32 %19)
  store i32 %20, i32* %5, align 4
  %21 = load i32, i32* %5, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %1
  %24 = load i32, i32* @PCIBIOS_SET_FAILED, align 4
  store i32 %24, i32* %2, align 4
  br label %39

25:                                               ; preds = %1
  %26 = load %struct.mtk_pcie_port*, %struct.mtk_pcie_port** %3, align 8
  %27 = getelementptr inbounds %struct.mtk_pcie_port, %struct.mtk_pcie_port* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @PCIE_APP_TLP_REQ, align 8
  %30 = add nsw i64 %28, %29
  %31 = call i32 @readl(i64 %30)
  %32 = load i32, i32* @APP_CPL_STATUS, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %25
  %36 = load i32, i32* @PCIBIOS_SET_FAILED, align 4
  store i32 %36, i32* %2, align 4
  br label %39

37:                                               ; preds = %25
  %38 = load i32, i32* @PCIBIOS_SUCCESSFUL, align 4
  store i32 %38, i32* %2, align 4
  br label %39

39:                                               ; preds = %37, %35, %23
  %40 = load i32, i32* %2, align 4
  ret i32 %40
}

declare dso_local i32 @readl_poll_timeout_atomic(i64, i32, i32, i32, i32) #1

declare dso_local i32 @readl(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
