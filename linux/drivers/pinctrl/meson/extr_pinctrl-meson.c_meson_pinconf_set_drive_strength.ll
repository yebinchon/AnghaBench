; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/meson/extr_pinctrl-meson.c_meson_pinconf_set_drive_strength.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/meson/extr_pinctrl-meson.c_meson_pinconf_set_drive_strength.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.meson_pinctrl = type { i32, i32 }
%struct.meson_bank = type { i32 }

@.str = private unnamed_addr constant [30 x i8] c"drive-strength not supported\0A\00", align 1
@ENOTSUPP = common dso_local global i32 0, align 4
@REG_DS = common dso_local global i32 0, align 4
@MESON_PINCONF_DRV_500UA = common dso_local global i32 0, align 4
@MESON_PINCONF_DRV_2500UA = common dso_local global i32 0, align 4
@MESON_PINCONF_DRV_3000UA = common dso_local global i32 0, align 4
@MESON_PINCONF_DRV_4000UA = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [54 x i8] c"pin %u: invalid drive-strength : %d , default to 4mA\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.meson_pinctrl*, i32, i32)* @meson_pinconf_set_drive_strength to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @meson_pinconf_set_drive_strength(%struct.meson_pinctrl* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.meson_pinctrl*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.meson_bank*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.meson_pinctrl* %0, %struct.meson_pinctrl** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %13 = load %struct.meson_pinctrl*, %struct.meson_pinctrl** %5, align 8
  %14 = getelementptr inbounds %struct.meson_pinctrl, %struct.meson_pinctrl* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %24, label %17

17:                                               ; preds = %3
  %18 = load %struct.meson_pinctrl*, %struct.meson_pinctrl** %5, align 8
  %19 = getelementptr inbounds %struct.meson_pinctrl, %struct.meson_pinctrl* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @dev_err(i32 %20, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %22 = load i32, i32* @ENOTSUPP, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %4, align 4
  br label %85

24:                                               ; preds = %3
  %25 = load %struct.meson_pinctrl*, %struct.meson_pinctrl** %5, align 8
  %26 = load i32, i32* %6, align 4
  %27 = call i32 @meson_get_bank(%struct.meson_pinctrl* %25, i32 %26, %struct.meson_bank** %8)
  store i32 %27, i32* %12, align 4
  %28 = load i32, i32* %12, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %24
  %31 = load i32, i32* %12, align 4
  store i32 %31, i32* %4, align 4
  br label %85

32:                                               ; preds = %24
  %33 = load %struct.meson_bank*, %struct.meson_bank** %8, align 8
  %34 = load i32, i32* %6, align 4
  %35 = load i32, i32* @REG_DS, align 4
  %36 = call i32 @meson_calc_reg_and_bit(%struct.meson_bank* %33, i32 %34, i32 %35, i32* %9, i32* %10)
  %37 = load i32, i32* %10, align 4
  %38 = shl i32 %37, 1
  store i32 %38, i32* %10, align 4
  %39 = load i32, i32* %7, align 4
  %40 = icmp sle i32 %39, 500
  br i1 %40, label %41, label %43

41:                                               ; preds = %32
  %42 = load i32, i32* @MESON_PINCONF_DRV_500UA, align 4
  store i32 %42, i32* %11, align 4
  br label %69

43:                                               ; preds = %32
  %44 = load i32, i32* %7, align 4
  %45 = icmp sle i32 %44, 2500
  br i1 %45, label %46, label %48

46:                                               ; preds = %43
  %47 = load i32, i32* @MESON_PINCONF_DRV_2500UA, align 4
  store i32 %47, i32* %11, align 4
  br label %68

48:                                               ; preds = %43
  %49 = load i32, i32* %7, align 4
  %50 = icmp sle i32 %49, 3000
  br i1 %50, label %51, label %53

51:                                               ; preds = %48
  %52 = load i32, i32* @MESON_PINCONF_DRV_3000UA, align 4
  store i32 %52, i32* %11, align 4
  br label %67

53:                                               ; preds = %48
  %54 = load i32, i32* %7, align 4
  %55 = icmp sle i32 %54, 4000
  br i1 %55, label %56, label %58

56:                                               ; preds = %53
  %57 = load i32, i32* @MESON_PINCONF_DRV_4000UA, align 4
  store i32 %57, i32* %11, align 4
  br label %66

58:                                               ; preds = %53
  %59 = load %struct.meson_pinctrl*, %struct.meson_pinctrl** %5, align 8
  %60 = getelementptr inbounds %struct.meson_pinctrl, %struct.meson_pinctrl* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* %6, align 4
  %63 = load i32, i32* %7, align 4
  %64 = call i32 @dev_warn_once(i32 %61, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i64 0, i64 0), i32 %62, i32 %63)
  %65 = load i32, i32* @MESON_PINCONF_DRV_4000UA, align 4
  store i32 %65, i32* %11, align 4
  br label %66

66:                                               ; preds = %58, %56
  br label %67

67:                                               ; preds = %66, %51
  br label %68

68:                                               ; preds = %67, %46
  br label %69

69:                                               ; preds = %68, %41
  %70 = load %struct.meson_pinctrl*, %struct.meson_pinctrl** %5, align 8
  %71 = getelementptr inbounds %struct.meson_pinctrl, %struct.meson_pinctrl* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* %9, align 4
  %74 = load i32, i32* %10, align 4
  %75 = shl i32 3, %74
  %76 = load i32, i32* %11, align 4
  %77 = load i32, i32* %10, align 4
  %78 = shl i32 %76, %77
  %79 = call i32 @regmap_update_bits(i32 %72, i32 %73, i32 %75, i32 %78)
  store i32 %79, i32* %12, align 4
  %80 = load i32, i32* %12, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %69
  %83 = load i32, i32* %12, align 4
  store i32 %83, i32* %4, align 4
  br label %85

84:                                               ; preds = %69
  store i32 0, i32* %4, align 4
  br label %85

85:                                               ; preds = %84, %82, %30, %17
  %86 = load i32, i32* %4, align 4
  ret i32 %86
}

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @meson_get_bank(%struct.meson_pinctrl*, i32, %struct.meson_bank**) #1

declare dso_local i32 @meson_calc_reg_and_bit(%struct.meson_bank*, i32, i32, i32*, i32*) #1

declare dso_local i32 @dev_warn_once(i32, i8*, i32, i32) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
