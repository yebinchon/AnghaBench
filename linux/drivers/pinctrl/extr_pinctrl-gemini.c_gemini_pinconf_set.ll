; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-gemini.c_gemini_pinconf_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-gemini.c_gemini_pinconf_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pinctrl_dev = type { i32 }
%struct.gemini_pmx = type { i32, i32 }
%struct.gemini_pin_conf = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"invalid pin for skew delay %d\0A\00", align 1
@ENOTSUPP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [46 x i8] c"set pin %d to skew delay mask %08x, val %08x\0A\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"Invalid config param %04x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pinctrl_dev*, i32, i64*, i32)* @gemini_pinconf_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gemini_pinconf_set(%struct.pinctrl_dev* %0, i32 %1, i64* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.pinctrl_dev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.gemini_pmx*, align 8
  %11 = alloca %struct.gemini_pin_conf*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.pinctrl_dev* %0, %struct.pinctrl_dev** %6, align 8
  store i32 %1, i32* %7, align 4
  store i64* %2, i64** %8, align 8
  store i32 %3, i32* %9, align 4
  %16 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %6, align 8
  %17 = call %struct.gemini_pmx* @pinctrl_dev_get_drvdata(%struct.pinctrl_dev* %16)
  store %struct.gemini_pmx* %17, %struct.gemini_pmx** %10, align 8
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  br label %18

18:                                               ; preds = %93, %4
  %19 = load i32, i32* %15, align 4
  %20 = load i32, i32* %9, align 4
  %21 = icmp ult i32 %19, %20
  br i1 %21, label %22, label %96

22:                                               ; preds = %18
  %23 = load i64*, i64** %8, align 8
  %24 = load i32, i32* %15, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i64, i64* %23, i64 %25
  %27 = load i64, i64* %26, align 8
  %28 = call i32 @pinconf_to_config_param(i64 %27)
  store i32 %28, i32* %12, align 4
  %29 = load i64*, i64** %8, align 8
  %30 = load i32, i32* %15, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i64, i64* %29, i64 %31
  %33 = load i64, i64* %32, align 8
  %34 = call i32 @pinconf_to_config_argument(i64 %33)
  store i32 %34, i32* %13, align 4
  %35 = load i32, i32* %12, align 4
  switch i32 %35, label %84 [
    i32 128, label %36
  ]

36:                                               ; preds = %22
  %37 = load i32, i32* %13, align 4
  %38 = icmp sgt i32 %37, 15
  br i1 %38, label %39, label %42

39:                                               ; preds = %36
  %40 = load i32, i32* @EINVAL, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %5, align 4
  br label %98

42:                                               ; preds = %36
  %43 = load %struct.gemini_pmx*, %struct.gemini_pmx** %10, align 8
  %44 = load i32, i32* %7, align 4
  %45 = call %struct.gemini_pin_conf* @gemini_get_pin_conf(%struct.gemini_pmx* %43, i32 %44)
  store %struct.gemini_pin_conf* %45, %struct.gemini_pin_conf** %11, align 8
  %46 = load %struct.gemini_pin_conf*, %struct.gemini_pin_conf** %11, align 8
  %47 = icmp ne %struct.gemini_pin_conf* %46, null
  br i1 %47, label %56, label %48

48:                                               ; preds = %42
  %49 = load %struct.gemini_pmx*, %struct.gemini_pmx** %10, align 8
  %50 = getelementptr inbounds %struct.gemini_pmx, %struct.gemini_pmx* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* %7, align 4
  %53 = call i32 @dev_err(i32 %51, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %52)
  %54 = load i32, i32* @ENOTSUPP, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %5, align 4
  br label %98

56:                                               ; preds = %42
  %57 = load %struct.gemini_pin_conf*, %struct.gemini_pin_conf** %11, align 8
  %58 = getelementptr inbounds %struct.gemini_pin_conf, %struct.gemini_pin_conf* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @ffs(i32 %59)
  %61 = sub nsw i32 %60, 1
  %62 = load i32, i32* %13, align 4
  %63 = shl i32 %62, %61
  store i32 %63, i32* %13, align 4
  %64 = load %struct.gemini_pmx*, %struct.gemini_pmx** %10, align 8
  %65 = getelementptr inbounds %struct.gemini_pmx, %struct.gemini_pmx* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* %7, align 4
  %68 = load %struct.gemini_pin_conf*, %struct.gemini_pin_conf** %11, align 8
  %69 = getelementptr inbounds %struct.gemini_pin_conf, %struct.gemini_pin_conf* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* %13, align 4
  %72 = call i32 @dev_dbg(i32 %66, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), i32 %67, i32 %70, i32 %71)
  %73 = load %struct.gemini_pmx*, %struct.gemini_pmx** %10, align 8
  %74 = getelementptr inbounds %struct.gemini_pmx, %struct.gemini_pmx* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.gemini_pin_conf*, %struct.gemini_pin_conf** %11, align 8
  %77 = getelementptr inbounds %struct.gemini_pin_conf, %struct.gemini_pin_conf* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.gemini_pin_conf*, %struct.gemini_pin_conf** %11, align 8
  %80 = getelementptr inbounds %struct.gemini_pin_conf, %struct.gemini_pin_conf* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* %13, align 4
  %83 = call i32 @regmap_update_bits(i32 %75, i32 %78, i32 %81, i32 %82)
  br label %92

84:                                               ; preds = %22
  %85 = load %struct.gemini_pmx*, %struct.gemini_pmx** %10, align 8
  %86 = getelementptr inbounds %struct.gemini_pmx, %struct.gemini_pmx* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* %12, align 4
  %89 = call i32 @dev_err(i32 %87, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i32 %88)
  %90 = load i32, i32* @ENOTSUPP, align 4
  %91 = sub nsw i32 0, %90
  store i32 %91, i32* %5, align 4
  br label %98

92:                                               ; preds = %56
  br label %93

93:                                               ; preds = %92
  %94 = load i32, i32* %15, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %15, align 4
  br label %18

96:                                               ; preds = %18
  %97 = load i32, i32* %14, align 4
  store i32 %97, i32* %5, align 4
  br label %98

98:                                               ; preds = %96, %84, %48, %39
  %99 = load i32, i32* %5, align 4
  ret i32 %99
}

declare dso_local %struct.gemini_pmx* @pinctrl_dev_get_drvdata(%struct.pinctrl_dev*) #1

declare dso_local i32 @pinconf_to_config_param(i64) #1

declare dso_local i32 @pinconf_to_config_argument(i64) #1

declare dso_local %struct.gemini_pin_conf* @gemini_get_pin_conf(%struct.gemini_pmx*, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @ffs(i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32, i32) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
