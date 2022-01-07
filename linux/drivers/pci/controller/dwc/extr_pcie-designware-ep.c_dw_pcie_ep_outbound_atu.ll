; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/controller/dwc/extr_pcie-designware-ep.c_dw_pcie_ep_outbound_atu.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/controller/dwc/extr_pcie-designware-ep.c_dw_pcie_ep_outbound_atu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dw_pcie_ep = type { i64, i32*, i32 }
%struct.dw_pcie = type { i32 }

@.str = private unnamed_addr constant [25 x i8] c"No free outbound window\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@PCIE_ATU_TYPE_MEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dw_pcie_ep*, i32, i32, i64)* @dw_pcie_ep_outbound_atu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dw_pcie_ep_outbound_atu(%struct.dw_pcie_ep* %0, i32 %1, i32 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.dw_pcie_ep*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.dw_pcie*, align 8
  store %struct.dw_pcie_ep* %0, %struct.dw_pcie_ep** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i64 %3, i64* %9, align 8
  %12 = load %struct.dw_pcie_ep*, %struct.dw_pcie_ep** %6, align 8
  %13 = call %struct.dw_pcie* @to_dw_pcie_from_ep(%struct.dw_pcie_ep* %12)
  store %struct.dw_pcie* %13, %struct.dw_pcie** %11, align 8
  %14 = load %struct.dw_pcie_ep*, %struct.dw_pcie_ep** %6, align 8
  %15 = getelementptr inbounds %struct.dw_pcie_ep, %struct.dw_pcie_ep* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 8
  %17 = load %struct.dw_pcie_ep*, %struct.dw_pcie_ep** %6, align 8
  %18 = getelementptr inbounds %struct.dw_pcie_ep, %struct.dw_pcie_ep* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = call i64 @find_first_zero_bit(i32 %16, i64 %19)
  store i64 %20, i64* %10, align 8
  %21 = load i64, i64* %10, align 8
  %22 = load %struct.dw_pcie_ep*, %struct.dw_pcie_ep** %6, align 8
  %23 = getelementptr inbounds %struct.dw_pcie_ep, %struct.dw_pcie_ep* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp uge i64 %21, %24
  br i1 %25, label %26, label %33

26:                                               ; preds = %4
  %27 = load %struct.dw_pcie*, %struct.dw_pcie** %11, align 8
  %28 = getelementptr inbounds %struct.dw_pcie, %struct.dw_pcie* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @dev_err(i32 %29, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %5, align 4
  br label %52

33:                                               ; preds = %4
  %34 = load %struct.dw_pcie*, %struct.dw_pcie** %11, align 8
  %35 = load i64, i64* %10, align 8
  %36 = load i32, i32* @PCIE_ATU_TYPE_MEM, align 4
  %37 = load i32, i32* %7, align 4
  %38 = load i32, i32* %8, align 4
  %39 = load i64, i64* %9, align 8
  %40 = call i32 @dw_pcie_prog_outbound_atu(%struct.dw_pcie* %34, i64 %35, i32 %36, i32 %37, i32 %38, i64 %39)
  %41 = load i64, i64* %10, align 8
  %42 = load %struct.dw_pcie_ep*, %struct.dw_pcie_ep** %6, align 8
  %43 = getelementptr inbounds %struct.dw_pcie_ep, %struct.dw_pcie_ep* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @set_bit(i64 %41, i32 %44)
  %46 = load i32, i32* %7, align 4
  %47 = load %struct.dw_pcie_ep*, %struct.dw_pcie_ep** %6, align 8
  %48 = getelementptr inbounds %struct.dw_pcie_ep, %struct.dw_pcie_ep* %47, i32 0, i32 1
  %49 = load i32*, i32** %48, align 8
  %50 = load i64, i64* %10, align 8
  %51 = getelementptr inbounds i32, i32* %49, i64 %50
  store i32 %46, i32* %51, align 4
  store i32 0, i32* %5, align 4
  br label %52

52:                                               ; preds = %33, %26
  %53 = load i32, i32* %5, align 4
  ret i32 %53
}

declare dso_local %struct.dw_pcie* @to_dw_pcie_from_ep(%struct.dw_pcie_ep*) #1

declare dso_local i64 @find_first_zero_bit(i32, i64) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @dw_pcie_prog_outbound_atu(%struct.dw_pcie*, i64, i32, i32, i32, i64) #1

declare dso_local i32 @set_bit(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
