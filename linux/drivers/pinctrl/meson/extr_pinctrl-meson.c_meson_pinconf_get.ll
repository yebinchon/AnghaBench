; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/meson/extr_pinctrl-meson.c_meson_pinconf_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/meson/extr_pinctrl-meson.c_meson_pinconf_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pinctrl_dev = type { i32 }
%struct.meson_pinctrl = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@ENOTSUPP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"pinconf for pin %u is %lu\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pinctrl_dev*, i32, i64*)* @meson_pinconf_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @meson_pinconf_get(%struct.pinctrl_dev* %0, i32 %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pinctrl_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64*, align 8
  %8 = alloca %struct.meson_pinctrl*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.pinctrl_dev* %0, %struct.pinctrl_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64* %2, i64** %7, align 8
  %12 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %5, align 8
  %13 = call %struct.meson_pinctrl* @pinctrl_dev_get_drvdata(%struct.pinctrl_dev* %12)
  store %struct.meson_pinctrl* %13, %struct.meson_pinctrl** %8, align 8
  %14 = load i64*, i64** %7, align 8
  %15 = load i64, i64* %14, align 8
  %16 = call i32 @pinconf_to_config_param(i64 %15)
  store i32 %16, i32* %9, align 4
  %17 = load i32, i32* %9, align 4
  switch i32 %17, label %68 [
    i32 133, label %18
    i32 132, label %18
    i32 131, label %18
    i32 130, label %29
    i32 128, label %38
    i32 129, label %48
  ]

18:                                               ; preds = %3, %3, %3
  %19 = load %struct.meson_pinctrl*, %struct.meson_pinctrl** %8, align 8
  %20 = load i32, i32* %6, align 4
  %21 = call i32 @meson_pinconf_get_pull(%struct.meson_pinctrl* %19, i32 %20)
  %22 = load i32, i32* %9, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %18
  store i32 1, i32* %10, align 4
  br label %28

25:                                               ; preds = %18
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %4, align 4
  br label %83

28:                                               ; preds = %24
  br label %71

29:                                               ; preds = %3
  %30 = load %struct.meson_pinctrl*, %struct.meson_pinctrl** %8, align 8
  %31 = load i32, i32* %6, align 4
  %32 = call i32 @meson_pinconf_get_drive_strength(%struct.meson_pinctrl* %30, i32 %31, i32* %10)
  store i32 %32, i32* %11, align 4
  %33 = load i32, i32* %11, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %29
  %36 = load i32, i32* %11, align 4
  store i32 %36, i32* %4, align 4
  br label %83

37:                                               ; preds = %29
  br label %71

38:                                               ; preds = %3
  %39 = load %struct.meson_pinctrl*, %struct.meson_pinctrl** %8, align 8
  %40 = load i32, i32* %6, align 4
  %41 = call i32 @meson_pinconf_get_output(%struct.meson_pinctrl* %39, i32 %40)
  store i32 %41, i32* %11, align 4
  %42 = load i32, i32* %11, align 4
  %43 = icmp sle i32 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %38
  %45 = load i32, i32* @EINVAL, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %4, align 4
  br label %83

47:                                               ; preds = %38
  store i32 1, i32* %10, align 4
  br label %71

48:                                               ; preds = %3
  %49 = load %struct.meson_pinctrl*, %struct.meson_pinctrl** %8, align 8
  %50 = load i32, i32* %6, align 4
  %51 = call i32 @meson_pinconf_get_output(%struct.meson_pinctrl* %49, i32 %50)
  store i32 %51, i32* %11, align 4
  %52 = load i32, i32* %11, align 4
  %53 = icmp sle i32 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %48
  %55 = load i32, i32* @EINVAL, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %4, align 4
  br label %83

57:                                               ; preds = %48
  %58 = load %struct.meson_pinctrl*, %struct.meson_pinctrl** %8, align 8
  %59 = load i32, i32* %6, align 4
  %60 = call i32 @meson_pinconf_get_drive(%struct.meson_pinctrl* %58, i32 %59)
  store i32 %60, i32* %11, align 4
  %61 = load i32, i32* %11, align 4
  %62 = icmp slt i32 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %57
  %64 = load i32, i32* @EINVAL, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %4, align 4
  br label %83

66:                                               ; preds = %57
  %67 = load i32, i32* %11, align 4
  store i32 %67, i32* %10, align 4
  br label %71

68:                                               ; preds = %3
  %69 = load i32, i32* @ENOTSUPP, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %4, align 4
  br label %83

71:                                               ; preds = %66, %47, %37, %28
  %72 = load i32, i32* %9, align 4
  %73 = load i32, i32* %10, align 4
  %74 = call i64 @pinconf_to_config_packed(i32 %72, i32 %73)
  %75 = load i64*, i64** %7, align 8
  store i64 %74, i64* %75, align 8
  %76 = load %struct.meson_pinctrl*, %struct.meson_pinctrl** %8, align 8
  %77 = getelementptr inbounds %struct.meson_pinctrl, %struct.meson_pinctrl* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* %6, align 4
  %80 = load i64*, i64** %7, align 8
  %81 = load i64, i64* %80, align 8
  %82 = call i32 @dev_dbg(i32 %78, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %79, i64 %81)
  store i32 0, i32* %4, align 4
  br label %83

83:                                               ; preds = %71, %68, %63, %54, %44, %35, %25
  %84 = load i32, i32* %4, align 4
  ret i32 %84
}

declare dso_local %struct.meson_pinctrl* @pinctrl_dev_get_drvdata(%struct.pinctrl_dev*) #1

declare dso_local i32 @pinconf_to_config_param(i64) #1

declare dso_local i32 @meson_pinconf_get_pull(%struct.meson_pinctrl*, i32) #1

declare dso_local i32 @meson_pinconf_get_drive_strength(%struct.meson_pinctrl*, i32, i32*) #1

declare dso_local i32 @meson_pinconf_get_output(%struct.meson_pinctrl*, i32) #1

declare dso_local i32 @meson_pinconf_get_drive(%struct.meson_pinctrl*, i32) #1

declare dso_local i64 @pinconf_to_config_packed(i32, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
