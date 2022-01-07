; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/controller/dwc/extr_pcie-designware.c_dw_pcie_prog_inbound_atu_unroll.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/controller/dwc/extr_pcie-designware.c_dw_pcie_prog_inbound_atu_unroll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dw_pcie = type { i32 }

@PCIE_ATU_UNR_LOWER_TARGET = common dso_local global i32 0, align 4
@PCIE_ATU_UNR_UPPER_TARGET = common dso_local global i32 0, align 4
@PCIE_ATU_TYPE_MEM = common dso_local global i32 0, align 4
@PCIE_ATU_TYPE_IO = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@PCIE_ATU_UNR_REGION_CTRL1 = common dso_local global i32 0, align 4
@PCIE_ATU_UNR_REGION_CTRL2 = common dso_local global i32 0, align 4
@PCIE_ATU_ENABLE = common dso_local global i32 0, align 4
@PCIE_ATU_BAR_MODE_ENABLE = common dso_local global i32 0, align 4
@LINK_WAIT_MAX_IATU_RETRIES = common dso_local global i64 0, align 8
@LINK_WAIT_IATU = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"Inbound iATU is not being enabled\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dw_pcie*, i32, i32, i32, i32)* @dw_pcie_prog_inbound_atu_unroll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dw_pcie_prog_inbound_atu_unroll(%struct.dw_pcie* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.dw_pcie*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store %struct.dw_pcie* %0, %struct.dw_pcie** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %15 = load %struct.dw_pcie*, %struct.dw_pcie** %7, align 8
  %16 = load i32, i32* %8, align 4
  %17 = load i32, i32* @PCIE_ATU_UNR_LOWER_TARGET, align 4
  %18 = load i32, i32* %10, align 4
  %19 = call i32 @lower_32_bits(i32 %18)
  %20 = call i32 @dw_pcie_writel_ib_unroll(%struct.dw_pcie* %15, i32 %16, i32 %17, i32 %19)
  %21 = load %struct.dw_pcie*, %struct.dw_pcie** %7, align 8
  %22 = load i32, i32* %8, align 4
  %23 = load i32, i32* @PCIE_ATU_UNR_UPPER_TARGET, align 4
  %24 = load i32, i32* %10, align 4
  %25 = call i32 @upper_32_bits(i32 %24)
  %26 = call i32 @dw_pcie_writel_ib_unroll(%struct.dw_pcie* %21, i32 %22, i32 %23, i32 %25)
  %27 = load i32, i32* %11, align 4
  switch i32 %27, label %32 [
    i32 128, label %28
    i32 129, label %30
  ]

28:                                               ; preds = %5
  %29 = load i32, i32* @PCIE_ATU_TYPE_MEM, align 4
  store i32 %29, i32* %12, align 4
  br label %35

30:                                               ; preds = %5
  %31 = load i32, i32* @PCIE_ATU_TYPE_IO, align 4
  store i32 %31, i32* %12, align 4
  br label %35

32:                                               ; preds = %5
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %6, align 4
  br label %79

35:                                               ; preds = %30, %28
  %36 = load %struct.dw_pcie*, %struct.dw_pcie** %7, align 8
  %37 = load i32, i32* %8, align 4
  %38 = load i32, i32* @PCIE_ATU_UNR_REGION_CTRL1, align 4
  %39 = load i32, i32* %12, align 4
  %40 = call i32 @dw_pcie_writel_ib_unroll(%struct.dw_pcie* %36, i32 %37, i32 %38, i32 %39)
  %41 = load %struct.dw_pcie*, %struct.dw_pcie** %7, align 8
  %42 = load i32, i32* %8, align 4
  %43 = load i32, i32* @PCIE_ATU_UNR_REGION_CTRL2, align 4
  %44 = load i32, i32* @PCIE_ATU_ENABLE, align 4
  %45 = load i32, i32* @PCIE_ATU_BAR_MODE_ENABLE, align 4
  %46 = or i32 %44, %45
  %47 = load i32, i32* %9, align 4
  %48 = shl i32 %47, 8
  %49 = or i32 %46, %48
  %50 = call i32 @dw_pcie_writel_ib_unroll(%struct.dw_pcie* %41, i32 %42, i32 %43, i32 %49)
  store i64 0, i64* %13, align 8
  br label %51

51:                                               ; preds = %69, %35
  %52 = load i64, i64* %13, align 8
  %53 = load i64, i64* @LINK_WAIT_MAX_IATU_RETRIES, align 8
  %54 = icmp slt i64 %52, %53
  br i1 %54, label %55, label %72

55:                                               ; preds = %51
  %56 = load %struct.dw_pcie*, %struct.dw_pcie** %7, align 8
  %57 = load i32, i32* %8, align 4
  %58 = load i32, i32* @PCIE_ATU_UNR_REGION_CTRL2, align 4
  %59 = call i64 @dw_pcie_readl_ib_unroll(%struct.dw_pcie* %56, i32 %57, i32 %58)
  store i64 %59, i64* %14, align 8
  %60 = load i64, i64* %14, align 8
  %61 = load i32, i32* @PCIE_ATU_ENABLE, align 4
  %62 = sext i32 %61 to i64
  %63 = and i64 %60, %62
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %55
  store i32 0, i32* %6, align 4
  br label %79

66:                                               ; preds = %55
  %67 = load i32, i32* @LINK_WAIT_IATU, align 4
  %68 = call i32 @mdelay(i32 %67)
  br label %69

69:                                               ; preds = %66
  %70 = load i64, i64* %13, align 8
  %71 = add nsw i64 %70, 1
  store i64 %71, i64* %13, align 8
  br label %51

72:                                               ; preds = %51
  %73 = load %struct.dw_pcie*, %struct.dw_pcie** %7, align 8
  %74 = getelementptr inbounds %struct.dw_pcie, %struct.dw_pcie* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @dev_err(i32 %75, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %77 = load i32, i32* @EBUSY, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %6, align 4
  br label %79

79:                                               ; preds = %72, %65, %32
  %80 = load i32, i32* %6, align 4
  ret i32 %80
}

declare dso_local i32 @dw_pcie_writel_ib_unroll(%struct.dw_pcie*, i32, i32, i32) #1

declare dso_local i32 @lower_32_bits(i32) #1

declare dso_local i32 @upper_32_bits(i32) #1

declare dso_local i64 @dw_pcie_readl_ib_unroll(%struct.dw_pcie*, i32, i32) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
