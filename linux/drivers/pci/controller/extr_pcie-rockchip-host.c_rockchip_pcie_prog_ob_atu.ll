; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/controller/extr_pcie-rockchip-host.c_rockchip_pcie_prog_ob_atu.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/controller/extr_pcie-rockchip-host.c_rockchip_pcie_prog_ob_atu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rockchip_pcie = type { i32 }

@MAX_AXI_WRAPPER_REGION_NUM = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@AXI_REGION_0_SIZE = common dso_local global i64 0, align 8
@AXI_REGION_SIZE = common dso_local global i64 0, align 8
@OB_REG_SIZE_SHIFT = common dso_local global i32 0, align 4
@PCIE_CORE_OB_REGION_ADDR0_NUM_BITS = common dso_local global i32 0, align 4
@PCIE_CORE_OB_REGION_ADDR0_LO_ADDR = common dso_local global i32 0, align 4
@PCIE_CORE_OB_REGION_ADDR0 = common dso_local global i64 0, align 8
@PCIE_CORE_OB_REGION_ADDR1 = common dso_local global i64 0, align 8
@PCIE_CORE_OB_REGION_DESC0 = common dso_local global i64 0, align 8
@PCIE_CORE_OB_REGION_DESC1 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rockchip_pcie*, i32, i32, i32, i32, i32)* @rockchip_pcie_prog_ob_atu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rockchip_pcie_prog_ob_atu(%struct.rockchip_pcie* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.rockchip_pcie*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.rockchip_pcie* %0, %struct.rockchip_pcie** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %18 = load i32, i32* %9, align 4
  %19 = load i32, i32* @MAX_AXI_WRAPPER_REGION_NUM, align 4
  %20 = icmp sge i32 %18, %19
  br i1 %20, label %21, label %24

21:                                               ; preds = %6
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %7, align 4
  br label %105

24:                                               ; preds = %6
  %25 = load i32, i32* %11, align 4
  %26 = add nsw i32 %25, 1
  %27 = icmp slt i32 %26, 8
  br i1 %27, label %28, label %31

28:                                               ; preds = %24
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %7, align 4
  br label %105

31:                                               ; preds = %24
  %32 = load i32, i32* %11, align 4
  %33 = icmp sgt i32 %32, 63
  br i1 %33, label %34, label %37

34:                                               ; preds = %31
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %7, align 4
  br label %105

37:                                               ; preds = %31
  %38 = load i32, i32* %9, align 4
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %50

40:                                               ; preds = %37
  %41 = load i64, i64* @AXI_REGION_0_SIZE, align 8
  %42 = load i32, i32* %11, align 4
  %43 = zext i32 %42 to i64
  %44 = shl i64 2, %43
  %45 = icmp ult i64 %41, %44
  br i1 %45, label %46, label %49

46:                                               ; preds = %40
  %47 = load i32, i32* @EINVAL, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %7, align 4
  br label %105

49:                                               ; preds = %40
  br label %50

50:                                               ; preds = %49, %37
  %51 = load i32, i32* %9, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %63

53:                                               ; preds = %50
  %54 = load i64, i64* @AXI_REGION_SIZE, align 8
  %55 = load i32, i32* %11, align 4
  %56 = zext i32 %55 to i64
  %57 = shl i64 2, %56
  %58 = icmp ult i64 %54, %57
  br i1 %58, label %59, label %62

59:                                               ; preds = %53
  %60 = load i32, i32* @EINVAL, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %7, align 4
  br label %105

62:                                               ; preds = %53
  br label %63

63:                                               ; preds = %62, %50
  %64 = load i32, i32* %9, align 4
  %65 = load i32, i32* @OB_REG_SIZE_SHIFT, align 4
  %66 = shl i32 %64, %65
  store i32 %66, i32* %17, align 4
  %67 = load i32, i32* %11, align 4
  %68 = load i32, i32* @PCIE_CORE_OB_REGION_ADDR0_NUM_BITS, align 4
  %69 = and i32 %67, %68
  store i32 %69, i32* %14, align 4
  %70 = load i32, i32* %12, align 4
  %71 = load i32, i32* @PCIE_CORE_OB_REGION_ADDR0_LO_ADDR, align 4
  %72 = and i32 %70, %71
  %73 = load i32, i32* %14, align 4
  %74 = or i32 %73, %72
  store i32 %74, i32* %14, align 4
  %75 = load i32, i32* %13, align 4
  store i32 %75, i32* %15, align 4
  %76 = load i32, i32* %10, align 4
  %77 = or i32 8388608, %76
  store i32 %77, i32* %16, align 4
  %78 = load %struct.rockchip_pcie*, %struct.rockchip_pcie** %8, align 8
  %79 = load i32, i32* %14, align 4
  %80 = load i64, i64* @PCIE_CORE_OB_REGION_ADDR0, align 8
  %81 = load i32, i32* %17, align 4
  %82 = sext i32 %81 to i64
  %83 = add nsw i64 %80, %82
  %84 = call i32 @rockchip_pcie_write(%struct.rockchip_pcie* %78, i32 %79, i64 %83)
  %85 = load %struct.rockchip_pcie*, %struct.rockchip_pcie** %8, align 8
  %86 = load i32, i32* %15, align 4
  %87 = load i64, i64* @PCIE_CORE_OB_REGION_ADDR1, align 8
  %88 = load i32, i32* %17, align 4
  %89 = sext i32 %88 to i64
  %90 = add nsw i64 %87, %89
  %91 = call i32 @rockchip_pcie_write(%struct.rockchip_pcie* %85, i32 %86, i64 %90)
  %92 = load %struct.rockchip_pcie*, %struct.rockchip_pcie** %8, align 8
  %93 = load i32, i32* %16, align 4
  %94 = load i64, i64* @PCIE_CORE_OB_REGION_DESC0, align 8
  %95 = load i32, i32* %17, align 4
  %96 = sext i32 %95 to i64
  %97 = add nsw i64 %94, %96
  %98 = call i32 @rockchip_pcie_write(%struct.rockchip_pcie* %92, i32 %93, i64 %97)
  %99 = load %struct.rockchip_pcie*, %struct.rockchip_pcie** %8, align 8
  %100 = load i64, i64* @PCIE_CORE_OB_REGION_DESC1, align 8
  %101 = load i32, i32* %17, align 4
  %102 = sext i32 %101 to i64
  %103 = add nsw i64 %100, %102
  %104 = call i32 @rockchip_pcie_write(%struct.rockchip_pcie* %99, i32 0, i64 %103)
  store i32 0, i32* %7, align 4
  br label %105

105:                                              ; preds = %63, %59, %46, %34, %28, %21
  %106 = load i32, i32* %7, align 4
  ret i32 %106
}

declare dso_local i32 @rockchip_pcie_write(%struct.rockchip_pcie*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
