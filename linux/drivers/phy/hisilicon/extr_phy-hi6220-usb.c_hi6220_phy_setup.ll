; ModuleID = '/home/carl/AnghaBench/linux/drivers/phy/hisilicon/extr_phy-hi6220-usb.c_hi6220_phy_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/phy/hisilicon/extr_phy-hi6220-usb.c_hi6220_phy_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hi6220_priv = type { i32, %struct.regmap* }
%struct.regmap = type { i32 }

@CTRL5_USBOTG_RES_SEL = common dso_local global i32 0, align 4
@CTRL5_PICOPHY_ACAENB = common dso_local global i32 0, align 4
@CTRL5_PICOPHY_BC_MODE = common dso_local global i32 0, align 4
@SC_PERIPH_CTRL5 = common dso_local global i32 0, align 4
@CTRL4_PICO_VBUSVLDEXT = common dso_local global i32 0, align 4
@CTRL4_PICO_VBUSVLDEXTSEL = common dso_local global i32 0, align 4
@CTRL4_OTG_PHY_SEL = common dso_local global i32 0, align 4
@CTRL4_PICO_SIDDQ = common dso_local global i32 0, align 4
@CTRL4_PICO_OGDISABLE = common dso_local global i32 0, align 4
@SC_PERIPH_CTRL4 = common dso_local global i32 0, align 4
@SC_PERIPH_CTRL8 = common dso_local global i32 0, align 4
@EYE_PATTERN_PARA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"failed to setup phy ret: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hi6220_priv*, i32)* @hi6220_phy_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hi6220_phy_setup(%struct.hi6220_priv* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hi6220_priv*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.regmap*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.hi6220_priv* %0, %struct.hi6220_priv** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.hi6220_priv*, %struct.hi6220_priv** %4, align 8
  %11 = getelementptr inbounds %struct.hi6220_priv, %struct.hi6220_priv* %10, i32 0, i32 1
  %12 = load %struct.regmap*, %struct.regmap** %11, align 8
  store %struct.regmap* %12, %struct.regmap** %6, align 8
  %13 = load i32, i32* %5, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %58

15:                                               ; preds = %2
  %16 = load i32, i32* @CTRL5_USBOTG_RES_SEL, align 4
  %17 = load i32, i32* @CTRL5_PICOPHY_ACAENB, align 4
  %18 = or i32 %16, %17
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* %7, align 4
  %20 = load i32, i32* @CTRL5_PICOPHY_BC_MODE, align 4
  %21 = or i32 %19, %20
  store i32 %21, i32* %8, align 4
  %22 = load %struct.regmap*, %struct.regmap** %6, align 8
  %23 = load i32, i32* @SC_PERIPH_CTRL5, align 4
  %24 = load i32, i32* %8, align 4
  %25 = load i32, i32* %7, align 4
  %26 = call i32 @regmap_update_bits(%struct.regmap* %22, i32 %23, i32 %24, i32 %25)
  store i32 %26, i32* %9, align 4
  %27 = load i32, i32* %9, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %15
  br label %71

30:                                               ; preds = %15
  %31 = load i32, i32* @CTRL4_PICO_VBUSVLDEXT, align 4
  %32 = load i32, i32* @CTRL4_PICO_VBUSVLDEXTSEL, align 4
  %33 = or i32 %31, %32
  %34 = load i32, i32* @CTRL4_OTG_PHY_SEL, align 4
  %35 = or i32 %33, %34
  store i32 %35, i32* %7, align 4
  %36 = load i32, i32* %7, align 4
  %37 = load i32, i32* @CTRL4_PICO_SIDDQ, align 4
  %38 = or i32 %36, %37
  %39 = load i32, i32* @CTRL4_PICO_OGDISABLE, align 4
  %40 = or i32 %38, %39
  store i32 %40, i32* %8, align 4
  %41 = load %struct.regmap*, %struct.regmap** %6, align 8
  %42 = load i32, i32* @SC_PERIPH_CTRL4, align 4
  %43 = load i32, i32* %8, align 4
  %44 = load i32, i32* %7, align 4
  %45 = call i32 @regmap_update_bits(%struct.regmap* %41, i32 %42, i32 %43, i32 %44)
  store i32 %45, i32* %9, align 4
  %46 = load i32, i32* %9, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %30
  br label %71

49:                                               ; preds = %30
  %50 = load %struct.regmap*, %struct.regmap** %6, align 8
  %51 = load i32, i32* @SC_PERIPH_CTRL8, align 4
  %52 = load i32, i32* @EYE_PATTERN_PARA, align 4
  %53 = call i32 @regmap_write(%struct.regmap* %50, i32 %51, i32 %52)
  store i32 %53, i32* %9, align 4
  %54 = load i32, i32* %9, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %49
  br label %71

57:                                               ; preds = %49
  br label %70

58:                                               ; preds = %2
  %59 = load i32, i32* @CTRL4_PICO_SIDDQ, align 4
  store i32 %59, i32* %7, align 4
  %60 = load i32, i32* %7, align 4
  store i32 %60, i32* %8, align 4
  %61 = load %struct.regmap*, %struct.regmap** %6, align 8
  %62 = load i32, i32* @SC_PERIPH_CTRL4, align 4
  %63 = load i32, i32* %8, align 4
  %64 = load i32, i32* %7, align 4
  %65 = call i32 @regmap_update_bits(%struct.regmap* %61, i32 %62, i32 %63, i32 %64)
  store i32 %65, i32* %9, align 4
  %66 = load i32, i32* %9, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %58
  br label %71

69:                                               ; preds = %58
  br label %70

70:                                               ; preds = %69, %57
  store i32 0, i32* %3, align 4
  br label %78

71:                                               ; preds = %68, %56, %48, %29
  %72 = load %struct.hi6220_priv*, %struct.hi6220_priv** %4, align 8
  %73 = getelementptr inbounds %struct.hi6220_priv, %struct.hi6220_priv* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = load i32, i32* %9, align 4
  %76 = call i32 @dev_err(i32 %74, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %75)
  %77 = load i32, i32* %9, align 4
  store i32 %77, i32* %3, align 4
  br label %78

78:                                               ; preds = %71, %70
  %79 = load i32, i32* %3, align 4
  ret i32 %79
}

declare dso_local i32 @regmap_update_bits(%struct.regmap*, i32, i32, i32) #1

declare dso_local i32 @regmap_write(%struct.regmap*, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
