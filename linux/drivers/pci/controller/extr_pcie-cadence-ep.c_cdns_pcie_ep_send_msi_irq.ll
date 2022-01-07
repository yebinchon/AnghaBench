; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/controller/extr_pcie-cadence-ep.c_cdns_pcie_ep_send_msi_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/controller/extr_pcie-cadence-ep.c_cdns_pcie_ep_send_msi_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdns_pcie_ep = type { i32, i32, i64, i32, %struct.cdns_pcie }
%struct.cdns_pcie = type { i32 }

@CDNS_PCIE_EP_FUNC_MSI_CAP_OFFSET = common dso_local global i64 0, align 8
@PCI_MSI_FLAGS = common dso_local global i64 0, align 8
@PCI_MSI_FLAGS_ENABLE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@PCI_MSI_FLAGS_QSIZE = common dso_local global i32 0, align 4
@PCI_MSI_DATA_64 = common dso_local global i64 0, align 8
@PCI_MSI_ADDRESS_HI = common dso_local global i64 0, align 8
@PCI_MSI_ADDRESS_LO = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cdns_pcie_ep*, i32, i32)* @cdns_pcie_ep_send_msi_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cdns_pcie_ep_send_msi_irq(%struct.cdns_pcie_ep* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.cdns_pcie_ep*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.cdns_pcie*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.cdns_pcie_ep* %0, %struct.cdns_pcie_ep** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %17 = load %struct.cdns_pcie_ep*, %struct.cdns_pcie_ep** %5, align 8
  %18 = getelementptr inbounds %struct.cdns_pcie_ep, %struct.cdns_pcie_ep* %17, i32 0, i32 4
  store %struct.cdns_pcie* %18, %struct.cdns_pcie** %8, align 8
  %19 = load i64, i64* @CDNS_PCIE_EP_FUNC_MSI_CAP_OFFSET, align 8
  store i64 %19, i64* %9, align 8
  store i32 255, i32* %16, align 4
  %20 = load %struct.cdns_pcie*, %struct.cdns_pcie** %8, align 8
  %21 = load i32, i32* %6, align 4
  %22 = load i64, i64* %9, align 8
  %23 = load i64, i64* @PCI_MSI_FLAGS, align 8
  %24 = add nsw i64 %22, %23
  %25 = call i32 @cdns_pcie_ep_fn_readw(%struct.cdns_pcie* %20, i32 %21, i64 %24)
  store i32 %25, i32* %10, align 4
  %26 = load i32, i32* %10, align 4
  %27 = load i32, i32* @PCI_MSI_FLAGS_ENABLE, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %3
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %4, align 4
  br label %138

33:                                               ; preds = %3
  %34 = load i32, i32* %10, align 4
  %35 = load i32, i32* @PCI_MSI_FLAGS_QSIZE, align 4
  %36 = and i32 %34, %35
  %37 = ashr i32 %36, 4
  store i32 %37, i32* %11, align 4
  %38 = load i32, i32* %11, align 4
  %39 = shl i32 1, %38
  store i32 %39, i32* %14, align 4
  %40 = load i32, i32* %7, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %33
  %43 = load i32, i32* %7, align 4
  %44 = load i32, i32* %14, align 4
  %45 = icmp sgt i32 %43, %44
  br i1 %45, label %46, label %49

46:                                               ; preds = %42, %33
  %47 = load i32, i32* @EINVAL, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %4, align 4
  br label %138

49:                                               ; preds = %42
  %50 = load i32, i32* %14, align 4
  %51 = sub nsw i32 %50, 1
  store i32 %51, i32* %13, align 4
  %52 = load %struct.cdns_pcie*, %struct.cdns_pcie** %8, align 8
  %53 = load i32, i32* %6, align 4
  %54 = load i64, i64* %9, align 8
  %55 = load i64, i64* @PCI_MSI_DATA_64, align 8
  %56 = add nsw i64 %54, %55
  %57 = call i32 @cdns_pcie_ep_fn_readw(%struct.cdns_pcie* %52, i32 %53, i64 %56)
  store i32 %57, i32* %12, align 4
  %58 = load i32, i32* %12, align 4
  %59 = load i32, i32* %13, align 4
  %60 = xor i32 %59, -1
  %61 = and i32 %58, %60
  %62 = load i32, i32* %7, align 4
  %63 = sub nsw i32 %62, 1
  %64 = load i32, i32* %13, align 4
  %65 = and i32 %63, %64
  %66 = or i32 %61, %65
  store i32 %66, i32* %12, align 4
  %67 = load %struct.cdns_pcie*, %struct.cdns_pcie** %8, align 8
  %68 = load i32, i32* %6, align 4
  %69 = load i64, i64* %9, align 8
  %70 = load i64, i64* @PCI_MSI_ADDRESS_HI, align 8
  %71 = add nsw i64 %69, %70
  %72 = call i32 @cdns_pcie_ep_fn_readl(%struct.cdns_pcie* %67, i32 %68, i64 %71)
  store i32 %72, i32* %15, align 4
  %73 = load i32, i32* %15, align 4
  %74 = shl i32 %73, 32
  store i32 %74, i32* %15, align 4
  %75 = load %struct.cdns_pcie*, %struct.cdns_pcie** %8, align 8
  %76 = load i32, i32* %6, align 4
  %77 = load i64, i64* %9, align 8
  %78 = load i64, i64* @PCI_MSI_ADDRESS_LO, align 8
  %79 = add nsw i64 %77, %78
  %80 = call i32 @cdns_pcie_ep_fn_readl(%struct.cdns_pcie* %75, i32 %76, i64 %79)
  %81 = load i32, i32* %15, align 4
  %82 = or i32 %81, %80
  store i32 %82, i32* %15, align 4
  %83 = call i32 @GENMASK_ULL(i32 63, i32 2)
  %84 = load i32, i32* %15, align 4
  %85 = and i32 %84, %83
  store i32 %85, i32* %15, align 4
  %86 = load %struct.cdns_pcie_ep*, %struct.cdns_pcie_ep** %5, align 8
  %87 = getelementptr inbounds %struct.cdns_pcie_ep, %struct.cdns_pcie_ep* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = load i32, i32* %15, align 4
  %90 = load i32, i32* %16, align 4
  %91 = xor i32 %90, -1
  %92 = and i32 %89, %91
  %93 = icmp ne i32 %88, %92
  br i1 %93, label %100, label %94

94:                                               ; preds = %49
  %95 = load %struct.cdns_pcie_ep*, %struct.cdns_pcie_ep** %5, align 8
  %96 = getelementptr inbounds %struct.cdns_pcie_ep, %struct.cdns_pcie_ep* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = load i32, i32* %6, align 4
  %99 = icmp ne i32 %97, %98
  br label %100

100:                                              ; preds = %94, %49
  %101 = phi i1 [ true, %49 ], [ %99, %94 ]
  %102 = zext i1 %101 to i32
  %103 = call i64 @unlikely(i32 %102)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %127

105:                                              ; preds = %100
  %106 = load %struct.cdns_pcie*, %struct.cdns_pcie** %8, align 8
  %107 = load i32, i32* %6, align 4
  %108 = load %struct.cdns_pcie_ep*, %struct.cdns_pcie_ep** %5, align 8
  %109 = getelementptr inbounds %struct.cdns_pcie_ep, %struct.cdns_pcie_ep* %108, i32 0, i32 3
  %110 = load i32, i32* %109, align 8
  %111 = load i32, i32* %15, align 4
  %112 = load i32, i32* %16, align 4
  %113 = xor i32 %112, -1
  %114 = and i32 %111, %113
  %115 = load i32, i32* %16, align 4
  %116 = add nsw i32 %115, 1
  %117 = call i32 @cdns_pcie_set_outbound_region(%struct.cdns_pcie* %106, i32 %107, i32 0, i32 0, i32 %110, i32 %114, i32 %116)
  %118 = load i32, i32* %15, align 4
  %119 = load i32, i32* %16, align 4
  %120 = xor i32 %119, -1
  %121 = and i32 %118, %120
  %122 = load %struct.cdns_pcie_ep*, %struct.cdns_pcie_ep** %5, align 8
  %123 = getelementptr inbounds %struct.cdns_pcie_ep, %struct.cdns_pcie_ep* %122, i32 0, i32 0
  store i32 %121, i32* %123, align 8
  %124 = load i32, i32* %6, align 4
  %125 = load %struct.cdns_pcie_ep*, %struct.cdns_pcie_ep** %5, align 8
  %126 = getelementptr inbounds %struct.cdns_pcie_ep, %struct.cdns_pcie_ep* %125, i32 0, i32 1
  store i32 %124, i32* %126, align 4
  br label %127

127:                                              ; preds = %105, %100
  %128 = load i32, i32* %12, align 4
  %129 = load %struct.cdns_pcie_ep*, %struct.cdns_pcie_ep** %5, align 8
  %130 = getelementptr inbounds %struct.cdns_pcie_ep, %struct.cdns_pcie_ep* %129, i32 0, i32 2
  %131 = load i64, i64* %130, align 8
  %132 = load i32, i32* %15, align 4
  %133 = load i32, i32* %16, align 4
  %134 = and i32 %132, %133
  %135 = sext i32 %134 to i64
  %136 = add nsw i64 %131, %135
  %137 = call i32 @writel(i32 %128, i64 %136)
  store i32 0, i32* %4, align 4
  br label %138

138:                                              ; preds = %127, %46, %30
  %139 = load i32, i32* %4, align 4
  ret i32 %139
}

declare dso_local i32 @cdns_pcie_ep_fn_readw(%struct.cdns_pcie*, i32, i64) #1

declare dso_local i32 @cdns_pcie_ep_fn_readl(%struct.cdns_pcie*, i32, i64) #1

declare dso_local i32 @GENMASK_ULL(i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @cdns_pcie_set_outbound_region(%struct.cdns_pcie*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
