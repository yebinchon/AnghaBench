; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-max77620.c_max77620_pinctrl_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-max77620.c_max77620_pinctrl_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i8*, i8*, i8*, i8*, i32 }
%struct.platform_device = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.TYPE_12__*, i32 }
%struct.TYPE_12__ = type { i32 }
%struct.max77620_chip = type { i32 }
%struct.max77620_pctrl_info = type { i32, %struct.TYPE_9__*, i8*, i8*, i8*, i8*, i8*, i8*, i32, %struct.TYPE_11__* }
%struct.TYPE_9__ = type { i32, i32, i32, i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@max77620_pins_desc = common dso_local global i8* null, align 8
@max77620_pin_function = common dso_local global i8* null, align 8
@max77620_pingroups = common dso_local global i8* null, align 8
@max77620_pinctrl_desc = common dso_local global %struct.TYPE_10__ zeroinitializer, align 8
@max77620_cfg_params = common dso_local global i8* null, align 8
@MAX77620_PIN_NUM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Couldn't register pinctrl driver\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @max77620_pinctrl_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max77620_pinctrl_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.max77620_chip*, align 8
  %5 = alloca %struct.max77620_pctrl_info*, align 8
  %6 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %7 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %8 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 0
  %10 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %11 = call %struct.max77620_chip* @dev_get_drvdata(%struct.TYPE_12__* %10)
  store %struct.max77620_chip* %11, %struct.max77620_chip** %4, align 8
  %12 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %13 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %12, i32 0, i32 0
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call %struct.max77620_pctrl_info* @devm_kzalloc(%struct.TYPE_11__* %13, i32 80, i32 %14)
  store %struct.max77620_pctrl_info* %15, %struct.max77620_pctrl_info** %5, align 8
  %16 = load %struct.max77620_pctrl_info*, %struct.max77620_pctrl_info** %5, align 8
  %17 = icmp ne %struct.max77620_pctrl_info* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %1
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %2, align 4
  br label %145

21:                                               ; preds = %1
  %22 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %23 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %22, i32 0, i32 0
  %24 = load %struct.max77620_pctrl_info*, %struct.max77620_pctrl_info** %5, align 8
  %25 = getelementptr inbounds %struct.max77620_pctrl_info, %struct.max77620_pctrl_info* %24, i32 0, i32 9
  store %struct.TYPE_11__* %23, %struct.TYPE_11__** %25, align 8
  %26 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %27 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_12__*, %struct.TYPE_12__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.max77620_pctrl_info*, %struct.max77620_pctrl_info** %5, align 8
  %33 = getelementptr inbounds %struct.max77620_pctrl_info, %struct.max77620_pctrl_info* %32, i32 0, i32 9
  %34 = load %struct.TYPE_11__*, %struct.TYPE_11__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %34, i32 0, i32 1
  store i32 %31, i32* %35, align 8
  %36 = load %struct.max77620_chip*, %struct.max77620_chip** %4, align 8
  %37 = getelementptr inbounds %struct.max77620_chip, %struct.max77620_chip* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.max77620_pctrl_info*, %struct.max77620_pctrl_info** %5, align 8
  %40 = getelementptr inbounds %struct.max77620_pctrl_info, %struct.max77620_pctrl_info* %39, i32 0, i32 8
  store i32 %38, i32* %40, align 8
  %41 = load i8*, i8** @max77620_pins_desc, align 8
  %42 = load %struct.max77620_pctrl_info*, %struct.max77620_pctrl_info** %5, align 8
  %43 = getelementptr inbounds %struct.max77620_pctrl_info, %struct.max77620_pctrl_info* %42, i32 0, i32 7
  store i8* %41, i8** %43, align 8
  %44 = load i8*, i8** @max77620_pins_desc, align 8
  %45 = call i8* @ARRAY_SIZE(i8* %44)
  %46 = load %struct.max77620_pctrl_info*, %struct.max77620_pctrl_info** %5, align 8
  %47 = getelementptr inbounds %struct.max77620_pctrl_info, %struct.max77620_pctrl_info* %46, i32 0, i32 6
  store i8* %45, i8** %47, align 8
  %48 = load i8*, i8** @max77620_pin_function, align 8
  %49 = load %struct.max77620_pctrl_info*, %struct.max77620_pctrl_info** %5, align 8
  %50 = getelementptr inbounds %struct.max77620_pctrl_info, %struct.max77620_pctrl_info* %49, i32 0, i32 5
  store i8* %48, i8** %50, align 8
  %51 = load i8*, i8** @max77620_pin_function, align 8
  %52 = call i8* @ARRAY_SIZE(i8* %51)
  %53 = load %struct.max77620_pctrl_info*, %struct.max77620_pctrl_info** %5, align 8
  %54 = getelementptr inbounds %struct.max77620_pctrl_info, %struct.max77620_pctrl_info* %53, i32 0, i32 4
  store i8* %52, i8** %54, align 8
  %55 = load i8*, i8** @max77620_pingroups, align 8
  %56 = load %struct.max77620_pctrl_info*, %struct.max77620_pctrl_info** %5, align 8
  %57 = getelementptr inbounds %struct.max77620_pctrl_info, %struct.max77620_pctrl_info* %56, i32 0, i32 3
  store i8* %55, i8** %57, align 8
  %58 = load i8*, i8** @max77620_pingroups, align 8
  %59 = call i8* @ARRAY_SIZE(i8* %58)
  %60 = load %struct.max77620_pctrl_info*, %struct.max77620_pctrl_info** %5, align 8
  %61 = getelementptr inbounds %struct.max77620_pctrl_info, %struct.max77620_pctrl_info* %60, i32 0, i32 2
  store i8* %59, i8** %61, align 8
  %62 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %63 = load %struct.max77620_pctrl_info*, %struct.max77620_pctrl_info** %5, align 8
  %64 = call i32 @platform_set_drvdata(%struct.platform_device* %62, %struct.max77620_pctrl_info* %63)
  %65 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %66 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %65, i32 0, i32 0
  %67 = call i32 @dev_name(%struct.TYPE_11__* %66)
  store i32 %67, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @max77620_pinctrl_desc, i32 0, i32 4), align 8
  %68 = load i8*, i8** @max77620_pins_desc, align 8
  store i8* %68, i8** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @max77620_pinctrl_desc, i32 0, i32 3), align 8
  %69 = load i8*, i8** @max77620_pins_desc, align 8
  %70 = call i8* @ARRAY_SIZE(i8* %69)
  store i8* %70, i8** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @max77620_pinctrl_desc, i32 0, i32 2), align 8
  %71 = load i8*, i8** @max77620_cfg_params, align 8
  %72 = call i8* @ARRAY_SIZE(i8* %71)
  store i8* %72, i8** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @max77620_pinctrl_desc, i32 0, i32 1), align 8
  %73 = load i8*, i8** @max77620_cfg_params, align 8
  store i8* %73, i8** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @max77620_pinctrl_desc, i32 0, i32 0), align 8
  store i32 0, i32* %6, align 4
  br label %74

74:                                               ; preds = %121, %21
  %75 = load i32, i32* %6, align 4
  %76 = load i32, i32* @MAX77620_PIN_NUM, align 4
  %77 = icmp slt i32 %75, %76
  br i1 %77, label %78, label %124

78:                                               ; preds = %74
  %79 = load %struct.max77620_pctrl_info*, %struct.max77620_pctrl_info** %5, align 8
  %80 = getelementptr inbounds %struct.max77620_pctrl_info, %struct.max77620_pctrl_info* %79, i32 0, i32 1
  %81 = load %struct.TYPE_9__*, %struct.TYPE_9__** %80, align 8
  %82 = load i32, i32* %6, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %81, i64 %83
  %85 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %84, i32 0, i32 0
  store i32 -1, i32* %85, align 4
  %86 = load %struct.max77620_pctrl_info*, %struct.max77620_pctrl_info** %5, align 8
  %87 = getelementptr inbounds %struct.max77620_pctrl_info, %struct.max77620_pctrl_info* %86, i32 0, i32 1
  %88 = load %struct.TYPE_9__*, %struct.TYPE_9__** %87, align 8
  %89 = load i32, i32* %6, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %88, i64 %90
  %92 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %91, i32 0, i32 1
  store i32 -1, i32* %92, align 4
  %93 = load %struct.max77620_pctrl_info*, %struct.max77620_pctrl_info** %5, align 8
  %94 = getelementptr inbounds %struct.max77620_pctrl_info, %struct.max77620_pctrl_info* %93, i32 0, i32 1
  %95 = load %struct.TYPE_9__*, %struct.TYPE_9__** %94, align 8
  %96 = load i32, i32* %6, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %95, i64 %97
  %99 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %98, i32 0, i32 2
  store i32 -1, i32* %99, align 4
  %100 = load %struct.max77620_pctrl_info*, %struct.max77620_pctrl_info** %5, align 8
  %101 = getelementptr inbounds %struct.max77620_pctrl_info, %struct.max77620_pctrl_info* %100, i32 0, i32 1
  %102 = load %struct.TYPE_9__*, %struct.TYPE_9__** %101, align 8
  %103 = load i32, i32* %6, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %102, i64 %104
  %106 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %105, i32 0, i32 3
  store i32 -1, i32* %106, align 4
  %107 = load %struct.max77620_pctrl_info*, %struct.max77620_pctrl_info** %5, align 8
  %108 = getelementptr inbounds %struct.max77620_pctrl_info, %struct.max77620_pctrl_info* %107, i32 0, i32 1
  %109 = load %struct.TYPE_9__*, %struct.TYPE_9__** %108, align 8
  %110 = load i32, i32* %6, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %109, i64 %111
  %113 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %112, i32 0, i32 4
  store i32 -1, i32* %113, align 4
  %114 = load %struct.max77620_pctrl_info*, %struct.max77620_pctrl_info** %5, align 8
  %115 = getelementptr inbounds %struct.max77620_pctrl_info, %struct.max77620_pctrl_info* %114, i32 0, i32 1
  %116 = load %struct.TYPE_9__*, %struct.TYPE_9__** %115, align 8
  %117 = load i32, i32* %6, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %116, i64 %118
  %120 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %119, i32 0, i32 5
  store i32 -1, i32* %120, align 4
  br label %121

121:                                              ; preds = %78
  %122 = load i32, i32* %6, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %6, align 4
  br label %74

124:                                              ; preds = %74
  %125 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %126 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %125, i32 0, i32 0
  %127 = load %struct.max77620_pctrl_info*, %struct.max77620_pctrl_info** %5, align 8
  %128 = call i32 @devm_pinctrl_register(%struct.TYPE_11__* %126, %struct.TYPE_10__* @max77620_pinctrl_desc, %struct.max77620_pctrl_info* %127)
  %129 = load %struct.max77620_pctrl_info*, %struct.max77620_pctrl_info** %5, align 8
  %130 = getelementptr inbounds %struct.max77620_pctrl_info, %struct.max77620_pctrl_info* %129, i32 0, i32 0
  store i32 %128, i32* %130, align 8
  %131 = load %struct.max77620_pctrl_info*, %struct.max77620_pctrl_info** %5, align 8
  %132 = getelementptr inbounds %struct.max77620_pctrl_info, %struct.max77620_pctrl_info* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = call i64 @IS_ERR(i32 %133)
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %144

136:                                              ; preds = %124
  %137 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %138 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %137, i32 0, i32 0
  %139 = call i32 @dev_err(%struct.TYPE_11__* %138, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %140 = load %struct.max77620_pctrl_info*, %struct.max77620_pctrl_info** %5, align 8
  %141 = getelementptr inbounds %struct.max77620_pctrl_info, %struct.max77620_pctrl_info* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  %143 = call i32 @PTR_ERR(i32 %142)
  store i32 %143, i32* %2, align 4
  br label %145

144:                                              ; preds = %124
  store i32 0, i32* %2, align 4
  br label %145

145:                                              ; preds = %144, %136, %18
  %146 = load i32, i32* %2, align 4
  ret i32 %146
}

declare dso_local %struct.max77620_chip* @dev_get_drvdata(%struct.TYPE_12__*) #1

declare dso_local %struct.max77620_pctrl_info* @devm_kzalloc(%struct.TYPE_11__*, i32, i32) #1

declare dso_local i8* @ARRAY_SIZE(i8*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.max77620_pctrl_info*) #1

declare dso_local i32 @dev_name(%struct.TYPE_11__*) #1

declare dso_local i32 @devm_pinctrl_register(%struct.TYPE_11__*, %struct.TYPE_10__*, %struct.max77620_pctrl_info*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @dev_err(%struct.TYPE_11__*, i8*) #1

declare dso_local i32 @PTR_ERR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
