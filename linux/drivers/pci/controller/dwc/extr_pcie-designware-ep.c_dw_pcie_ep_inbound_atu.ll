; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/controller/dwc/extr_pcie-designware-ep.c_dw_pcie_ep_inbound_atu.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/controller/dwc/extr_pcie-designware-ep.c_dw_pcie_ep_inbound_atu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dw_pcie_ep = type { i64, i32, i64* }
%struct.dw_pcie = type { i32 }

@.str = private unnamed_addr constant [24 x i8] c"No free inbound window\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"Failed to program IB window\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dw_pcie_ep*, i32, i32, i32)* @dw_pcie_ep_inbound_atu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dw_pcie_ep_inbound_atu(%struct.dw_pcie_ep* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.dw_pcie_ep*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca %struct.dw_pcie*, align 8
  store %struct.dw_pcie_ep* %0, %struct.dw_pcie_ep** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %13 = load %struct.dw_pcie_ep*, %struct.dw_pcie_ep** %6, align 8
  %14 = call %struct.dw_pcie* @to_dw_pcie_from_ep(%struct.dw_pcie_ep* %13)
  store %struct.dw_pcie* %14, %struct.dw_pcie** %12, align 8
  %15 = load %struct.dw_pcie_ep*, %struct.dw_pcie_ep** %6, align 8
  %16 = getelementptr inbounds %struct.dw_pcie_ep, %struct.dw_pcie_ep* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = load %struct.dw_pcie_ep*, %struct.dw_pcie_ep** %6, align 8
  %19 = getelementptr inbounds %struct.dw_pcie_ep, %struct.dw_pcie_ep* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = call i64 @find_first_zero_bit(i32 %17, i64 %20)
  store i64 %21, i64* %11, align 8
  %22 = load i64, i64* %11, align 8
  %23 = load %struct.dw_pcie_ep*, %struct.dw_pcie_ep** %6, align 8
  %24 = getelementptr inbounds %struct.dw_pcie_ep, %struct.dw_pcie_ep* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp sge i64 %22, %25
  br i1 %26, label %27, label %34

27:                                               ; preds = %4
  %28 = load %struct.dw_pcie*, %struct.dw_pcie** %12, align 8
  %29 = getelementptr inbounds %struct.dw_pcie, %struct.dw_pcie* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @dev_err(i32 %30, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %5, align 4
  br label %62

34:                                               ; preds = %4
  %35 = load %struct.dw_pcie*, %struct.dw_pcie** %12, align 8
  %36 = load i64, i64* %11, align 8
  %37 = load i32, i32* %7, align 4
  %38 = load i32, i32* %8, align 4
  %39 = load i32, i32* %9, align 4
  %40 = call i32 @dw_pcie_prog_inbound_atu(%struct.dw_pcie* %35, i64 %36, i32 %37, i32 %38, i32 %39)
  store i32 %40, i32* %10, align 4
  %41 = load i32, i32* %10, align 4
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %43, label %49

43:                                               ; preds = %34
  %44 = load %struct.dw_pcie*, %struct.dw_pcie** %12, align 8
  %45 = getelementptr inbounds %struct.dw_pcie, %struct.dw_pcie* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @dev_err(i32 %46, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %48 = load i32, i32* %10, align 4
  store i32 %48, i32* %5, align 4
  br label %62

49:                                               ; preds = %34
  %50 = load i64, i64* %11, align 8
  %51 = load %struct.dw_pcie_ep*, %struct.dw_pcie_ep** %6, align 8
  %52 = getelementptr inbounds %struct.dw_pcie_ep, %struct.dw_pcie_ep* %51, i32 0, i32 2
  %53 = load i64*, i64** %52, align 8
  %54 = load i32, i32* %7, align 4
  %55 = zext i32 %54 to i64
  %56 = getelementptr inbounds i64, i64* %53, i64 %55
  store i64 %50, i64* %56, align 8
  %57 = load i64, i64* %11, align 8
  %58 = load %struct.dw_pcie_ep*, %struct.dw_pcie_ep** %6, align 8
  %59 = getelementptr inbounds %struct.dw_pcie_ep, %struct.dw_pcie_ep* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @set_bit(i64 %57, i32 %60)
  store i32 0, i32* %5, align 4
  br label %62

62:                                               ; preds = %49, %43, %27
  %63 = load i32, i32* %5, align 4
  ret i32 %63
}

declare dso_local %struct.dw_pcie* @to_dw_pcie_from_ep(%struct.dw_pcie_ep*) #1

declare dso_local i64 @find_first_zero_bit(i32, i64) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @dw_pcie_prog_inbound_atu(%struct.dw_pcie*, i64, i32, i32, i32) #1

declare dso_local i32 @set_bit(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
