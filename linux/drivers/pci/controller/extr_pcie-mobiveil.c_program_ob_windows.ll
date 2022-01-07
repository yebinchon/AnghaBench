; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/controller/extr_pcie-mobiveil.c_program_ob_windows.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/controller/extr_pcie-mobiveil.c_program_ob_windows.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mobiveil_pcie = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [39 x i8] c"ERROR: max outbound windows reached !\0A\00", align 1
@WIN_TYPE_MASK = common dso_local global i32 0, align 4
@WIN_TYPE_SHIFT = common dso_local global i32 0, align 4
@WIN_SIZE_MASK = common dso_local global i32 0, align 4
@WIN_ENABLE_SHIFT = common dso_local global i32 0, align 4
@AXI_WINDOW_ALIGN_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mobiveil_pcie*, i32, i32, i32, i32, i32)* @program_ob_windows to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @program_ob_windows(%struct.mobiveil_pcie* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.mobiveil_pcie*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.mobiveil_pcie* %0, %struct.mobiveil_pcie** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %15 = load i32, i32* %12, align 4
  %16 = sub nsw i32 %15, 1
  %17 = xor i32 %16, -1
  store i32 %17, i32* %14, align 4
  %18 = load i32, i32* %8, align 4
  %19 = load %struct.mobiveil_pcie*, %struct.mobiveil_pcie** %7, align 8
  %20 = getelementptr inbounds %struct.mobiveil_pcie, %struct.mobiveil_pcie* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp sge i32 %18, %21
  br i1 %22, label %23, label %29

23:                                               ; preds = %6
  %24 = load %struct.mobiveil_pcie*, %struct.mobiveil_pcie** %7, align 8
  %25 = getelementptr inbounds %struct.mobiveil_pcie, %struct.mobiveil_pcie* %24, i32 0, i32 2
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = call i32 @dev_err(i32* %27, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  br label %97

29:                                               ; preds = %6
  %30 = load %struct.mobiveil_pcie*, %struct.mobiveil_pcie** %7, align 8
  %31 = load i32, i32* %8, align 4
  %32 = call i32 @PAB_AXI_AMAP_CTRL(i32 %31)
  %33 = call i32 @csr_readl(%struct.mobiveil_pcie* %30, i32 %32)
  store i32 %33, i32* %13, align 4
  %34 = load i32, i32* @WIN_TYPE_MASK, align 4
  %35 = load i32, i32* @WIN_TYPE_SHIFT, align 4
  %36 = shl i32 %34, %35
  %37 = load i32, i32* @WIN_SIZE_MASK, align 4
  %38 = or i32 %36, %37
  %39 = xor i32 %38, -1
  %40 = load i32, i32* %13, align 4
  %41 = and i32 %40, %39
  store i32 %41, i32* %13, align 4
  %42 = load i32, i32* @WIN_ENABLE_SHIFT, align 4
  %43 = shl i32 1, %42
  %44 = load i32, i32* %11, align 4
  %45 = load i32, i32* @WIN_TYPE_SHIFT, align 4
  %46 = shl i32 %44, %45
  %47 = or i32 %43, %46
  %48 = load i32, i32* %14, align 4
  %49 = call i32 @lower_32_bits(i32 %48)
  %50 = load i32, i32* @WIN_SIZE_MASK, align 4
  %51 = and i32 %49, %50
  %52 = or i32 %47, %51
  %53 = load i32, i32* %13, align 4
  %54 = or i32 %53, %52
  store i32 %54, i32* %13, align 4
  %55 = load %struct.mobiveil_pcie*, %struct.mobiveil_pcie** %7, align 8
  %56 = load i32, i32* %13, align 4
  %57 = load i32, i32* %8, align 4
  %58 = call i32 @PAB_AXI_AMAP_CTRL(i32 %57)
  %59 = call i32 @csr_writel(%struct.mobiveil_pcie* %55, i32 %56, i32 %58)
  %60 = load %struct.mobiveil_pcie*, %struct.mobiveil_pcie** %7, align 8
  %61 = load i32, i32* %14, align 4
  %62 = call i32 @upper_32_bits(i32 %61)
  %63 = load i32, i32* %8, align 4
  %64 = call i32 @PAB_EXT_AXI_AMAP_SIZE(i32 %63)
  %65 = call i32 @csr_writel(%struct.mobiveil_pcie* %60, i32 %62, i32 %64)
  %66 = load %struct.mobiveil_pcie*, %struct.mobiveil_pcie** %7, align 8
  %67 = load i32, i32* %9, align 4
  %68 = call i32 @lower_32_bits(i32 %67)
  %69 = load i32, i32* @AXI_WINDOW_ALIGN_MASK, align 4
  %70 = xor i32 %69, -1
  %71 = and i32 %68, %70
  %72 = load i32, i32* %8, align 4
  %73 = call i32 @PAB_AXI_AMAP_AXI_WIN(i32 %72)
  %74 = call i32 @csr_writel(%struct.mobiveil_pcie* %66, i32 %71, i32 %73)
  %75 = load %struct.mobiveil_pcie*, %struct.mobiveil_pcie** %7, align 8
  %76 = load i32, i32* %9, align 4
  %77 = call i32 @upper_32_bits(i32 %76)
  %78 = load i32, i32* %8, align 4
  %79 = call i32 @PAB_EXT_AXI_AMAP_AXI_WIN(i32 %78)
  %80 = call i32 @csr_writel(%struct.mobiveil_pcie* %75, i32 %77, i32 %79)
  %81 = load %struct.mobiveil_pcie*, %struct.mobiveil_pcie** %7, align 8
  %82 = load i32, i32* %10, align 4
  %83 = call i32 @lower_32_bits(i32 %82)
  %84 = load i32, i32* %8, align 4
  %85 = call i32 @PAB_AXI_AMAP_PEX_WIN_L(i32 %84)
  %86 = call i32 @csr_writel(%struct.mobiveil_pcie* %81, i32 %83, i32 %85)
  %87 = load %struct.mobiveil_pcie*, %struct.mobiveil_pcie** %7, align 8
  %88 = load i32, i32* %10, align 4
  %89 = call i32 @upper_32_bits(i32 %88)
  %90 = load i32, i32* %8, align 4
  %91 = call i32 @PAB_AXI_AMAP_PEX_WIN_H(i32 %90)
  %92 = call i32 @csr_writel(%struct.mobiveil_pcie* %87, i32 %89, i32 %91)
  %93 = load %struct.mobiveil_pcie*, %struct.mobiveil_pcie** %7, align 8
  %94 = getelementptr inbounds %struct.mobiveil_pcie, %struct.mobiveil_pcie* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %94, align 4
  br label %97

97:                                               ; preds = %29, %23
  ret void
}

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @csr_readl(%struct.mobiveil_pcie*, i32) #1

declare dso_local i32 @PAB_AXI_AMAP_CTRL(i32) #1

declare dso_local i32 @lower_32_bits(i32) #1

declare dso_local i32 @csr_writel(%struct.mobiveil_pcie*, i32, i32) #1

declare dso_local i32 @upper_32_bits(i32) #1

declare dso_local i32 @PAB_EXT_AXI_AMAP_SIZE(i32) #1

declare dso_local i32 @PAB_AXI_AMAP_AXI_WIN(i32) #1

declare dso_local i32 @PAB_EXT_AXI_AMAP_AXI_WIN(i32) #1

declare dso_local i32 @PAB_AXI_AMAP_PEX_WIN_L(i32) #1

declare dso_local i32 @PAB_AXI_AMAP_PEX_WIN_H(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
