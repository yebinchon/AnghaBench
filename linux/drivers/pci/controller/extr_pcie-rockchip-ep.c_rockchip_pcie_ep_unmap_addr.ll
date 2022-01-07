; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/controller/extr_pcie-rockchip-ep.c_rockchip_pcie_ep_unmap_addr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/controller/extr_pcie-rockchip-ep.c_rockchip_pcie_ep_unmap_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_epc = type { i32 }
%struct.rockchip_pcie_ep = type { i32, i64*, i32, %struct.rockchip_pcie }
%struct.rockchip_pcie = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_epc*, i32, i64)* @rockchip_pcie_ep_unmap_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rockchip_pcie_ep_unmap_addr(%struct.pci_epc* %0, i32 %1, i64 %2) #0 {
  %4 = alloca %struct.pci_epc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.rockchip_pcie_ep*, align 8
  %8 = alloca %struct.rockchip_pcie*, align 8
  %9 = alloca i32, align 4
  store %struct.pci_epc* %0, %struct.pci_epc** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 %2, i64* %6, align 8
  %10 = load %struct.pci_epc*, %struct.pci_epc** %4, align 8
  %11 = call %struct.rockchip_pcie_ep* @epc_get_drvdata(%struct.pci_epc* %10)
  store %struct.rockchip_pcie_ep* %11, %struct.rockchip_pcie_ep** %7, align 8
  %12 = load %struct.rockchip_pcie_ep*, %struct.rockchip_pcie_ep** %7, align 8
  %13 = getelementptr inbounds %struct.rockchip_pcie_ep, %struct.rockchip_pcie_ep* %12, i32 0, i32 3
  store %struct.rockchip_pcie* %13, %struct.rockchip_pcie** %8, align 8
  store i32 0, i32* %9, align 4
  br label %14

14:                                               ; preds = %33, %3
  %15 = load i32, i32* %9, align 4
  %16 = load %struct.rockchip_pcie_ep*, %struct.rockchip_pcie_ep** %7, align 8
  %17 = getelementptr inbounds %struct.rockchip_pcie_ep, %struct.rockchip_pcie_ep* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = sub nsw i32 %18, 1
  %20 = icmp slt i32 %15, %19
  br i1 %20, label %21, label %36

21:                                               ; preds = %14
  %22 = load %struct.rockchip_pcie_ep*, %struct.rockchip_pcie_ep** %7, align 8
  %23 = getelementptr inbounds %struct.rockchip_pcie_ep, %struct.rockchip_pcie_ep* %22, i32 0, i32 1
  %24 = load i64*, i64** %23, align 8
  %25 = load i32, i32* %9, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i64, i64* %24, i64 %26
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* %6, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %21
  br label %36

32:                                               ; preds = %21
  br label %33

33:                                               ; preds = %32
  %34 = load i32, i32* %9, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %9, align 4
  br label %14

36:                                               ; preds = %31, %14
  %37 = load i32, i32* %9, align 4
  %38 = load %struct.rockchip_pcie_ep*, %struct.rockchip_pcie_ep** %7, align 8
  %39 = getelementptr inbounds %struct.rockchip_pcie_ep, %struct.rockchip_pcie_ep* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = sub nsw i32 %40, 1
  %42 = icmp eq i32 %37, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %36
  br label %58

44:                                               ; preds = %36
  %45 = load %struct.rockchip_pcie*, %struct.rockchip_pcie** %8, align 8
  %46 = load i32, i32* %9, align 4
  %47 = call i32 @rockchip_pcie_clear_ep_ob_atu(%struct.rockchip_pcie* %45, i32 %46)
  %48 = load %struct.rockchip_pcie_ep*, %struct.rockchip_pcie_ep** %7, align 8
  %49 = getelementptr inbounds %struct.rockchip_pcie_ep, %struct.rockchip_pcie_ep* %48, i32 0, i32 1
  %50 = load i64*, i64** %49, align 8
  %51 = load i32, i32* %9, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i64, i64* %50, i64 %52
  store i64 0, i64* %53, align 8
  %54 = load i32, i32* %9, align 4
  %55 = load %struct.rockchip_pcie_ep*, %struct.rockchip_pcie_ep** %7, align 8
  %56 = getelementptr inbounds %struct.rockchip_pcie_ep, %struct.rockchip_pcie_ep* %55, i32 0, i32 2
  %57 = call i32 @clear_bit(i32 %54, i32* %56)
  br label %58

58:                                               ; preds = %44, %43
  ret void
}

declare dso_local %struct.rockchip_pcie_ep* @epc_get_drvdata(%struct.pci_epc*) #1

declare dso_local i32 @rockchip_pcie_clear_ep_ob_atu(%struct.rockchip_pcie*, i32) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
