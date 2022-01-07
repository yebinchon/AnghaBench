; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/controller/extr_pcie-rockchip-host.c_rockchip_pcie_prog_ib_atu.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/controller/extr_pcie-rockchip-host.c_rockchip_pcie_prog_ib_atu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rockchip_pcie = type { i32 }

@MAX_AXI_IB_ROOTPORT_REGION_NUM = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@MIN_AXI_ADDR_BITS_PASSED = common dso_local global i32 0, align 4
@IB_ROOT_PORT_REG_SIZE_SHIFT = common dso_local global i32 0, align 4
@PCIE_CORE_IB_REGION_ADDR0_NUM_BITS = common dso_local global i32 0, align 4
@PCIE_CORE_IB_REGION_ADDR0_LO_ADDR = common dso_local global i32 0, align 4
@PCIE_RP_IB_ADDR0 = common dso_local global i64 0, align 8
@PCIE_RP_IB_ADDR1 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rockchip_pcie*, i32, i32, i32, i32)* @rockchip_pcie_prog_ib_atu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rockchip_pcie_prog_ib_atu(%struct.rockchip_pcie* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.rockchip_pcie*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.rockchip_pcie* %0, %struct.rockchip_pcie** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %15 = load i32, i32* %8, align 4
  %16 = load i32, i32* @MAX_AXI_IB_ROOTPORT_REGION_NUM, align 4
  %17 = icmp sgt i32 %15, %16
  br i1 %17, label %18, label %21

18:                                               ; preds = %5
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %6, align 4
  br label %63

21:                                               ; preds = %5
  %22 = load i32, i32* %9, align 4
  %23 = add nsw i32 %22, 1
  %24 = load i32, i32* @MIN_AXI_ADDR_BITS_PASSED, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %21
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %6, align 4
  br label %63

29:                                               ; preds = %21
  %30 = load i32, i32* %9, align 4
  %31 = icmp sgt i32 %30, 63
  br i1 %31, label %32, label %35

32:                                               ; preds = %29
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %6, align 4
  br label %63

35:                                               ; preds = %29
  %36 = load i32, i32* %8, align 4
  %37 = load i32, i32* @IB_ROOT_PORT_REG_SIZE_SHIFT, align 4
  %38 = shl i32 %36, %37
  store i32 %38, i32* %14, align 4
  %39 = load i32, i32* %9, align 4
  %40 = load i32, i32* @PCIE_CORE_IB_REGION_ADDR0_NUM_BITS, align 4
  %41 = and i32 %39, %40
  store i32 %41, i32* %12, align 4
  %42 = load i32, i32* %10, align 4
  %43 = shl i32 %42, 8
  %44 = load i32, i32* @PCIE_CORE_IB_REGION_ADDR0_LO_ADDR, align 4
  %45 = and i32 %43, %44
  %46 = load i32, i32* %12, align 4
  %47 = or i32 %46, %45
  store i32 %47, i32* %12, align 4
  %48 = load i32, i32* %11, align 4
  store i32 %48, i32* %13, align 4
  %49 = load %struct.rockchip_pcie*, %struct.rockchip_pcie** %7, align 8
  %50 = load i32, i32* %12, align 4
  %51 = load i64, i64* @PCIE_RP_IB_ADDR0, align 8
  %52 = load i32, i32* %14, align 4
  %53 = sext i32 %52 to i64
  %54 = add nsw i64 %51, %53
  %55 = call i32 @rockchip_pcie_write(%struct.rockchip_pcie* %49, i32 %50, i64 %54)
  %56 = load %struct.rockchip_pcie*, %struct.rockchip_pcie** %7, align 8
  %57 = load i32, i32* %13, align 4
  %58 = load i64, i64* @PCIE_RP_IB_ADDR1, align 8
  %59 = load i32, i32* %14, align 4
  %60 = sext i32 %59 to i64
  %61 = add nsw i64 %58, %60
  %62 = call i32 @rockchip_pcie_write(%struct.rockchip_pcie* %56, i32 %57, i64 %61)
  store i32 0, i32* %6, align 4
  br label %63

63:                                               ; preds = %35, %32, %26, %18
  %64 = load i32, i32* %6, align 4
  ret i32 %64
}

declare dso_local i32 @rockchip_pcie_write(%struct.rockchip_pcie*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
