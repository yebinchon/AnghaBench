; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-palmas.c_palmas_pinctrl_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-palmas.c_palmas_pinctrl_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.palmas_pinctrl_data = type { i32, i32 }
%struct.TYPE_8__ = type { i8*, i8*, i32 }
%struct.platform_device = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, i64 }
%struct.palmas_pctrl_chip_info = type { i32, i32, i32, i8*, i8*, i8*, i8*, i32, %struct.TYPE_9__* }

@tps65913_pinctrl_data = common dso_local global %struct.palmas_pinctrl_data zeroinitializer, align 4
@.str = private unnamed_addr constant [23 x i8] c"ti,palmas-enable-dvfs1\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"ti,palmas-enable-dvfs2\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@palmas_pins_desc = common dso_local global i8* null, align 8
@palmas_pin_function = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [45 x i8] c"Reading pinctrol option register failed: %d\0A\00", align 1
@palmas_pinctrl_desc = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@.str.3 = private unnamed_addr constant [34 x i8] c"Couldn't register pinctrl driver\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @palmas_pinctrl_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @palmas_pinctrl_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.palmas_pctrl_chip_info*, align 8
  %5 = alloca %struct.palmas_pinctrl_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  store %struct.palmas_pinctrl_data* @tps65913_pinctrl_data, %struct.palmas_pinctrl_data** %5, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %9 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %10 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %28

14:                                               ; preds = %1
  %15 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %16 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %15, i32 0, i32 0
  %17 = call %struct.palmas_pinctrl_data* @of_device_get_match_data(%struct.TYPE_9__* %16)
  store %struct.palmas_pinctrl_data* %17, %struct.palmas_pinctrl_data** %5, align 8
  %18 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %19 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = call i32 @of_property_read_bool(i64 %21, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  store i32 %22, i32* %7, align 4
  %23 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %24 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = call i32 @of_property_read_bool(i64 %26, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  store i32 %27, i32* %8, align 4
  br label %28

28:                                               ; preds = %14, %1
  %29 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %30 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %29, i32 0, i32 0
  %31 = load i32, i32* @GFP_KERNEL, align 4
  %32 = call %struct.palmas_pctrl_chip_info* @devm_kzalloc(%struct.TYPE_9__* %30, i32 64, i32 %31)
  store %struct.palmas_pctrl_chip_info* %32, %struct.palmas_pctrl_chip_info** %4, align 8
  %33 = load %struct.palmas_pctrl_chip_info*, %struct.palmas_pctrl_chip_info** %4, align 8
  %34 = icmp ne %struct.palmas_pctrl_chip_info* %33, null
  br i1 %34, label %38, label %35

35:                                               ; preds = %28
  %36 = load i32, i32* @ENOMEM, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %2, align 4
  br label %120

38:                                               ; preds = %28
  %39 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %40 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %39, i32 0, i32 0
  %41 = load %struct.palmas_pctrl_chip_info*, %struct.palmas_pctrl_chip_info** %4, align 8
  %42 = getelementptr inbounds %struct.palmas_pctrl_chip_info, %struct.palmas_pctrl_chip_info* %41, i32 0, i32 8
  store %struct.TYPE_9__* %40, %struct.TYPE_9__** %42, align 8
  %43 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %44 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @dev_get_drvdata(i32 %46)
  %48 = load %struct.palmas_pctrl_chip_info*, %struct.palmas_pctrl_chip_info** %4, align 8
  %49 = getelementptr inbounds %struct.palmas_pctrl_chip_info, %struct.palmas_pctrl_chip_info* %48, i32 0, i32 7
  store i32 %47, i32* %49, align 8
  %50 = load i8*, i8** @palmas_pins_desc, align 8
  %51 = load %struct.palmas_pctrl_chip_info*, %struct.palmas_pctrl_chip_info** %4, align 8
  %52 = getelementptr inbounds %struct.palmas_pctrl_chip_info, %struct.palmas_pctrl_chip_info* %51, i32 0, i32 6
  store i8* %50, i8** %52, align 8
  %53 = load i8*, i8** @palmas_pins_desc, align 8
  %54 = call i8* @ARRAY_SIZE(i8* %53)
  %55 = load %struct.palmas_pctrl_chip_info*, %struct.palmas_pctrl_chip_info** %4, align 8
  %56 = getelementptr inbounds %struct.palmas_pctrl_chip_info, %struct.palmas_pctrl_chip_info* %55, i32 0, i32 5
  store i8* %54, i8** %56, align 8
  %57 = load i8*, i8** @palmas_pin_function, align 8
  %58 = load %struct.palmas_pctrl_chip_info*, %struct.palmas_pctrl_chip_info** %4, align 8
  %59 = getelementptr inbounds %struct.palmas_pctrl_chip_info, %struct.palmas_pctrl_chip_info* %58, i32 0, i32 4
  store i8* %57, i8** %59, align 8
  %60 = load i8*, i8** @palmas_pin_function, align 8
  %61 = call i8* @ARRAY_SIZE(i8* %60)
  %62 = load %struct.palmas_pctrl_chip_info*, %struct.palmas_pctrl_chip_info** %4, align 8
  %63 = getelementptr inbounds %struct.palmas_pctrl_chip_info, %struct.palmas_pctrl_chip_info* %62, i32 0, i32 3
  store i8* %61, i8** %63, align 8
  %64 = load %struct.palmas_pinctrl_data*, %struct.palmas_pinctrl_data** %5, align 8
  %65 = getelementptr inbounds %struct.palmas_pinctrl_data, %struct.palmas_pinctrl_data* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.palmas_pctrl_chip_info*, %struct.palmas_pctrl_chip_info** %4, align 8
  %68 = getelementptr inbounds %struct.palmas_pctrl_chip_info, %struct.palmas_pctrl_chip_info* %67, i32 0, i32 2
  store i32 %66, i32* %68, align 8
  %69 = load %struct.palmas_pinctrl_data*, %struct.palmas_pinctrl_data** %5, align 8
  %70 = getelementptr inbounds %struct.palmas_pinctrl_data, %struct.palmas_pinctrl_data* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.palmas_pctrl_chip_info*, %struct.palmas_pctrl_chip_info** %4, align 8
  %73 = getelementptr inbounds %struct.palmas_pctrl_chip_info, %struct.palmas_pctrl_chip_info* %72, i32 0, i32 1
  store i32 %71, i32* %73, align 4
  %74 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %75 = load %struct.palmas_pctrl_chip_info*, %struct.palmas_pctrl_chip_info** %4, align 8
  %76 = call i32 @platform_set_drvdata(%struct.platform_device* %74, %struct.palmas_pctrl_chip_info* %75)
  %77 = load %struct.palmas_pctrl_chip_info*, %struct.palmas_pctrl_chip_info** %4, align 8
  %78 = load i32, i32* %7, align 4
  %79 = call i32 @palmas_pinctrl_set_dvfs1(%struct.palmas_pctrl_chip_info* %77, i32 %78)
  %80 = load %struct.palmas_pctrl_chip_info*, %struct.palmas_pctrl_chip_info** %4, align 8
  %81 = load i32, i32* %8, align 4
  %82 = call i32 @palmas_pinctrl_set_dvfs2(%struct.palmas_pctrl_chip_info* %80, i32 %81)
  %83 = load %struct.palmas_pctrl_chip_info*, %struct.palmas_pctrl_chip_info** %4, align 8
  %84 = call i32 @palmas_pinctrl_get_pin_mux(%struct.palmas_pctrl_chip_info* %83)
  store i32 %84, i32* %6, align 4
  %85 = load i32, i32* %6, align 4
  %86 = icmp slt i32 %85, 0
  br i1 %86, label %87, label %93

87:                                               ; preds = %38
  %88 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %89 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %88, i32 0, i32 0
  %90 = load i32, i32* %6, align 4
  %91 = call i32 (%struct.TYPE_9__*, i8*, ...) @dev_err(%struct.TYPE_9__* %89, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0), i32 %90)
  %92 = load i32, i32* %6, align 4
  store i32 %92, i32* %2, align 4
  br label %120

93:                                               ; preds = %38
  %94 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %95 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %94, i32 0, i32 0
  %96 = call i32 @dev_name(%struct.TYPE_9__* %95)
  store i32 %96, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @palmas_pinctrl_desc, i32 0, i32 2), align 8
  %97 = load i8*, i8** @palmas_pins_desc, align 8
  store i8* %97, i8** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @palmas_pinctrl_desc, i32 0, i32 1), align 8
  %98 = load i8*, i8** @palmas_pins_desc, align 8
  %99 = call i8* @ARRAY_SIZE(i8* %98)
  store i8* %99, i8** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @palmas_pinctrl_desc, i32 0, i32 0), align 8
  %100 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %101 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %100, i32 0, i32 0
  %102 = load %struct.palmas_pctrl_chip_info*, %struct.palmas_pctrl_chip_info** %4, align 8
  %103 = call i32 @devm_pinctrl_register(%struct.TYPE_9__* %101, %struct.TYPE_8__* @palmas_pinctrl_desc, %struct.palmas_pctrl_chip_info* %102)
  %104 = load %struct.palmas_pctrl_chip_info*, %struct.palmas_pctrl_chip_info** %4, align 8
  %105 = getelementptr inbounds %struct.palmas_pctrl_chip_info, %struct.palmas_pctrl_chip_info* %104, i32 0, i32 0
  store i32 %103, i32* %105, align 8
  %106 = load %struct.palmas_pctrl_chip_info*, %struct.palmas_pctrl_chip_info** %4, align 8
  %107 = getelementptr inbounds %struct.palmas_pctrl_chip_info, %struct.palmas_pctrl_chip_info* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = call i64 @IS_ERR(i32 %108)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %119

111:                                              ; preds = %93
  %112 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %113 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %112, i32 0, i32 0
  %114 = call i32 (%struct.TYPE_9__*, i8*, ...) @dev_err(%struct.TYPE_9__* %113, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0))
  %115 = load %struct.palmas_pctrl_chip_info*, %struct.palmas_pctrl_chip_info** %4, align 8
  %116 = getelementptr inbounds %struct.palmas_pctrl_chip_info, %struct.palmas_pctrl_chip_info* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = call i32 @PTR_ERR(i32 %117)
  store i32 %118, i32* %2, align 4
  br label %120

119:                                              ; preds = %93
  store i32 0, i32* %2, align 4
  br label %120

120:                                              ; preds = %119, %111, %87, %35
  %121 = load i32, i32* %2, align 4
  ret i32 %121
}

declare dso_local %struct.palmas_pinctrl_data* @of_device_get_match_data(%struct.TYPE_9__*) #1

declare dso_local i32 @of_property_read_bool(i64, i8*) #1

declare dso_local %struct.palmas_pctrl_chip_info* @devm_kzalloc(%struct.TYPE_9__*, i32, i32) #1

declare dso_local i32 @dev_get_drvdata(i32) #1

declare dso_local i8* @ARRAY_SIZE(i8*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.palmas_pctrl_chip_info*) #1

declare dso_local i32 @palmas_pinctrl_set_dvfs1(%struct.palmas_pctrl_chip_info*, i32) #1

declare dso_local i32 @palmas_pinctrl_set_dvfs2(%struct.palmas_pctrl_chip_info*, i32) #1

declare dso_local i32 @palmas_pinctrl_get_pin_mux(%struct.palmas_pctrl_chip_info*) #1

declare dso_local i32 @dev_err(%struct.TYPE_9__*, i8*, ...) #1

declare dso_local i32 @dev_name(%struct.TYPE_9__*) #1

declare dso_local i32 @devm_pinctrl_register(%struct.TYPE_9__*, %struct.TYPE_8__*, %struct.palmas_pctrl_chip_info*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
