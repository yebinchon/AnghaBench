; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-gemini.c_gemini_pinconf_group_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-gemini.c_gemini_pinconf_group_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gemini_pin_group = type { i32, i32 }
%struct.pinctrl_dev = type { i32 }
%struct.gemini_pmx = type { i32, i32, i64, i64 }

@gemini_3512_pin_groups = common dso_local global %struct.gemini_pin_group* null, align 8
@gemini_3516_pin_groups = common dso_local global %struct.gemini_pin_group* null, align 8
@.str = private unnamed_addr constant [63 x i8] c"pin config group \22%s\22 does not support drive strength setting\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"invalid drive strength %d mA\0A\00", align 1
@ENOTSUPP = common dso_local global i32 0, align 4
@GLOBAL_IODRIVE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [57 x i8] c"set group %s to %d mA drive strength mask %08x val %08x\0A\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"invalid config param %04x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pinctrl_dev*, i32, i64*, i32)* @gemini_pinconf_group_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gemini_pinconf_group_set(%struct.pinctrl_dev* %0, i32 %1, i64* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.pinctrl_dev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.gemini_pmx*, align 8
  %11 = alloca %struct.gemini_pin_group*, align 8
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
  store %struct.gemini_pin_group* null, %struct.gemini_pin_group** %11, align 8
  %18 = load %struct.gemini_pmx*, %struct.gemini_pmx** %10, align 8
  %19 = getelementptr inbounds %struct.gemini_pmx, %struct.gemini_pmx* %18, i32 0, i32 3
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %4
  %23 = load %struct.gemini_pin_group*, %struct.gemini_pin_group** @gemini_3512_pin_groups, align 8
  %24 = load i32, i32* %7, align 4
  %25 = zext i32 %24 to i64
  %26 = getelementptr inbounds %struct.gemini_pin_group, %struct.gemini_pin_group* %23, i64 %25
  store %struct.gemini_pin_group* %26, %struct.gemini_pin_group** %11, align 8
  br label %27

27:                                               ; preds = %22, %4
  %28 = load %struct.gemini_pmx*, %struct.gemini_pmx** %10, align 8
  %29 = getelementptr inbounds %struct.gemini_pmx, %struct.gemini_pmx* %28, i32 0, i32 2
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %27
  %33 = load %struct.gemini_pin_group*, %struct.gemini_pin_group** @gemini_3516_pin_groups, align 8
  %34 = load i32, i32* %7, align 4
  %35 = zext i32 %34 to i64
  %36 = getelementptr inbounds %struct.gemini_pin_group, %struct.gemini_pin_group* %33, i64 %35
  store %struct.gemini_pin_group* %36, %struct.gemini_pin_group** %11, align 8
  br label %37

37:                                               ; preds = %32, %27
  %38 = load %struct.gemini_pin_group*, %struct.gemini_pin_group** %11, align 8
  %39 = getelementptr inbounds %struct.gemini_pin_group, %struct.gemini_pin_group* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %52, label %42

42:                                               ; preds = %37
  %43 = load %struct.gemini_pmx*, %struct.gemini_pmx** %10, align 8
  %44 = getelementptr inbounds %struct.gemini_pmx, %struct.gemini_pmx* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.gemini_pin_group*, %struct.gemini_pin_group** %11, align 8
  %47 = getelementptr inbounds %struct.gemini_pin_group, %struct.gemini_pin_group* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @dev_err(i32 %45, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str, i64 0, i64 0), i32 %48)
  %50 = load i32, i32* @EINVAL, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %5, align 4
  br label %127

52:                                               ; preds = %37
  store i32 0, i32* %15, align 4
  br label %53

53:                                               ; preds = %123, %52
  %54 = load i32, i32* %15, align 4
  %55 = load i32, i32* %9, align 4
  %56 = icmp ult i32 %54, %55
  br i1 %56, label %57, label %126

57:                                               ; preds = %53
  %58 = load i64*, i64** %8, align 8
  %59 = load i32, i32* %15, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i64, i64* %58, i64 %60
  %62 = load i64, i64* %61, align 8
  %63 = call i32 @pinconf_to_config_param(i64 %62)
  store i32 %63, i32* %12, align 4
  %64 = load i64*, i64** %8, align 8
  %65 = load i32, i32* %15, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i64, i64* %64, i64 %66
  %68 = load i64, i64* %67, align 8
  %69 = call i32 @pinconf_to_config_argument(i64 %68)
  store i32 %69, i32* %13, align 4
  %70 = load i32, i32* %12, align 4
  switch i32 %70, label %114 [
    i32 128, label %71
  ]

71:                                               ; preds = %57
  %72 = load i32, i32* %13, align 4
  switch i32 %72, label %77 [
    i32 4, label %73
    i32 8, label %74
    i32 12, label %75
    i32 16, label %76
  ]

73:                                               ; preds = %71
  store i32 0, i32* %14, align 4
  br label %85

74:                                               ; preds = %71
  store i32 1, i32* %14, align 4
  br label %85

75:                                               ; preds = %71
  store i32 2, i32* %14, align 4
  br label %85

76:                                               ; preds = %71
  store i32 3, i32* %14, align 4
  br label %85

77:                                               ; preds = %71
  %78 = load %struct.gemini_pmx*, %struct.gemini_pmx** %10, align 8
  %79 = getelementptr inbounds %struct.gemini_pmx, %struct.gemini_pmx* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = load i32, i32* %13, align 4
  %82 = call i32 @dev_err(i32 %80, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %81)
  %83 = load i32, i32* @ENOTSUPP, align 4
  %84 = sub nsw i32 0, %83
  store i32 %84, i32* %5, align 4
  br label %127

85:                                               ; preds = %76, %75, %74, %73
  %86 = load %struct.gemini_pin_group*, %struct.gemini_pin_group** %11, align 8
  %87 = getelementptr inbounds %struct.gemini_pin_group, %struct.gemini_pin_group* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @ffs(i32 %88)
  %90 = sub nsw i32 %89, 1
  %91 = load i32, i32* %14, align 4
  %92 = shl i32 %91, %90
  store i32 %92, i32* %14, align 4
  %93 = load %struct.gemini_pmx*, %struct.gemini_pmx** %10, align 8
  %94 = getelementptr inbounds %struct.gemini_pmx, %struct.gemini_pmx* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* @GLOBAL_IODRIVE, align 4
  %97 = load %struct.gemini_pin_group*, %struct.gemini_pin_group** %11, align 8
  %98 = getelementptr inbounds %struct.gemini_pin_group, %struct.gemini_pin_group* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* %14, align 4
  %101 = call i32 @regmap_update_bits(i32 %95, i32 %96, i32 %99, i32 %100)
  %102 = load %struct.gemini_pmx*, %struct.gemini_pmx** %10, align 8
  %103 = getelementptr inbounds %struct.gemini_pmx, %struct.gemini_pmx* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = load %struct.gemini_pin_group*, %struct.gemini_pin_group** %11, align 8
  %106 = getelementptr inbounds %struct.gemini_pin_group, %struct.gemini_pin_group* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = load i32, i32* %13, align 4
  %109 = load %struct.gemini_pin_group*, %struct.gemini_pin_group** %11, align 8
  %110 = getelementptr inbounds %struct.gemini_pin_group, %struct.gemini_pin_group* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = load i32, i32* %14, align 4
  %113 = call i32 @dev_dbg(i32 %104, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.2, i64 0, i64 0), i32 %107, i32 %108, i32 %111, i32 %112)
  br label %122

114:                                              ; preds = %57
  %115 = load %struct.gemini_pmx*, %struct.gemini_pmx** %10, align 8
  %116 = getelementptr inbounds %struct.gemini_pmx, %struct.gemini_pmx* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = load i32, i32* %12, align 4
  %119 = call i32 @dev_err(i32 %117, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i32 %118)
  %120 = load i32, i32* @ENOTSUPP, align 4
  %121 = sub nsw i32 0, %120
  store i32 %121, i32* %5, align 4
  br label %127

122:                                              ; preds = %85
  br label %123

123:                                              ; preds = %122
  %124 = load i32, i32* %15, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %15, align 4
  br label %53

126:                                              ; preds = %53
  store i32 0, i32* %5, align 4
  br label %127

127:                                              ; preds = %126, %114, %77, %42
  %128 = load i32, i32* %5, align 4
  ret i32 %128
}

declare dso_local %struct.gemini_pmx* @pinctrl_dev_get_drvdata(%struct.pinctrl_dev*) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @pinconf_to_config_param(i64) #1

declare dso_local i32 @pinconf_to_config_argument(i64) #1

declare dso_local i32 @ffs(i32) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
