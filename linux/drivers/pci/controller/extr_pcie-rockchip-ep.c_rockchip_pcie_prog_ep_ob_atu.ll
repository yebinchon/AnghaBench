; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/controller/extr_pcie-rockchip-ep.c_rockchip_pcie_prog_ep_ob_atu.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/controller/extr_pcie-rockchip-ep.c_rockchip_pcie_prog_ep_ob_atu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rockchip_pcie = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@AXI_WRAPPER_NOR_MSG = common dso_local global i32 0, align 4
@PCIE_CORE_OB_REGION_ADDR0_NUM_BITS = common dso_local global i32 0, align 4
@PCIE_CORE_OB_REGION_ADDR0_LO_ADDR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rockchip_pcie*, i32, i32, i32, i64, i64, i64)* @rockchip_pcie_prog_ep_ob_atu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rockchip_pcie_prog_ep_ob_atu(%struct.rockchip_pcie* %0, i32 %1, i32 %2, i32 %3, i64 %4, i64 %5, i64 %6) #0 {
  %8 = alloca %struct.rockchip_pcie*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store %struct.rockchip_pcie* %0, %struct.rockchip_pcie** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i64 %4, i64* %12, align 8
  store i64 %5, i64* %13, align 8
  store i64 %6, i64* %14, align 8
  %22 = load i64, i64* %14, align 8
  %23 = sub i64 %22, 1
  %24 = call i64 @fls64(i64 %23)
  %25 = shl i64 1, %24
  store i64 %25, i64* %15, align 8
  %26 = load i64, i64* %15, align 8
  %27 = call i32 @ilog2(i64 %26)
  store i32 %27, i32* %16, align 4
  %28 = load i32, i32* %11, align 4
  %29 = load i32, i32* @AXI_WRAPPER_NOR_MSG, align 4
  %30 = icmp eq i32 %28, %29
  %31 = zext i1 %30 to i32
  store i32 %31, i32* %21, align 4
  %32 = load i32, i32* %16, align 4
  %33 = icmp slt i32 %32, 8
  br i1 %33, label %34, label %35

34:                                               ; preds = %7
  store i32 8, i32* %16, align 4
  br label %35

35:                                               ; preds = %34, %7
  %36 = load %struct.rockchip_pcie*, %struct.rockchip_pcie** %8, align 8
  %37 = getelementptr inbounds %struct.rockchip_pcie, %struct.rockchip_pcie* %36, i32 0, i32 0
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* %12, align 8
  %42 = sub i64 %41, %40
  store i64 %42, i64* %12, align 8
  %43 = load i32, i32* %21, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %35
  br label %49

46:                                               ; preds = %35
  %47 = load i32, i32* %16, align 4
  %48 = sub nsw i32 %47, 1
  br label %49

49:                                               ; preds = %46, %45
  %50 = phi i32 [ 16, %45 ], [ %48, %46 ]
  %51 = load i32, i32* @PCIE_CORE_OB_REGION_ADDR0_NUM_BITS, align 4
  %52 = and i32 %50, %51
  %53 = load i64, i64* %12, align 8
  %54 = call i32 @lower_32_bits(i64 %53)
  %55 = load i32, i32* @PCIE_CORE_OB_REGION_ADDR0_LO_ADDR, align 4
  %56 = and i32 %54, %55
  %57 = or i32 %52, %56
  store i32 %57, i32* %17, align 4
  %58 = load i32, i32* %21, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %49
  %61 = load i64, i64* %12, align 8
  br label %64

62:                                               ; preds = %49
  %63 = load i64, i64* %13, align 8
  br label %64

64:                                               ; preds = %62, %60
  %65 = phi i64 [ %61, %60 ], [ %63, %62 ]
  %66 = call i32 @upper_32_bits(i64 %65)
  store i32 %66, i32* %18, align 4
  %67 = load i32, i32* %9, align 4
  %68 = call i32 @ROCKCHIP_PCIE_AT_OB_REGION_DESC0_DEVFN(i32 %67)
  %69 = load i32, i32* %11, align 4
  %70 = or i32 %68, %69
  store i32 %70, i32* %19, align 4
  store i32 0, i32* %20, align 4
  %71 = load i32, i32* %21, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %92

73:                                               ; preds = %64
  %74 = load %struct.rockchip_pcie*, %struct.rockchip_pcie** %8, align 8
  %75 = load i32, i32* %10, align 4
  %76 = call i32 @ROCKCHIP_PCIE_AT_OB_REGION_PCI_ADDR0(i32 %75)
  %77 = call i32 @rockchip_pcie_write(%struct.rockchip_pcie* %74, i32 0, i32 %76)
  %78 = load %struct.rockchip_pcie*, %struct.rockchip_pcie** %8, align 8
  %79 = load i32, i32* %10, align 4
  %80 = call i32 @ROCKCHIP_PCIE_AT_OB_REGION_PCI_ADDR1(i32 %79)
  %81 = call i32 @rockchip_pcie_write(%struct.rockchip_pcie* %78, i32 0, i32 %80)
  %82 = load %struct.rockchip_pcie*, %struct.rockchip_pcie** %8, align 8
  %83 = load i32, i32* %19, align 4
  %84 = load i32, i32* %10, align 4
  %85 = call i32 @ROCKCHIP_PCIE_AT_OB_REGION_DESC0(i32 %84)
  %86 = call i32 @rockchip_pcie_write(%struct.rockchip_pcie* %82, i32 %83, i32 %85)
  %87 = load %struct.rockchip_pcie*, %struct.rockchip_pcie** %8, align 8
  %88 = load i32, i32* %20, align 4
  %89 = load i32, i32* %10, align 4
  %90 = call i32 @ROCKCHIP_PCIE_AT_OB_REGION_DESC1(i32 %89)
  %91 = call i32 @rockchip_pcie_write(%struct.rockchip_pcie* %87, i32 %88, i32 %90)
  br label %124

92:                                               ; preds = %64
  %93 = load %struct.rockchip_pcie*, %struct.rockchip_pcie** %8, align 8
  %94 = load i32, i32* %17, align 4
  %95 = load i32, i32* %10, align 4
  %96 = call i32 @ROCKCHIP_PCIE_AT_OB_REGION_PCI_ADDR0(i32 %95)
  %97 = call i32 @rockchip_pcie_write(%struct.rockchip_pcie* %93, i32 %94, i32 %96)
  %98 = load %struct.rockchip_pcie*, %struct.rockchip_pcie** %8, align 8
  %99 = load i32, i32* %18, align 4
  %100 = load i32, i32* %10, align 4
  %101 = call i32 @ROCKCHIP_PCIE_AT_OB_REGION_PCI_ADDR1(i32 %100)
  %102 = call i32 @rockchip_pcie_write(%struct.rockchip_pcie* %98, i32 %99, i32 %101)
  %103 = load %struct.rockchip_pcie*, %struct.rockchip_pcie** %8, align 8
  %104 = load i32, i32* %19, align 4
  %105 = load i32, i32* %10, align 4
  %106 = call i32 @ROCKCHIP_PCIE_AT_OB_REGION_DESC0(i32 %105)
  %107 = call i32 @rockchip_pcie_write(%struct.rockchip_pcie* %103, i32 %104, i32 %106)
  %108 = load %struct.rockchip_pcie*, %struct.rockchip_pcie** %8, align 8
  %109 = load i32, i32* %20, align 4
  %110 = load i32, i32* %10, align 4
  %111 = call i32 @ROCKCHIP_PCIE_AT_OB_REGION_DESC1(i32 %110)
  %112 = call i32 @rockchip_pcie_write(%struct.rockchip_pcie* %108, i32 %109, i32 %111)
  %113 = load i32, i32* %16, align 4
  %114 = sub nsw i32 %113, 1
  %115 = load i32, i32* @PCIE_CORE_OB_REGION_ADDR0_NUM_BITS, align 4
  %116 = and i32 %114, %115
  %117 = load i64, i64* %12, align 8
  %118 = call i32 @lower_32_bits(i64 %117)
  %119 = load i32, i32* @PCIE_CORE_OB_REGION_ADDR0_LO_ADDR, align 4
  %120 = and i32 %118, %119
  %121 = or i32 %116, %120
  store i32 %121, i32* %17, align 4
  %122 = load i64, i64* %12, align 8
  %123 = call i32 @upper_32_bits(i64 %122)
  store i32 %123, i32* %18, align 4
  br label %124

124:                                              ; preds = %92, %73
  %125 = load %struct.rockchip_pcie*, %struct.rockchip_pcie** %8, align 8
  %126 = load i32, i32* %17, align 4
  %127 = load i32, i32* %10, align 4
  %128 = call i32 @ROCKCHIP_PCIE_AT_OB_REGION_CPU_ADDR0(i32 %127)
  %129 = call i32 @rockchip_pcie_write(%struct.rockchip_pcie* %125, i32 %126, i32 %128)
  %130 = load %struct.rockchip_pcie*, %struct.rockchip_pcie** %8, align 8
  %131 = load i32, i32* %18, align 4
  %132 = load i32, i32* %10, align 4
  %133 = call i32 @ROCKCHIP_PCIE_AT_OB_REGION_CPU_ADDR1(i32 %132)
  %134 = call i32 @rockchip_pcie_write(%struct.rockchip_pcie* %130, i32 %131, i32 %133)
  ret void
}

declare dso_local i64 @fls64(i64) #1

declare dso_local i32 @ilog2(i64) #1

declare dso_local i32 @lower_32_bits(i64) #1

declare dso_local i32 @upper_32_bits(i64) #1

declare dso_local i32 @ROCKCHIP_PCIE_AT_OB_REGION_DESC0_DEVFN(i32) #1

declare dso_local i32 @rockchip_pcie_write(%struct.rockchip_pcie*, i32, i32) #1

declare dso_local i32 @ROCKCHIP_PCIE_AT_OB_REGION_PCI_ADDR0(i32) #1

declare dso_local i32 @ROCKCHIP_PCIE_AT_OB_REGION_PCI_ADDR1(i32) #1

declare dso_local i32 @ROCKCHIP_PCIE_AT_OB_REGION_DESC0(i32) #1

declare dso_local i32 @ROCKCHIP_PCIE_AT_OB_REGION_DESC1(i32) #1

declare dso_local i32 @ROCKCHIP_PCIE_AT_OB_REGION_CPU_ADDR0(i32) #1

declare dso_local i32 @ROCKCHIP_PCIE_AT_OB_REGION_CPU_ADDR1(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
