; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/controller/dwc/extr_pcie-designware.c_dw_pcie_prog_outbound_atu_unroll.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/controller/dwc/extr_pcie-designware.c_dw_pcie_prog_outbound_atu_unroll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dw_pcie = type { i32 }

@PCIE_ATU_UNR_LOWER_BASE = common dso_local global i32 0, align 4
@PCIE_ATU_UNR_UPPER_BASE = common dso_local global i32 0, align 4
@PCIE_ATU_UNR_LIMIT = common dso_local global i32 0, align 4
@PCIE_ATU_UNR_LOWER_TARGET = common dso_local global i32 0, align 4
@PCIE_ATU_UNR_UPPER_TARGET = common dso_local global i32 0, align 4
@PCIE_ATU_UNR_REGION_CTRL1 = common dso_local global i32 0, align 4
@PCIE_ATU_UNR_REGION_CTRL2 = common dso_local global i32 0, align 4
@PCIE_ATU_ENABLE = common dso_local global i64 0, align 8
@LINK_WAIT_MAX_IATU_RETRIES = common dso_local global i64 0, align 8
@LINK_WAIT_IATU = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"Outbound iATU is not being enabled\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dw_pcie*, i32, i32, i64, i64, i64)* @dw_pcie_prog_outbound_atu_unroll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dw_pcie_prog_outbound_atu_unroll(%struct.dw_pcie* %0, i32 %1, i32 %2, i64 %3, i64 %4, i64 %5) #0 {
  %7 = alloca %struct.dw_pcie*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store %struct.dw_pcie* %0, %struct.dw_pcie** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  store i64 %5, i64* %12, align 8
  %15 = load %struct.dw_pcie*, %struct.dw_pcie** %7, align 8
  %16 = load i32, i32* %8, align 4
  %17 = load i32, i32* @PCIE_ATU_UNR_LOWER_BASE, align 4
  %18 = load i64, i64* %10, align 8
  %19 = call i64 @lower_32_bits(i64 %18)
  %20 = call i32 @dw_pcie_writel_ob_unroll(%struct.dw_pcie* %15, i32 %16, i32 %17, i64 %19)
  %21 = load %struct.dw_pcie*, %struct.dw_pcie** %7, align 8
  %22 = load i32, i32* %8, align 4
  %23 = load i32, i32* @PCIE_ATU_UNR_UPPER_BASE, align 4
  %24 = load i64, i64* %10, align 8
  %25 = call i64 @upper_32_bits(i64 %24)
  %26 = call i32 @dw_pcie_writel_ob_unroll(%struct.dw_pcie* %21, i32 %22, i32 %23, i64 %25)
  %27 = load %struct.dw_pcie*, %struct.dw_pcie** %7, align 8
  %28 = load i32, i32* %8, align 4
  %29 = load i32, i32* @PCIE_ATU_UNR_LIMIT, align 4
  %30 = load i64, i64* %10, align 8
  %31 = load i64, i64* %12, align 8
  %32 = add nsw i64 %30, %31
  %33 = sub nsw i64 %32, 1
  %34 = call i64 @lower_32_bits(i64 %33)
  %35 = call i32 @dw_pcie_writel_ob_unroll(%struct.dw_pcie* %27, i32 %28, i32 %29, i64 %34)
  %36 = load %struct.dw_pcie*, %struct.dw_pcie** %7, align 8
  %37 = load i32, i32* %8, align 4
  %38 = load i32, i32* @PCIE_ATU_UNR_LOWER_TARGET, align 4
  %39 = load i64, i64* %11, align 8
  %40 = call i64 @lower_32_bits(i64 %39)
  %41 = call i32 @dw_pcie_writel_ob_unroll(%struct.dw_pcie* %36, i32 %37, i32 %38, i64 %40)
  %42 = load %struct.dw_pcie*, %struct.dw_pcie** %7, align 8
  %43 = load i32, i32* %8, align 4
  %44 = load i32, i32* @PCIE_ATU_UNR_UPPER_TARGET, align 4
  %45 = load i64, i64* %11, align 8
  %46 = call i64 @upper_32_bits(i64 %45)
  %47 = call i32 @dw_pcie_writel_ob_unroll(%struct.dw_pcie* %42, i32 %43, i32 %44, i64 %46)
  %48 = load %struct.dw_pcie*, %struct.dw_pcie** %7, align 8
  %49 = load i32, i32* %8, align 4
  %50 = load i32, i32* @PCIE_ATU_UNR_REGION_CTRL1, align 4
  %51 = load i32, i32* %9, align 4
  %52 = sext i32 %51 to i64
  %53 = call i32 @dw_pcie_writel_ob_unroll(%struct.dw_pcie* %48, i32 %49, i32 %50, i64 %52)
  %54 = load %struct.dw_pcie*, %struct.dw_pcie** %7, align 8
  %55 = load i32, i32* %8, align 4
  %56 = load i32, i32* @PCIE_ATU_UNR_REGION_CTRL2, align 4
  %57 = load i64, i64* @PCIE_ATU_ENABLE, align 8
  %58 = call i32 @dw_pcie_writel_ob_unroll(%struct.dw_pcie* %54, i32 %55, i32 %56, i64 %57)
  store i64 0, i64* %13, align 8
  br label %59

59:                                               ; preds = %76, %6
  %60 = load i64, i64* %13, align 8
  %61 = load i64, i64* @LINK_WAIT_MAX_IATU_RETRIES, align 8
  %62 = icmp slt i64 %60, %61
  br i1 %62, label %63, label %79

63:                                               ; preds = %59
  %64 = load %struct.dw_pcie*, %struct.dw_pcie** %7, align 8
  %65 = load i32, i32* %8, align 4
  %66 = load i32, i32* @PCIE_ATU_UNR_REGION_CTRL2, align 4
  %67 = call i64 @dw_pcie_readl_ob_unroll(%struct.dw_pcie* %64, i32 %65, i32 %66)
  store i64 %67, i64* %14, align 8
  %68 = load i64, i64* %14, align 8
  %69 = load i64, i64* @PCIE_ATU_ENABLE, align 8
  %70 = and i64 %68, %69
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %63
  br label %84

73:                                               ; preds = %63
  %74 = load i32, i32* @LINK_WAIT_IATU, align 4
  %75 = call i32 @mdelay(i32 %74)
  br label %76

76:                                               ; preds = %73
  %77 = load i64, i64* %13, align 8
  %78 = add nsw i64 %77, 1
  store i64 %78, i64* %13, align 8
  br label %59

79:                                               ; preds = %59
  %80 = load %struct.dw_pcie*, %struct.dw_pcie** %7, align 8
  %81 = getelementptr inbounds %struct.dw_pcie, %struct.dw_pcie* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @dev_err(i32 %82, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  br label %84

84:                                               ; preds = %79, %72
  ret void
}

declare dso_local i32 @dw_pcie_writel_ob_unroll(%struct.dw_pcie*, i32, i32, i64) #1

declare dso_local i64 @lower_32_bits(i64) #1

declare dso_local i64 @upper_32_bits(i64) #1

declare dso_local i64 @dw_pcie_readl_ob_unroll(%struct.dw_pcie*, i32, i32) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
