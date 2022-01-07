; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/vt8500/extr_pinctrl-wmt.c_wmt_pinconf_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/vt8500/extr_pinctrl-wmt.c_wmt_pinconf_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pinctrl_dev = type { i32 }
%struct.wmt_pinctrl_data = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i64 }

@NO_REG = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [40 x i8] c"bias functions not supported on pin %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"unknown pinconf param\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pinctrl_dev*, i32, i64*, i32)* @wmt_pinconf_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wmt_pinconf_set(%struct.pinctrl_dev* %0, i32 %1, i64* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.pinctrl_dev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.wmt_pinctrl_data*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  store %struct.pinctrl_dev* %0, %struct.pinctrl_dev** %6, align 8
  store i32 %1, i32* %7, align 4
  store i64* %2, i64** %8, align 8
  store i32 %3, i32* %9, align 4
  %18 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %6, align 8
  %19 = call %struct.wmt_pinctrl_data* @pinctrl_dev_get_drvdata(%struct.pinctrl_dev* %18)
  store %struct.wmt_pinctrl_data* %19, %struct.wmt_pinctrl_data** %10, align 8
  %20 = load i32, i32* %7, align 4
  %21 = call i64 @WMT_BANK_FROM_PIN(i32 %20)
  store i64 %21, i64* %13, align 8
  %22 = load i32, i32* %7, align 4
  %23 = call i64 @WMT_BIT_FROM_PIN(i32 %22)
  store i64 %23, i64* %14, align 8
  %24 = load %struct.wmt_pinctrl_data*, %struct.wmt_pinctrl_data** %10, align 8
  %25 = getelementptr inbounds %struct.wmt_pinctrl_data, %struct.wmt_pinctrl_data* %24, i32 0, i32 1
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = load i64, i64* %13, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i64 %27
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  store i64 %30, i64* %15, align 8
  %31 = load %struct.wmt_pinctrl_data*, %struct.wmt_pinctrl_data** %10, align 8
  %32 = getelementptr inbounds %struct.wmt_pinctrl_data, %struct.wmt_pinctrl_data* %31, i32 0, i32 1
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = load i64, i64* %13, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  store i64 %37, i64* %16, align 8
  %38 = load i64, i64* %15, align 8
  %39 = load i64, i64* @NO_REG, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %45, label %41

41:                                               ; preds = %4
  %42 = load i64, i64* %16, align 8
  %43 = load i64, i64* @NO_REG, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %53

45:                                               ; preds = %41, %4
  %46 = load %struct.wmt_pinctrl_data*, %struct.wmt_pinctrl_data** %10, align 8
  %47 = getelementptr inbounds %struct.wmt_pinctrl_data, %struct.wmt_pinctrl_data* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* %7, align 4
  %50 = call i32 (i32, i8*, ...) @dev_err(i32 %48, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %49)
  %51 = load i32, i32* @EINVAL, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %5, align 4
  br label %123

53:                                               ; preds = %41
  store i32 0, i32* %17, align 4
  br label %54

54:                                               ; preds = %119, %53
  %55 = load i32, i32* %17, align 4
  %56 = load i32, i32* %9, align 4
  %57 = icmp ult i32 %55, %56
  br i1 %57, label %58, label %122

58:                                               ; preds = %54
  %59 = load i64*, i64** %8, align 8
  %60 = load i32, i32* %17, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i64, i64* %59, i64 %61
  %63 = load i64, i64* %62, align 8
  %64 = call i32 @pinconf_to_config_param(i64 %63)
  store i32 %64, i32* %11, align 4
  %65 = load i64*, i64** %8, align 8
  %66 = load i32, i32* %17, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i64, i64* %65, i64 %67
  %69 = load i64, i64* %68, align 8
  %70 = call i64 @pinconf_to_config_argument(i64 %69)
  store i64 %70, i64* %12, align 8
  %71 = load i32, i32* %11, align 4
  %72 = icmp eq i32 %71, 129
  br i1 %72, label %76, label %73

73:                                               ; preds = %58
  %74 = load i32, i32* %11, align 4
  %75 = icmp eq i32 %74, 128
  br i1 %75, label %76, label %81

76:                                               ; preds = %73, %58
  %77 = load i64, i64* %12, align 8
  %78 = icmp eq i64 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %76
  store i32 130, i32* %11, align 4
  br label %80

80:                                               ; preds = %79, %76
  br label %81

81:                                               ; preds = %80, %73
  %82 = load i32, i32* %11, align 4
  switch i32 %82, label %111 [
    i32 130, label %83
    i32 129, label %89
    i32 128, label %100
  ]

83:                                               ; preds = %81
  %84 = load %struct.wmt_pinctrl_data*, %struct.wmt_pinctrl_data** %10, align 8
  %85 = load i64, i64* %15, align 8
  %86 = load i64, i64* %14, align 8
  %87 = call i32 @BIT(i64 %86)
  %88 = call i32 @wmt_clearbits(%struct.wmt_pinctrl_data* %84, i64 %85, i32 %87)
  br label %118

89:                                               ; preds = %81
  %90 = load %struct.wmt_pinctrl_data*, %struct.wmt_pinctrl_data** %10, align 8
  %91 = load i64, i64* %16, align 8
  %92 = load i64, i64* %14, align 8
  %93 = call i32 @BIT(i64 %92)
  %94 = call i32 @wmt_clearbits(%struct.wmt_pinctrl_data* %90, i64 %91, i32 %93)
  %95 = load %struct.wmt_pinctrl_data*, %struct.wmt_pinctrl_data** %10, align 8
  %96 = load i64, i64* %15, align 8
  %97 = load i64, i64* %14, align 8
  %98 = call i32 @BIT(i64 %97)
  %99 = call i32 @wmt_setbits(%struct.wmt_pinctrl_data* %95, i64 %96, i32 %98)
  br label %118

100:                                              ; preds = %81
  %101 = load %struct.wmt_pinctrl_data*, %struct.wmt_pinctrl_data** %10, align 8
  %102 = load i64, i64* %16, align 8
  %103 = load i64, i64* %14, align 8
  %104 = call i32 @BIT(i64 %103)
  %105 = call i32 @wmt_setbits(%struct.wmt_pinctrl_data* %101, i64 %102, i32 %104)
  %106 = load %struct.wmt_pinctrl_data*, %struct.wmt_pinctrl_data** %10, align 8
  %107 = load i64, i64* %15, align 8
  %108 = load i64, i64* %14, align 8
  %109 = call i32 @BIT(i64 %108)
  %110 = call i32 @wmt_setbits(%struct.wmt_pinctrl_data* %106, i64 %107, i32 %109)
  br label %118

111:                                              ; preds = %81
  %112 = load %struct.wmt_pinctrl_data*, %struct.wmt_pinctrl_data** %10, align 8
  %113 = getelementptr inbounds %struct.wmt_pinctrl_data, %struct.wmt_pinctrl_data* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = call i32 (i32, i8*, ...) @dev_err(i32 %114, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %116 = load i32, i32* @EINVAL, align 4
  %117 = sub nsw i32 0, %116
  store i32 %117, i32* %5, align 4
  br label %123

118:                                              ; preds = %100, %89, %83
  br label %119

119:                                              ; preds = %118
  %120 = load i32, i32* %17, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %17, align 4
  br label %54

122:                                              ; preds = %54
  store i32 0, i32* %5, align 4
  br label %123

123:                                              ; preds = %122, %111, %45
  %124 = load i32, i32* %5, align 4
  ret i32 %124
}

declare dso_local %struct.wmt_pinctrl_data* @pinctrl_dev_get_drvdata(%struct.pinctrl_dev*) #1

declare dso_local i64 @WMT_BANK_FROM_PIN(i32) #1

declare dso_local i64 @WMT_BIT_FROM_PIN(i32) #1

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local i32 @pinconf_to_config_param(i64) #1

declare dso_local i64 @pinconf_to_config_argument(i64) #1

declare dso_local i32 @wmt_clearbits(%struct.wmt_pinctrl_data*, i64, i32) #1

declare dso_local i32 @BIT(i64) #1

declare dso_local i32 @wmt_setbits(%struct.wmt_pinctrl_data*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
