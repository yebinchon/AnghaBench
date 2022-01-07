; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/meson/extr_pinctrl-meson.c_meson_pinconf_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/meson/extr_pinctrl-meson.c_meson_pinconf_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pinctrl_dev = type { i32 }
%struct.meson_pinctrl = type { i32 }

@ENOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pinctrl_dev*, i32, i64*, i32)* @meson_pinconf_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @meson_pinconf_set(%struct.pinctrl_dev* %0, i32 %1, i64* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.pinctrl_dev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.meson_pinctrl*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.pinctrl_dev* %0, %struct.pinctrl_dev** %6, align 8
  store i32 %1, i32* %7, align 4
  store i64* %2, i64** %8, align 8
  store i32 %3, i32* %9, align 4
  %15 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %6, align 8
  %16 = call %struct.meson_pinctrl* @pinctrl_dev_get_drvdata(%struct.pinctrl_dev* %15)
  store %struct.meson_pinctrl* %16, %struct.meson_pinctrl** %10, align 8
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  br label %17

17:                                               ; preds = %75, %4
  %18 = load i32, i32* %13, align 4
  %19 = load i32, i32* %9, align 4
  %20 = icmp ult i32 %18, %19
  br i1 %20, label %21, label %78

21:                                               ; preds = %17
  %22 = load i64*, i64** %8, align 8
  %23 = load i32, i32* %13, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i64, i64* %22, i64 %24
  %26 = load i64, i64* %25, align 8
  %27 = call i32 @pinconf_to_config_param(i64 %26)
  store i32 %27, i32* %11, align 4
  %28 = load i32, i32* %11, align 4
  switch i32 %28, label %36 [
    i32 130, label %29
    i32 128, label %29
    i32 129, label %29
  ]

29:                                               ; preds = %21, %21, %21
  %30 = load i64*, i64** %8, align 8
  %31 = load i32, i32* %13, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i64, i64* %30, i64 %32
  %34 = load i64, i64* %33, align 8
  %35 = call i32 @pinconf_to_config_argument(i64 %34)
  store i32 %35, i32* %12, align 4
  br label %37

36:                                               ; preds = %21
  br label %37

37:                                               ; preds = %36, %29
  %38 = load i32, i32* %11, align 4
  switch i32 %38, label %66 [
    i32 133, label %39
    i32 131, label %43
    i32 132, label %47
    i32 130, label %51
    i32 128, label %56
    i32 129, label %61
  ]

39:                                               ; preds = %37
  %40 = load %struct.meson_pinctrl*, %struct.meson_pinctrl** %10, align 8
  %41 = load i32, i32* %7, align 4
  %42 = call i32 @meson_pinconf_disable_bias(%struct.meson_pinctrl* %40, i32 %41)
  store i32 %42, i32* %14, align 4
  br label %69

43:                                               ; preds = %37
  %44 = load %struct.meson_pinctrl*, %struct.meson_pinctrl** %10, align 8
  %45 = load i32, i32* %7, align 4
  %46 = call i32 @meson_pinconf_enable_bias(%struct.meson_pinctrl* %44, i32 %45, i32 1)
  store i32 %46, i32* %14, align 4
  br label %69

47:                                               ; preds = %37
  %48 = load %struct.meson_pinctrl*, %struct.meson_pinctrl** %10, align 8
  %49 = load i32, i32* %7, align 4
  %50 = call i32 @meson_pinconf_enable_bias(%struct.meson_pinctrl* %48, i32 %49, i32 0)
  store i32 %50, i32* %14, align 4
  br label %69

51:                                               ; preds = %37
  %52 = load %struct.meson_pinctrl*, %struct.meson_pinctrl** %10, align 8
  %53 = load i32, i32* %7, align 4
  %54 = load i32, i32* %12, align 4
  %55 = call i32 @meson_pinconf_set_drive_strength(%struct.meson_pinctrl* %52, i32 %53, i32 %54)
  store i32 %55, i32* %14, align 4
  br label %69

56:                                               ; preds = %37
  %57 = load %struct.meson_pinctrl*, %struct.meson_pinctrl** %10, align 8
  %58 = load i32, i32* %7, align 4
  %59 = load i32, i32* %12, align 4
  %60 = call i32 @meson_pinconf_set_output(%struct.meson_pinctrl* %57, i32 %58, i32 %59)
  store i32 %60, i32* %14, align 4
  br label %69

61:                                               ; preds = %37
  %62 = load %struct.meson_pinctrl*, %struct.meson_pinctrl** %10, align 8
  %63 = load i32, i32* %7, align 4
  %64 = load i32, i32* %12, align 4
  %65 = call i32 @meson_pinconf_set_output_drive(%struct.meson_pinctrl* %62, i32 %63, i32 %64)
  store i32 %65, i32* %14, align 4
  br label %69

66:                                               ; preds = %37
  %67 = load i32, i32* @ENOTSUPP, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %14, align 4
  br label %69

69:                                               ; preds = %66, %61, %56, %51, %47, %43, %39
  %70 = load i32, i32* %14, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %69
  %73 = load i32, i32* %14, align 4
  store i32 %73, i32* %5, align 4
  br label %79

74:                                               ; preds = %69
  br label %75

75:                                               ; preds = %74
  %76 = load i32, i32* %13, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %13, align 4
  br label %17

78:                                               ; preds = %17
  store i32 0, i32* %5, align 4
  br label %79

79:                                               ; preds = %78, %72
  %80 = load i32, i32* %5, align 4
  ret i32 %80
}

declare dso_local %struct.meson_pinctrl* @pinctrl_dev_get_drvdata(%struct.pinctrl_dev*) #1

declare dso_local i32 @pinconf_to_config_param(i64) #1

declare dso_local i32 @pinconf_to_config_argument(i64) #1

declare dso_local i32 @meson_pinconf_disable_bias(%struct.meson_pinctrl*, i32) #1

declare dso_local i32 @meson_pinconf_enable_bias(%struct.meson_pinctrl*, i32, i32) #1

declare dso_local i32 @meson_pinconf_set_drive_strength(%struct.meson_pinctrl*, i32, i32) #1

declare dso_local i32 @meson_pinconf_set_output(%struct.meson_pinctrl*, i32, i32) #1

declare dso_local i32 @meson_pinconf_set_output_drive(%struct.meson_pinctrl*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
