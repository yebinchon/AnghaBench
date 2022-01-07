; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/controller/dwc/extr_pcie-tegra194.c_tegra_pcie_bpmp_set_ctrl_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/controller/dwc/extr_pcie-tegra194.c_tegra_pcie_bpmp_set_ctrl_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra_pcie_dw = type { i32, i32 }
%struct.mrq_uphy_response = type { %struct.TYPE_6__, %struct.TYPE_5__, i32, %struct.TYPE_4__, i32 }
%struct.TYPE_6__ = type { i32, %struct.tegra_bpmp_message* }
%struct.tegra_bpmp_message = type { %struct.TYPE_6__, %struct.TYPE_5__, i32, %struct.TYPE_4__, i32 }
%struct.TYPE_5__ = type { i32, %struct.tegra_bpmp_message* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.mrq_uphy_request = type { %struct.TYPE_6__, %struct.TYPE_5__, i32, %struct.TYPE_4__, i32 }

@CMD_UPHY_PCIE_CONTROLLER_STATE = common dso_local global i32 0, align 4
@MRQ_UPHY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tegra_pcie_dw*, i32)* @tegra_pcie_bpmp_set_ctrl_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tegra_pcie_bpmp_set_ctrl_state(%struct.tegra_pcie_dw* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tegra_pcie_dw*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.mrq_uphy_response, align 8
  %7 = alloca %struct.tegra_bpmp_message, align 8
  %8 = alloca %struct.mrq_uphy_request, align 8
  store %struct.tegra_pcie_dw* %0, %struct.tegra_pcie_dw** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.tegra_pcie_dw*, %struct.tegra_pcie_dw** %4, align 8
  %10 = getelementptr inbounds %struct.tegra_pcie_dw, %struct.tegra_pcie_dw* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp eq i32 %11, 5
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %46

14:                                               ; preds = %2
  %15 = bitcast %struct.mrq_uphy_request* %8 to %struct.tegra_bpmp_message*
  %16 = call i32 @memset(%struct.tegra_bpmp_message* %15, i32 0, i32 48)
  %17 = bitcast %struct.mrq_uphy_response* %6 to %struct.tegra_bpmp_message*
  %18 = call i32 @memset(%struct.tegra_bpmp_message* %17, i32 0, i32 48)
  %19 = load i32, i32* @CMD_UPHY_PCIE_CONTROLLER_STATE, align 4
  %20 = getelementptr inbounds %struct.mrq_uphy_request, %struct.mrq_uphy_request* %8, i32 0, i32 4
  store i32 %19, i32* %20, align 4
  %21 = load %struct.tegra_pcie_dw*, %struct.tegra_pcie_dw** %4, align 8
  %22 = getelementptr inbounds %struct.tegra_pcie_dw, %struct.tegra_pcie_dw* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = getelementptr inbounds %struct.mrq_uphy_request, %struct.mrq_uphy_request* %8, i32 0, i32 3
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 4
  %26 = load i32, i32* %5, align 4
  %27 = getelementptr inbounds %struct.mrq_uphy_request, %struct.mrq_uphy_request* %8, i32 0, i32 3
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 1
  store i32 %26, i32* %28, align 4
  %29 = call i32 @memset(%struct.tegra_bpmp_message* %7, i32 0, i32 48)
  %30 = load i32, i32* @MRQ_UPHY, align 4
  %31 = getelementptr inbounds %struct.tegra_bpmp_message, %struct.tegra_bpmp_message* %7, i32 0, i32 2
  store i32 %30, i32* %31, align 8
  %32 = bitcast %struct.mrq_uphy_request* %8 to %struct.tegra_bpmp_message*
  %33 = getelementptr inbounds %struct.tegra_bpmp_message, %struct.tegra_bpmp_message* %7, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 1
  store %struct.tegra_bpmp_message* %32, %struct.tegra_bpmp_message** %34, align 8
  %35 = getelementptr inbounds %struct.tegra_bpmp_message, %struct.tegra_bpmp_message* %7, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  store i32 48, i32* %36, align 8
  %37 = bitcast %struct.mrq_uphy_response* %6 to %struct.tegra_bpmp_message*
  %38 = getelementptr inbounds %struct.tegra_bpmp_message, %struct.tegra_bpmp_message* %7, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 1
  store %struct.tegra_bpmp_message* %37, %struct.tegra_bpmp_message** %39, align 8
  %40 = getelementptr inbounds %struct.tegra_bpmp_message, %struct.tegra_bpmp_message* %7, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  store i32 48, i32* %41, align 8
  %42 = load %struct.tegra_pcie_dw*, %struct.tegra_pcie_dw** %4, align 8
  %43 = getelementptr inbounds %struct.tegra_pcie_dw, %struct.tegra_pcie_dw* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @tegra_bpmp_transfer(i32 %44, %struct.tegra_bpmp_message* %7)
  store i32 %45, i32* %3, align 4
  br label %46

46:                                               ; preds = %14, %13
  %47 = load i32, i32* %3, align 4
  ret i32 %47
}

declare dso_local i32 @memset(%struct.tegra_bpmp_message*, i32, i32) #1

declare dso_local i32 @tegra_bpmp_transfer(i32, %struct.tegra_bpmp_message*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
