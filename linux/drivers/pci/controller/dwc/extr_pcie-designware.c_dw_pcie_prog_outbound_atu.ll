; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/controller/dwc/extr_pcie-designware.c_dw_pcie_prog_outbound_atu.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/controller/dwc/extr_pcie-designware.c_dw_pcie_prog_outbound_atu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dw_pcie = type { i32, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 (%struct.dw_pcie*, i64)* }

@PCIE_ATU_VIEWPORT = common dso_local global i32 0, align 4
@PCIE_ATU_REGION_OUTBOUND = common dso_local global i32 0, align 4
@PCIE_ATU_LOWER_BASE = common dso_local global i32 0, align 4
@PCIE_ATU_UPPER_BASE = common dso_local global i32 0, align 4
@PCIE_ATU_LIMIT = common dso_local global i32 0, align 4
@PCIE_ATU_LOWER_TARGET = common dso_local global i32 0, align 4
@PCIE_ATU_UPPER_TARGET = common dso_local global i32 0, align 4
@PCIE_ATU_CR1 = common dso_local global i32 0, align 4
@PCIE_ATU_CR2 = common dso_local global i32 0, align 4
@PCIE_ATU_ENABLE = common dso_local global i64 0, align 8
@LINK_WAIT_MAX_IATU_RETRIES = common dso_local global i64 0, align 8
@LINK_WAIT_IATU = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"Outbound iATU is not being enabled\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dw_pcie_prog_outbound_atu(%struct.dw_pcie* %0, i32 %1, i32 %2, i64 %3, i64 %4, i64 %5) #0 {
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
  %16 = getelementptr inbounds %struct.dw_pcie, %struct.dw_pcie* %15, i32 0, i32 2
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i64 (%struct.dw_pcie*, i64)*, i64 (%struct.dw_pcie*, i64)** %18, align 8
  %20 = icmp ne i64 (%struct.dw_pcie*, i64)* %19, null
  br i1 %20, label %21, label %30

21:                                               ; preds = %6
  %22 = load %struct.dw_pcie*, %struct.dw_pcie** %7, align 8
  %23 = getelementptr inbounds %struct.dw_pcie, %struct.dw_pcie* %22, i32 0, i32 2
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i64 (%struct.dw_pcie*, i64)*, i64 (%struct.dw_pcie*, i64)** %25, align 8
  %27 = load %struct.dw_pcie*, %struct.dw_pcie** %7, align 8
  %28 = load i64, i64* %10, align 8
  %29 = call i64 %26(%struct.dw_pcie* %27, i64 %28)
  store i64 %29, i64* %10, align 8
  br label %30

30:                                               ; preds = %21, %6
  %31 = load %struct.dw_pcie*, %struct.dw_pcie** %7, align 8
  %32 = getelementptr inbounds %struct.dw_pcie, %struct.dw_pcie* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %43

35:                                               ; preds = %30
  %36 = load %struct.dw_pcie*, %struct.dw_pcie** %7, align 8
  %37 = load i32, i32* %8, align 4
  %38 = load i32, i32* %9, align 4
  %39 = load i64, i64* %10, align 8
  %40 = load i64, i64* %11, align 8
  %41 = load i64, i64* %12, align 8
  %42 = call i32 @dw_pcie_prog_outbound_atu_unroll(%struct.dw_pcie* %36, i32 %37, i32 %38, i64 %39, i64 %40, i64 %41)
  br label %112

43:                                               ; preds = %30
  %44 = load %struct.dw_pcie*, %struct.dw_pcie** %7, align 8
  %45 = load i32, i32* @PCIE_ATU_VIEWPORT, align 4
  %46 = load i32, i32* @PCIE_ATU_REGION_OUTBOUND, align 4
  %47 = load i32, i32* %8, align 4
  %48 = or i32 %46, %47
  %49 = sext i32 %48 to i64
  %50 = call i32 @dw_pcie_writel_dbi(%struct.dw_pcie* %44, i32 %45, i64 %49)
  %51 = load %struct.dw_pcie*, %struct.dw_pcie** %7, align 8
  %52 = load i32, i32* @PCIE_ATU_LOWER_BASE, align 4
  %53 = load i64, i64* %10, align 8
  %54 = call i64 @lower_32_bits(i64 %53)
  %55 = call i32 @dw_pcie_writel_dbi(%struct.dw_pcie* %51, i32 %52, i64 %54)
  %56 = load %struct.dw_pcie*, %struct.dw_pcie** %7, align 8
  %57 = load i32, i32* @PCIE_ATU_UPPER_BASE, align 4
  %58 = load i64, i64* %10, align 8
  %59 = call i64 @upper_32_bits(i64 %58)
  %60 = call i32 @dw_pcie_writel_dbi(%struct.dw_pcie* %56, i32 %57, i64 %59)
  %61 = load %struct.dw_pcie*, %struct.dw_pcie** %7, align 8
  %62 = load i32, i32* @PCIE_ATU_LIMIT, align 4
  %63 = load i64, i64* %10, align 8
  %64 = load i64, i64* %12, align 8
  %65 = add nsw i64 %63, %64
  %66 = sub nsw i64 %65, 1
  %67 = call i64 @lower_32_bits(i64 %66)
  %68 = call i32 @dw_pcie_writel_dbi(%struct.dw_pcie* %61, i32 %62, i64 %67)
  %69 = load %struct.dw_pcie*, %struct.dw_pcie** %7, align 8
  %70 = load i32, i32* @PCIE_ATU_LOWER_TARGET, align 4
  %71 = load i64, i64* %11, align 8
  %72 = call i64 @lower_32_bits(i64 %71)
  %73 = call i32 @dw_pcie_writel_dbi(%struct.dw_pcie* %69, i32 %70, i64 %72)
  %74 = load %struct.dw_pcie*, %struct.dw_pcie** %7, align 8
  %75 = load i32, i32* @PCIE_ATU_UPPER_TARGET, align 4
  %76 = load i64, i64* %11, align 8
  %77 = call i64 @upper_32_bits(i64 %76)
  %78 = call i32 @dw_pcie_writel_dbi(%struct.dw_pcie* %74, i32 %75, i64 %77)
  %79 = load %struct.dw_pcie*, %struct.dw_pcie** %7, align 8
  %80 = load i32, i32* @PCIE_ATU_CR1, align 4
  %81 = load i32, i32* %9, align 4
  %82 = sext i32 %81 to i64
  %83 = call i32 @dw_pcie_writel_dbi(%struct.dw_pcie* %79, i32 %80, i64 %82)
  %84 = load %struct.dw_pcie*, %struct.dw_pcie** %7, align 8
  %85 = load i32, i32* @PCIE_ATU_CR2, align 4
  %86 = load i64, i64* @PCIE_ATU_ENABLE, align 8
  %87 = call i32 @dw_pcie_writel_dbi(%struct.dw_pcie* %84, i32 %85, i64 %86)
  store i64 0, i64* %13, align 8
  br label %88

88:                                               ; preds = %104, %43
  %89 = load i64, i64* %13, align 8
  %90 = load i64, i64* @LINK_WAIT_MAX_IATU_RETRIES, align 8
  %91 = icmp slt i64 %89, %90
  br i1 %91, label %92, label %107

92:                                               ; preds = %88
  %93 = load %struct.dw_pcie*, %struct.dw_pcie** %7, align 8
  %94 = load i32, i32* @PCIE_ATU_CR2, align 4
  %95 = call i64 @dw_pcie_readl_dbi(%struct.dw_pcie* %93, i32 %94)
  store i64 %95, i64* %14, align 8
  %96 = load i64, i64* %14, align 8
  %97 = load i64, i64* @PCIE_ATU_ENABLE, align 8
  %98 = and i64 %96, %97
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %101

100:                                              ; preds = %92
  br label %112

101:                                              ; preds = %92
  %102 = load i32, i32* @LINK_WAIT_IATU, align 4
  %103 = call i32 @mdelay(i32 %102)
  br label %104

104:                                              ; preds = %101
  %105 = load i64, i64* %13, align 8
  %106 = add nsw i64 %105, 1
  store i64 %106, i64* %13, align 8
  br label %88

107:                                              ; preds = %88
  %108 = load %struct.dw_pcie*, %struct.dw_pcie** %7, align 8
  %109 = getelementptr inbounds %struct.dw_pcie, %struct.dw_pcie* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = call i32 @dev_err(i32 %110, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  br label %112

112:                                              ; preds = %107, %100, %35
  ret void
}

declare dso_local i32 @dw_pcie_prog_outbound_atu_unroll(%struct.dw_pcie*, i32, i32, i64, i64, i64) #1

declare dso_local i32 @dw_pcie_writel_dbi(%struct.dw_pcie*, i32, i64) #1

declare dso_local i64 @lower_32_bits(i64) #1

declare dso_local i64 @upper_32_bits(i64) #1

declare dso_local i64 @dw_pcie_readl_dbi(%struct.dw_pcie*, i32) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
