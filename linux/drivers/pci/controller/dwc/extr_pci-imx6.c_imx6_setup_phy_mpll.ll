; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/controller/dwc/extr_pci-imx6.c_imx6_setup_phy_mpll.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/controller/dwc/extr_pci-imx6.c_imx6_setup_phy_mpll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.imx6_pcie = type { %struct.TYPE_4__*, %struct.TYPE_3__*, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@IMX6_PCIE_FLAG_IMX6_PHY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"Unsupported PHY reference clock rate %lu\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@PCIE_PHY_MPLL_OVRD_IN_LO = common dso_local global i32 0, align 4
@PCIE_PHY_MPLL_MULTIPLIER_MASK = common dso_local global i32 0, align 4
@PCIE_PHY_MPLL_MULTIPLIER_SHIFT = common dso_local global i32 0, align 4
@PCIE_PHY_MPLL_MULTIPLIER_OVRD = common dso_local global i32 0, align 4
@PCIE_PHY_ATEOVRD = common dso_local global i32 0, align 4
@PCIE_PHY_ATEOVRD_REF_CLKDIV_MASK = common dso_local global i32 0, align 4
@PCIE_PHY_ATEOVRD_REF_CLKDIV_SHIFT = common dso_local global i32 0, align 4
@PCIE_PHY_ATEOVRD_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.imx6_pcie*)* @imx6_setup_phy_mpll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @imx6_setup_phy_mpll(%struct.imx6_pcie* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.imx6_pcie*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.imx6_pcie* %0, %struct.imx6_pcie** %3, align 8
  %8 = load %struct.imx6_pcie*, %struct.imx6_pcie** %3, align 8
  %9 = getelementptr inbounds %struct.imx6_pcie, %struct.imx6_pcie* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 8
  %11 = call i64 @clk_get_rate(i32 %10)
  store i64 %11, i64* %4, align 8
  %12 = load %struct.imx6_pcie*, %struct.imx6_pcie** %3, align 8
  %13 = getelementptr inbounds %struct.imx6_pcie, %struct.imx6_pcie* %12, i32 0, i32 1
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @IMX6_PCIE_FLAG_IMX6_PHY, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %79

21:                                               ; preds = %1
  %22 = load i64, i64* %4, align 8
  switch i64 %22, label %26 [
    i64 125000000, label %23
    i64 100000000, label %24
    i64 200000000, label %25
  ]

23:                                               ; preds = %21
  store i32 0, i32* %2, align 4
  br label %79

24:                                               ; preds = %21
  store i32 25, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %36

25:                                               ; preds = %21
  store i32 25, i32* %5, align 4
  store i32 1, i32* %6, align 4
  br label %36

26:                                               ; preds = %21
  %27 = load %struct.imx6_pcie*, %struct.imx6_pcie** %3, align 8
  %28 = getelementptr inbounds %struct.imx6_pcie, %struct.imx6_pcie* %27, i32 0, i32 0
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i64, i64* %4, align 8
  %33 = call i32 @dev_err(i32 %31, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i64 %32)
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %2, align 4
  br label %79

36:                                               ; preds = %25, %24
  %37 = load %struct.imx6_pcie*, %struct.imx6_pcie** %3, align 8
  %38 = load i32, i32* @PCIE_PHY_MPLL_OVRD_IN_LO, align 4
  %39 = call i32 @pcie_phy_read(%struct.imx6_pcie* %37, i32 %38, i32* %7)
  %40 = load i32, i32* @PCIE_PHY_MPLL_MULTIPLIER_MASK, align 4
  %41 = load i32, i32* @PCIE_PHY_MPLL_MULTIPLIER_SHIFT, align 4
  %42 = shl i32 %40, %41
  %43 = xor i32 %42, -1
  %44 = load i32, i32* %7, align 4
  %45 = and i32 %44, %43
  store i32 %45, i32* %7, align 4
  %46 = load i32, i32* %5, align 4
  %47 = load i32, i32* @PCIE_PHY_MPLL_MULTIPLIER_SHIFT, align 4
  %48 = shl i32 %46, %47
  %49 = load i32, i32* %7, align 4
  %50 = or i32 %49, %48
  store i32 %50, i32* %7, align 4
  %51 = load i32, i32* @PCIE_PHY_MPLL_MULTIPLIER_OVRD, align 4
  %52 = load i32, i32* %7, align 4
  %53 = or i32 %52, %51
  store i32 %53, i32* %7, align 4
  %54 = load %struct.imx6_pcie*, %struct.imx6_pcie** %3, align 8
  %55 = load i32, i32* @PCIE_PHY_MPLL_OVRD_IN_LO, align 4
  %56 = load i32, i32* %7, align 4
  %57 = call i32 @pcie_phy_write(%struct.imx6_pcie* %54, i32 %55, i32 %56)
  %58 = load %struct.imx6_pcie*, %struct.imx6_pcie** %3, align 8
  %59 = load i32, i32* @PCIE_PHY_ATEOVRD, align 4
  %60 = call i32 @pcie_phy_read(%struct.imx6_pcie* %58, i32 %59, i32* %7)
  %61 = load i32, i32* @PCIE_PHY_ATEOVRD_REF_CLKDIV_MASK, align 4
  %62 = load i32, i32* @PCIE_PHY_ATEOVRD_REF_CLKDIV_SHIFT, align 4
  %63 = shl i32 %61, %62
  %64 = xor i32 %63, -1
  %65 = load i32, i32* %7, align 4
  %66 = and i32 %65, %64
  store i32 %66, i32* %7, align 4
  %67 = load i32, i32* %6, align 4
  %68 = load i32, i32* @PCIE_PHY_ATEOVRD_REF_CLKDIV_SHIFT, align 4
  %69 = shl i32 %67, %68
  %70 = load i32, i32* %7, align 4
  %71 = or i32 %70, %69
  store i32 %71, i32* %7, align 4
  %72 = load i32, i32* @PCIE_PHY_ATEOVRD_EN, align 4
  %73 = load i32, i32* %7, align 4
  %74 = or i32 %73, %72
  store i32 %74, i32* %7, align 4
  %75 = load %struct.imx6_pcie*, %struct.imx6_pcie** %3, align 8
  %76 = load i32, i32* @PCIE_PHY_ATEOVRD, align 4
  %77 = load i32, i32* %7, align 4
  %78 = call i32 @pcie_phy_write(%struct.imx6_pcie* %75, i32 %76, i32 %77)
  store i32 0, i32* %2, align 4
  br label %79

79:                                               ; preds = %36, %26, %23, %20
  %80 = load i32, i32* %2, align 4
  ret i32 %80
}

declare dso_local i64 @clk_get_rate(i32) #1

declare dso_local i32 @dev_err(i32, i8*, i64) #1

declare dso_local i32 @pcie_phy_read(%struct.imx6_pcie*, i32, i32*) #1

declare dso_local i32 @pcie_phy_write(%struct.imx6_pcie*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
