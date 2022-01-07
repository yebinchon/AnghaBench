; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/controller/dwc/extr_pcie-kirin.c_kirin_pcie_power_on.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/controller/dwc/extr_pcie-kirin.c_kirin_pcie_power_on.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kirin_pcie = type { i32, i32, i32 }

@SCTRL_PCIE_CMOS_OFFSET = common dso_local global i32 0, align 4
@SCTRL_PCIE_CMOS_BIT = common dso_local global i32 0, align 4
@TIME_CMOS_MIN = common dso_local global i32 0, align 4
@TIME_CMOS_MAX = common dso_local global i32 0, align 4
@SCTRL_PCIE_ISO_OFFSET = common dso_local global i32 0, align 4
@SCTRL_PCIE_ISO_BIT = common dso_local global i32 0, align 4
@CRGCTRL_PCIE_ASSERT_OFFSET = common dso_local global i32 0, align 4
@CRGCTRL_PCIE_ASSERT_BIT = common dso_local global i32 0, align 4
@SCTRL_PCIE_HPCLK_OFFSET = common dso_local global i32 0, align 4
@SCTRL_PCIE_HPCLK_BIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"pcie_perst\00", align 1
@REF_2_PERST_MIN = common dso_local global i32 0, align 4
@REF_2_PERST_MAX = common dso_local global i32 0, align 4
@PERST_2_ACCESS_MIN = common dso_local global i32 0, align 4
@PERST_2_ACCESS_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kirin_pcie*)* @kirin_pcie_power_on to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kirin_pcie_power_on(%struct.kirin_pcie* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.kirin_pcie*, align 8
  %4 = alloca i32, align 4
  store %struct.kirin_pcie* %0, %struct.kirin_pcie** %3, align 8
  %5 = load %struct.kirin_pcie*, %struct.kirin_pcie** %3, align 8
  %6 = getelementptr inbounds %struct.kirin_pcie, %struct.kirin_pcie* %5, i32 0, i32 1
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* @SCTRL_PCIE_CMOS_OFFSET, align 4
  %9 = load i32, i32* @SCTRL_PCIE_CMOS_BIT, align 4
  %10 = call i32 @regmap_write(i32 %7, i32 %8, i32 %9)
  %11 = load i32, i32* @TIME_CMOS_MIN, align 4
  %12 = load i32, i32* @TIME_CMOS_MAX, align 4
  %13 = call i32 @usleep_range(i32 %11, i32 %12)
  %14 = load %struct.kirin_pcie*, %struct.kirin_pcie** %3, align 8
  %15 = call i32 @kirin_pcie_oe_enable(%struct.kirin_pcie* %14)
  %16 = load %struct.kirin_pcie*, %struct.kirin_pcie** %3, align 8
  %17 = call i32 @kirin_pcie_clk_ctrl(%struct.kirin_pcie* %16, i32 1)
  store i32 %17, i32* %4, align 4
  %18 = load i32, i32* %4, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %1
  %21 = load i32, i32* %4, align 4
  store i32 %21, i32* %2, align 4
  br label %72

22:                                               ; preds = %1
  %23 = load %struct.kirin_pcie*, %struct.kirin_pcie** %3, align 8
  %24 = getelementptr inbounds %struct.kirin_pcie, %struct.kirin_pcie* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @SCTRL_PCIE_ISO_OFFSET, align 4
  %27 = load i32, i32* @SCTRL_PCIE_ISO_BIT, align 4
  %28 = call i32 @regmap_write(i32 %25, i32 %26, i32 %27)
  %29 = load %struct.kirin_pcie*, %struct.kirin_pcie** %3, align 8
  %30 = getelementptr inbounds %struct.kirin_pcie, %struct.kirin_pcie* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @CRGCTRL_PCIE_ASSERT_OFFSET, align 4
  %33 = load i32, i32* @CRGCTRL_PCIE_ASSERT_BIT, align 4
  %34 = call i32 @regmap_write(i32 %31, i32 %32, i32 %33)
  %35 = load %struct.kirin_pcie*, %struct.kirin_pcie** %3, align 8
  %36 = getelementptr inbounds %struct.kirin_pcie, %struct.kirin_pcie* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @SCTRL_PCIE_HPCLK_OFFSET, align 4
  %39 = load i32, i32* @SCTRL_PCIE_HPCLK_BIT, align 4
  %40 = call i32 @regmap_write(i32 %37, i32 %38, i32 %39)
  %41 = load %struct.kirin_pcie*, %struct.kirin_pcie** %3, align 8
  %42 = call i32 @kirin_pcie_phy_init(%struct.kirin_pcie* %41)
  store i32 %42, i32* %4, align 4
  %43 = load i32, i32* %4, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %22
  br label %68

46:                                               ; preds = %22
  %47 = load %struct.kirin_pcie*, %struct.kirin_pcie** %3, align 8
  %48 = getelementptr inbounds %struct.kirin_pcie, %struct.kirin_pcie* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @gpio_request(i32 %49, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %67, label %52

52:                                               ; preds = %46
  %53 = load i32, i32* @REF_2_PERST_MIN, align 4
  %54 = load i32, i32* @REF_2_PERST_MAX, align 4
  %55 = call i32 @usleep_range(i32 %53, i32 %54)
  %56 = load %struct.kirin_pcie*, %struct.kirin_pcie** %3, align 8
  %57 = getelementptr inbounds %struct.kirin_pcie, %struct.kirin_pcie* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @gpio_direction_output(i32 %58, i32 1)
  store i32 %59, i32* %4, align 4
  %60 = load i32, i32* %4, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %52
  br label %68

63:                                               ; preds = %52
  %64 = load i32, i32* @PERST_2_ACCESS_MIN, align 4
  %65 = load i32, i32* @PERST_2_ACCESS_MAX, align 4
  %66 = call i32 @usleep_range(i32 %64, i32 %65)
  store i32 0, i32* %2, align 4
  br label %72

67:                                               ; preds = %46
  br label %68

68:                                               ; preds = %67, %62, %45
  %69 = load %struct.kirin_pcie*, %struct.kirin_pcie** %3, align 8
  %70 = call i32 @kirin_pcie_clk_ctrl(%struct.kirin_pcie* %69, i32 0)
  %71 = load i32, i32* %4, align 4
  store i32 %71, i32* %2, align 4
  br label %72

72:                                               ; preds = %68, %63, %20
  %73 = load i32, i32* %2, align 4
  ret i32 %73
}

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @kirin_pcie_oe_enable(%struct.kirin_pcie*) #1

declare dso_local i32 @kirin_pcie_clk_ctrl(%struct.kirin_pcie*, i32) #1

declare dso_local i32 @kirin_pcie_phy_init(%struct.kirin_pcie*) #1

declare dso_local i32 @gpio_request(i32, i8*) #1

declare dso_local i32 @gpio_direction_output(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
