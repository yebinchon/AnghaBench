; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/controller/extr_pcie-cadence-ep.c_cdns_pcie_ep_map_addr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/controller/extr_pcie-cadence-ep.c_cdns_pcie_ep_map_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_epc = type { i32 }
%struct.cdns_pcie_ep = type { i32, i32*, i32, %struct.cdns_pcie }
%struct.cdns_pcie = type { i32 }

@BITS_PER_LONG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"no free outbound region\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_epc*, i32, i32, i32, i64)* @cdns_pcie_ep_map_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cdns_pcie_ep_map_addr(%struct.pci_epc* %0, i32 %1, i32 %2, i32 %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.pci_epc*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca %struct.cdns_pcie_ep*, align 8
  %13 = alloca %struct.cdns_pcie*, align 8
  %14 = alloca i32, align 4
  store %struct.pci_epc* %0, %struct.pci_epc** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i64 %4, i64* %11, align 8
  %15 = load %struct.pci_epc*, %struct.pci_epc** %7, align 8
  %16 = call %struct.cdns_pcie_ep* @epc_get_drvdata(%struct.pci_epc* %15)
  store %struct.cdns_pcie_ep* %16, %struct.cdns_pcie_ep** %12, align 8
  %17 = load %struct.cdns_pcie_ep*, %struct.cdns_pcie_ep** %12, align 8
  %18 = getelementptr inbounds %struct.cdns_pcie_ep, %struct.cdns_pcie_ep* %17, i32 0, i32 3
  store %struct.cdns_pcie* %18, %struct.cdns_pcie** %13, align 8
  %19 = load %struct.cdns_pcie_ep*, %struct.cdns_pcie_ep** %12, align 8
  %20 = getelementptr inbounds %struct.cdns_pcie_ep, %struct.cdns_pcie_ep* %19, i32 0, i32 2
  %21 = load i32, i32* @BITS_PER_LONG, align 4
  %22 = sext i32 %21 to i64
  %23 = mul i64 4, %22
  %24 = trunc i64 %23 to i32
  %25 = call i32 @find_first_zero_bit(i32* %20, i32 %24)
  store i32 %25, i32* %14, align 4
  %26 = load i32, i32* %14, align 4
  %27 = load %struct.cdns_pcie_ep*, %struct.cdns_pcie_ep** %12, align 8
  %28 = getelementptr inbounds %struct.cdns_pcie_ep, %struct.cdns_pcie_ep* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = sub nsw i32 %29, 1
  %31 = icmp sge i32 %26, %30
  br i1 %31, label %32, label %38

32:                                               ; preds = %5
  %33 = load %struct.pci_epc*, %struct.pci_epc** %7, align 8
  %34 = getelementptr inbounds %struct.pci_epc, %struct.pci_epc* %33, i32 0, i32 0
  %35 = call i32 @dev_err(i32* %34, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %6, align 4
  br label %57

38:                                               ; preds = %5
  %39 = load %struct.cdns_pcie*, %struct.cdns_pcie** %13, align 8
  %40 = load i32, i32* %8, align 4
  %41 = load i32, i32* %14, align 4
  %42 = load i32, i32* %9, align 4
  %43 = load i32, i32* %10, align 4
  %44 = load i64, i64* %11, align 8
  %45 = call i32 @cdns_pcie_set_outbound_region(%struct.cdns_pcie* %39, i32 %40, i32 %41, i32 0, i32 %42, i32 %43, i64 %44)
  %46 = load i32, i32* %14, align 4
  %47 = load %struct.cdns_pcie_ep*, %struct.cdns_pcie_ep** %12, align 8
  %48 = getelementptr inbounds %struct.cdns_pcie_ep, %struct.cdns_pcie_ep* %47, i32 0, i32 2
  %49 = call i32 @set_bit(i32 %46, i32* %48)
  %50 = load i32, i32* %9, align 4
  %51 = load %struct.cdns_pcie_ep*, %struct.cdns_pcie_ep** %12, align 8
  %52 = getelementptr inbounds %struct.cdns_pcie_ep, %struct.cdns_pcie_ep* %51, i32 0, i32 1
  %53 = load i32*, i32** %52, align 8
  %54 = load i32, i32* %14, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %53, i64 %55
  store i32 %50, i32* %56, align 4
  store i32 0, i32* %6, align 4
  br label %57

57:                                               ; preds = %38, %32
  %58 = load i32, i32* %6, align 4
  ret i32 %58
}

declare dso_local %struct.cdns_pcie_ep* @epc_get_drvdata(%struct.pci_epc*) #1

declare dso_local i32 @find_first_zero_bit(i32*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @cdns_pcie_set_outbound_region(%struct.cdns_pcie*, i32, i32, i32, i32, i32, i64) #1

declare dso_local i32 @set_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
