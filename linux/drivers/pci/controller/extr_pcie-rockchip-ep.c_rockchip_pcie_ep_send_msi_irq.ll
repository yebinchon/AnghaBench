; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/controller/extr_pcie-rockchip-ep.c_rockchip_pcie_ep_send_msi_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/controller/extr_pcie-rockchip-ep.c_rockchip_pcie_ep_send_msi_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rockchip_pcie_ep = type { i32, i32, i64, i32, i64, %struct.rockchip_pcie }
%struct.rockchip_pcie = type { i32 }

@ROCKCHIP_PCIE_EP_MSI_CTRL_REG = common dso_local global i64 0, align 8
@ROCKCHIP_PCIE_EP_MSI_CTRL_ME = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ROCKCHIP_PCIE_EP_MSI_CTRL_MME_MASK = common dso_local global i32 0, align 4
@ROCKCHIP_PCIE_EP_MSI_CTRL_MME_OFFSET = common dso_local global i32 0, align 4
@PCI_MSI_DATA_64 = common dso_local global i64 0, align 8
@PCI_MSI_ADDRESS_HI = common dso_local global i64 0, align 8
@PCI_MSI_ADDRESS_LO = common dso_local global i64 0, align 8
@AXI_WRAPPER_MEM_WRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rockchip_pcie_ep*, i32, i32)* @rockchip_pcie_ep_send_msi_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rockchip_pcie_ep_send_msi_irq(%struct.rockchip_pcie_ep* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.rockchip_pcie_ep*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.rockchip_pcie*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.rockchip_pcie_ep* %0, %struct.rockchip_pcie_ep** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %16 = load %struct.rockchip_pcie_ep*, %struct.rockchip_pcie_ep** %5, align 8
  %17 = getelementptr inbounds %struct.rockchip_pcie_ep, %struct.rockchip_pcie_ep* %16, i32 0, i32 5
  store %struct.rockchip_pcie* %17, %struct.rockchip_pcie** %8, align 8
  store i32 255, i32* %15, align 4
  %18 = load %struct.rockchip_pcie_ep*, %struct.rockchip_pcie_ep** %5, align 8
  %19 = getelementptr inbounds %struct.rockchip_pcie_ep, %struct.rockchip_pcie_ep* %18, i32 0, i32 5
  %20 = load i32, i32* %6, align 4
  %21 = call i64 @ROCKCHIP_PCIE_EP_FUNC_BASE(i32 %20)
  %22 = load i64, i64* @ROCKCHIP_PCIE_EP_MSI_CTRL_REG, align 8
  %23 = add nsw i64 %21, %22
  %24 = call i32 @rockchip_pcie_read(%struct.rockchip_pcie* %19, i64 %23)
  store i32 %24, i32* %9, align 4
  %25 = load i32, i32* %9, align 4
  %26 = load i32, i32* @ROCKCHIP_PCIE_EP_MSI_CTRL_ME, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %3
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %4, align 4
  br label %149

32:                                               ; preds = %3
  %33 = load i32, i32* %9, align 4
  %34 = load i32, i32* @ROCKCHIP_PCIE_EP_MSI_CTRL_MME_MASK, align 4
  %35 = and i32 %33, %34
  %36 = load i32, i32* @ROCKCHIP_PCIE_EP_MSI_CTRL_MME_OFFSET, align 4
  %37 = ashr i32 %35, %36
  store i32 %37, i32* %10, align 4
  %38 = load i32, i32* %10, align 4
  %39 = shl i32 1, %38
  store i32 %39, i32* %13, align 4
  %40 = load i32, i32* %7, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %32
  %43 = load i32, i32* %7, align 4
  %44 = load i32, i32* %13, align 4
  %45 = icmp sgt i32 %43, %44
  br i1 %45, label %46, label %49

46:                                               ; preds = %42, %32
  %47 = load i32, i32* @EINVAL, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %4, align 4
  br label %149

49:                                               ; preds = %42
  %50 = load i32, i32* %13, align 4
  %51 = sub nsw i32 %50, 1
  store i32 %51, i32* %12, align 4
  %52 = load %struct.rockchip_pcie*, %struct.rockchip_pcie** %8, align 8
  %53 = load i32, i32* %6, align 4
  %54 = call i64 @ROCKCHIP_PCIE_EP_FUNC_BASE(i32 %53)
  %55 = load i64, i64* @ROCKCHIP_PCIE_EP_MSI_CTRL_REG, align 8
  %56 = add nsw i64 %54, %55
  %57 = load i64, i64* @PCI_MSI_DATA_64, align 8
  %58 = add nsw i64 %56, %57
  %59 = call i32 @rockchip_pcie_read(%struct.rockchip_pcie* %52, i64 %58)
  store i32 %59, i32* %11, align 4
  %60 = load i32, i32* %11, align 4
  %61 = load i32, i32* %12, align 4
  %62 = xor i32 %61, -1
  %63 = and i32 %60, %62
  %64 = load i32, i32* %7, align 4
  %65 = sub nsw i32 %64, 1
  %66 = load i32, i32* %12, align 4
  %67 = and i32 %65, %66
  %68 = or i32 %63, %67
  store i32 %68, i32* %11, align 4
  %69 = load %struct.rockchip_pcie*, %struct.rockchip_pcie** %8, align 8
  %70 = load i32, i32* %6, align 4
  %71 = call i64 @ROCKCHIP_PCIE_EP_FUNC_BASE(i32 %70)
  %72 = load i64, i64* @ROCKCHIP_PCIE_EP_MSI_CTRL_REG, align 8
  %73 = add nsw i64 %71, %72
  %74 = load i64, i64* @PCI_MSI_ADDRESS_HI, align 8
  %75 = add nsw i64 %73, %74
  %76 = call i32 @rockchip_pcie_read(%struct.rockchip_pcie* %69, i64 %75)
  store i32 %76, i32* %14, align 4
  %77 = load i32, i32* %14, align 4
  %78 = shl i32 %77, 32
  store i32 %78, i32* %14, align 4
  %79 = load %struct.rockchip_pcie*, %struct.rockchip_pcie** %8, align 8
  %80 = load i32, i32* %6, align 4
  %81 = call i64 @ROCKCHIP_PCIE_EP_FUNC_BASE(i32 %80)
  %82 = load i64, i64* @ROCKCHIP_PCIE_EP_MSI_CTRL_REG, align 8
  %83 = add nsw i64 %81, %82
  %84 = load i64, i64* @PCI_MSI_ADDRESS_LO, align 8
  %85 = add nsw i64 %83, %84
  %86 = call i32 @rockchip_pcie_read(%struct.rockchip_pcie* %79, i64 %85)
  %87 = load i32, i32* %14, align 4
  %88 = or i32 %87, %86
  store i32 %88, i32* %14, align 4
  %89 = call i32 @GENMASK_ULL(i32 63, i32 2)
  %90 = load i32, i32* %14, align 4
  %91 = and i32 %90, %89
  store i32 %91, i32* %14, align 4
  %92 = load %struct.rockchip_pcie_ep*, %struct.rockchip_pcie_ep** %5, align 8
  %93 = getelementptr inbounds %struct.rockchip_pcie_ep, %struct.rockchip_pcie_ep* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = load i32, i32* %14, align 4
  %96 = load i32, i32* %15, align 4
  %97 = xor i32 %96, -1
  %98 = and i32 %95, %97
  %99 = icmp ne i32 %94, %98
  br i1 %99, label %106, label %100

100:                                              ; preds = %49
  %101 = load %struct.rockchip_pcie_ep*, %struct.rockchip_pcie_ep** %5, align 8
  %102 = getelementptr inbounds %struct.rockchip_pcie_ep, %struct.rockchip_pcie_ep* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = load i32, i32* %6, align 4
  %105 = icmp ne i32 %103, %104
  br label %106

106:                                              ; preds = %100, %49
  %107 = phi i1 [ true, %49 ], [ %105, %100 ]
  %108 = zext i1 %107 to i32
  %109 = call i64 @unlikely(i32 %108)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %138

111:                                              ; preds = %106
  %112 = load %struct.rockchip_pcie*, %struct.rockchip_pcie** %8, align 8
  %113 = load i32, i32* %6, align 4
  %114 = load %struct.rockchip_pcie_ep*, %struct.rockchip_pcie_ep** %5, align 8
  %115 = getelementptr inbounds %struct.rockchip_pcie_ep, %struct.rockchip_pcie_ep* %114, i32 0, i32 4
  %116 = load i64, i64* %115, align 8
  %117 = sub nsw i64 %116, 1
  %118 = load i32, i32* @AXI_WRAPPER_MEM_WRITE, align 4
  %119 = load %struct.rockchip_pcie_ep*, %struct.rockchip_pcie_ep** %5, align 8
  %120 = getelementptr inbounds %struct.rockchip_pcie_ep, %struct.rockchip_pcie_ep* %119, i32 0, i32 3
  %121 = load i32, i32* %120, align 8
  %122 = load i32, i32* %14, align 4
  %123 = load i32, i32* %15, align 4
  %124 = xor i32 %123, -1
  %125 = and i32 %122, %124
  %126 = load i32, i32* %15, align 4
  %127 = add nsw i32 %126, 1
  %128 = call i32 @rockchip_pcie_prog_ep_ob_atu(%struct.rockchip_pcie* %112, i32 %113, i64 %117, i32 %118, i32 %121, i32 %125, i32 %127)
  %129 = load i32, i32* %14, align 4
  %130 = load i32, i32* %15, align 4
  %131 = xor i32 %130, -1
  %132 = and i32 %129, %131
  %133 = load %struct.rockchip_pcie_ep*, %struct.rockchip_pcie_ep** %5, align 8
  %134 = getelementptr inbounds %struct.rockchip_pcie_ep, %struct.rockchip_pcie_ep* %133, i32 0, i32 0
  store i32 %132, i32* %134, align 8
  %135 = load i32, i32* %6, align 4
  %136 = load %struct.rockchip_pcie_ep*, %struct.rockchip_pcie_ep** %5, align 8
  %137 = getelementptr inbounds %struct.rockchip_pcie_ep, %struct.rockchip_pcie_ep* %136, i32 0, i32 1
  store i32 %135, i32* %137, align 4
  br label %138

138:                                              ; preds = %111, %106
  %139 = load i32, i32* %11, align 4
  %140 = load %struct.rockchip_pcie_ep*, %struct.rockchip_pcie_ep** %5, align 8
  %141 = getelementptr inbounds %struct.rockchip_pcie_ep, %struct.rockchip_pcie_ep* %140, i32 0, i32 2
  %142 = load i64, i64* %141, align 8
  %143 = load i32, i32* %14, align 4
  %144 = load i32, i32* %15, align 4
  %145 = and i32 %143, %144
  %146 = sext i32 %145 to i64
  %147 = add nsw i64 %142, %146
  %148 = call i32 @writew(i32 %139, i64 %147)
  store i32 0, i32* %4, align 4
  br label %149

149:                                              ; preds = %138, %46, %29
  %150 = load i32, i32* %4, align 4
  ret i32 %150
}

declare dso_local i32 @rockchip_pcie_read(%struct.rockchip_pcie*, i64) #1

declare dso_local i64 @ROCKCHIP_PCIE_EP_FUNC_BASE(i32) #1

declare dso_local i32 @GENMASK_ULL(i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @rockchip_pcie_prog_ep_ob_atu(%struct.rockchip_pcie*, i32, i64, i32, i32, i32, i32) #1

declare dso_local i32 @writew(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
