; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-gemini.c_gemini_pinconf_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-gemini.c_gemini_pinconf_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pinctrl_dev = type { i32 }
%struct.gemini_pmx = type { i32 }
%struct.gemini_pin_conf = type { i32, i32 }

@ENOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pinctrl_dev*, i32, i64*)* @gemini_pinconf_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gemini_pinconf_get(%struct.pinctrl_dev* %0, i32 %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pinctrl_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64*, align 8
  %8 = alloca %struct.gemini_pmx*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.gemini_pin_conf*, align 8
  %11 = alloca i32, align 4
  store %struct.pinctrl_dev* %0, %struct.pinctrl_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64* %2, i64** %7, align 8
  %12 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %5, align 8
  %13 = call %struct.gemini_pmx* @pinctrl_dev_get_drvdata(%struct.pinctrl_dev* %12)
  store %struct.gemini_pmx* %13, %struct.gemini_pmx** %8, align 8
  %14 = load i64*, i64** %7, align 8
  %15 = load i64, i64* %14, align 8
  %16 = call i32 @pinconf_to_config_param(i64 %15)
  store i32 %16, i32* %9, align 4
  %17 = load i32, i32* %9, align 4
  switch i32 %17, label %50 [
    i32 128, label %18
  ]

18:                                               ; preds = %3
  %19 = load %struct.gemini_pmx*, %struct.gemini_pmx** %8, align 8
  %20 = load i32, i32* %6, align 4
  %21 = call %struct.gemini_pin_conf* @gemini_get_pin_conf(%struct.gemini_pmx* %19, i32 %20)
  store %struct.gemini_pin_conf* %21, %struct.gemini_pin_conf** %10, align 8
  %22 = load %struct.gemini_pin_conf*, %struct.gemini_pin_conf** %10, align 8
  %23 = icmp ne %struct.gemini_pin_conf* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %18
  %25 = load i32, i32* @ENOTSUPP, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %4, align 4
  br label %54

27:                                               ; preds = %18
  %28 = load %struct.gemini_pmx*, %struct.gemini_pmx** %8, align 8
  %29 = getelementptr inbounds %struct.gemini_pmx, %struct.gemini_pmx* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.gemini_pin_conf*, %struct.gemini_pin_conf** %10, align 8
  %32 = getelementptr inbounds %struct.gemini_pin_conf, %struct.gemini_pin_conf* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @regmap_read(i32 %30, i32 %33, i32* %11)
  %35 = load %struct.gemini_pin_conf*, %struct.gemini_pin_conf** %10, align 8
  %36 = getelementptr inbounds %struct.gemini_pin_conf, %struct.gemini_pin_conf* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* %11, align 4
  %39 = and i32 %38, %37
  store i32 %39, i32* %11, align 4
  %40 = load %struct.gemini_pin_conf*, %struct.gemini_pin_conf** %10, align 8
  %41 = getelementptr inbounds %struct.gemini_pin_conf, %struct.gemini_pin_conf* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @ffs(i32 %42)
  %44 = sub nsw i32 %43, 1
  %45 = load i32, i32* %11, align 4
  %46 = ashr i32 %45, %44
  store i32 %46, i32* %11, align 4
  %47 = load i32, i32* %11, align 4
  %48 = call i64 @pinconf_to_config_packed(i32 128, i32 %47)
  %49 = load i64*, i64** %7, align 8
  store i64 %48, i64* %49, align 8
  br label %53

50:                                               ; preds = %3
  %51 = load i32, i32* @ENOTSUPP, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %4, align 4
  br label %54

53:                                               ; preds = %27
  store i32 0, i32* %4, align 4
  br label %54

54:                                               ; preds = %53, %50, %24
  %55 = load i32, i32* %4, align 4
  ret i32 %55
}

declare dso_local %struct.gemini_pmx* @pinctrl_dev_get_drvdata(%struct.pinctrl_dev*) #1

declare dso_local i32 @pinconf_to_config_param(i64) #1

declare dso_local %struct.gemini_pin_conf* @gemini_get_pin_conf(%struct.gemini_pmx*, i32) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @ffs(i32) #1

declare dso_local i64 @pinconf_to_config_packed(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
