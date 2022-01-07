; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/sirf/extr_pinctrl-atlas7.c_atlas7_pin_config_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/sirf/extr_pinctrl-atlas7.c_atlas7_pin_config_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.pinctrl_dev = type { i32 }

@.str = private unnamed_addr constant [63 x i8] c"PMX CFG###### ATLAS7 PIN#%d [%s] CONFIG PARAM:%d ARG:%d >>>>>\0A\00", align 1
@atlas7_ioc_pads = common dso_local global %struct.TYPE_2__* null, align 8
@PULL_UP = common dso_local global i32 0, align 4
@PULL_DOWN = common dso_local global i32 0, align 4
@HIGH_HYSTERESIS = common dso_local global i32 0, align 4
@HIGH_Z = common dso_local global i32 0, align 4
@ENOTSUPP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [62 x i8] c"PMX CFG###### ATLAS7 PIN#%d [%s] CONFIG PARAM:%d ARG:%d <<<<\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pinctrl_dev*, i32, i64*, i32)* @atlas7_pin_config_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atlas7_pin_config_set(%struct.pinctrl_dev* %0, i32 %1, i64* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.pinctrl_dev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.pinctrl_dev* %0, %struct.pinctrl_dev** %6, align 8
  store i32 %1, i32* %7, align 4
  store i64* %2, i64** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %12, align 4
  br label %14

14:                                               ; preds = %106, %4
  %15 = load i32, i32* %12, align 4
  %16 = load i32, i32* %9, align 4
  %17 = icmp ult i32 %15, %16
  br i1 %17, label %18, label %109

18:                                               ; preds = %14
  %19 = load i64*, i64** %8, align 8
  %20 = load i32, i32* %12, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i64, i64* %19, i64 %21
  %23 = load i64, i64* %22, align 8
  %24 = call i32 @pinconf_to_config_param(i64 %23)
  store i32 %24, i32* %10, align 4
  %25 = load i64*, i64** %8, align 8
  %26 = load i32, i32* %12, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i64, i64* %25, i64 %27
  %29 = load i64, i64* %28, align 8
  %30 = call i32 @pinconf_to_config_argument(i64 %29)
  store i32 %30, i32* %11, align 4
  %31 = load i32, i32* %7, align 4
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** @atlas7_ioc_pads, align 8
  %33 = load i32, i32* %7, align 4
  %34 = zext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* %10, align 4
  %39 = load i32, i32* %11, align 4
  %40 = call i32 @pr_debug(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str, i64 0, i64 0), i32 %31, i32 %37, i32 %38, i32 %39)
  %41 = load i32, i32* %10, align 4
  switch i32 %41, label %92 [
    i32 130, label %42
    i32 131, label %52
    i32 128, label %62
    i32 132, label %72
    i32 129, label %82
  ]

42:                                               ; preds = %18
  %43 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %6, align 8
  %44 = load i32, i32* %7, align 4
  %45 = load i32, i32* @PULL_UP, align 4
  %46 = call i32 @altas7_pinctrl_set_pull_sel(%struct.pinctrl_dev* %43, i32 %44, i32 %45)
  store i32 %46, i32* %13, align 4
  %47 = load i32, i32* %13, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %42
  %50 = load i32, i32* %13, align 4
  store i32 %50, i32* %5, align 4
  br label %110

51:                                               ; preds = %42
  br label %95

52:                                               ; preds = %18
  %53 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %6, align 8
  %54 = load i32, i32* %7, align 4
  %55 = load i32, i32* @PULL_DOWN, align 4
  %56 = call i32 @altas7_pinctrl_set_pull_sel(%struct.pinctrl_dev* %53, i32 %54, i32 %55)
  store i32 %56, i32* %13, align 4
  %57 = load i32, i32* %13, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %52
  %60 = load i32, i32* %13, align 4
  store i32 %60, i32* %5, align 4
  br label %110

61:                                               ; preds = %52
  br label %95

62:                                               ; preds = %18
  %63 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %6, align 8
  %64 = load i32, i32* %7, align 4
  %65 = load i32, i32* @HIGH_HYSTERESIS, align 4
  %66 = call i32 @altas7_pinctrl_set_pull_sel(%struct.pinctrl_dev* %63, i32 %64, i32 %65)
  store i32 %66, i32* %13, align 4
  %67 = load i32, i32* %13, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %62
  %70 = load i32, i32* %13, align 4
  store i32 %70, i32* %5, align 4
  br label %110

71:                                               ; preds = %62
  br label %95

72:                                               ; preds = %18
  %73 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %6, align 8
  %74 = load i32, i32* %7, align 4
  %75 = load i32, i32* @HIGH_Z, align 4
  %76 = call i32 @altas7_pinctrl_set_pull_sel(%struct.pinctrl_dev* %73, i32 %74, i32 %75)
  store i32 %76, i32* %13, align 4
  %77 = load i32, i32* %13, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %72
  %80 = load i32, i32* %13, align 4
  store i32 %80, i32* %5, align 4
  br label %110

81:                                               ; preds = %72
  br label %95

82:                                               ; preds = %18
  %83 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %6, align 8
  %84 = load i32, i32* %7, align 4
  %85 = load i32, i32* %11, align 4
  %86 = call i32 @altas7_pinctrl_set_drive_strength_sel(%struct.pinctrl_dev* %83, i32 %84, i32 %85)
  store i32 %86, i32* %13, align 4
  %87 = load i32, i32* %13, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %91

89:                                               ; preds = %82
  %90 = load i32, i32* %13, align 4
  store i32 %90, i32* %5, align 4
  br label %110

91:                                               ; preds = %82
  br label %95

92:                                               ; preds = %18
  %93 = load i32, i32* @ENOTSUPP, align 4
  %94 = sub nsw i32 0, %93
  store i32 %94, i32* %5, align 4
  br label %110

95:                                               ; preds = %91, %81, %71, %61, %51
  %96 = load i32, i32* %7, align 4
  %97 = load %struct.TYPE_2__*, %struct.TYPE_2__** @atlas7_ioc_pads, align 8
  %98 = load i32, i32* %7, align 4
  %99 = zext i32 %98 to i64
  %100 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i64 %99
  %101 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = load i32, i32* %10, align 4
  %104 = load i32, i32* %11, align 4
  %105 = call i32 @pr_debug(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.1, i64 0, i64 0), i32 %96, i32 %102, i32 %103, i32 %104)
  br label %106

106:                                              ; preds = %95
  %107 = load i32, i32* %12, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %12, align 4
  br label %14

109:                                              ; preds = %14
  store i32 0, i32* %5, align 4
  br label %110

110:                                              ; preds = %109, %92, %89, %79, %69, %59, %49
  %111 = load i32, i32* %5, align 4
  ret i32 %111
}

declare dso_local i32 @pinconf_to_config_param(i64) #1

declare dso_local i32 @pinconf_to_config_argument(i64) #1

declare dso_local i32 @pr_debug(i8*, i32, i32, i32, i32) #1

declare dso_local i32 @altas7_pinctrl_set_pull_sel(%struct.pinctrl_dev*, i32, i32) #1

declare dso_local i32 @altas7_pinctrl_set_drive_strength_sel(%struct.pinctrl_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
