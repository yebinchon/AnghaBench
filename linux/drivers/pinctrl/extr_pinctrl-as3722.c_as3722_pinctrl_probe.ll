; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-as3722.c_as3722_pinctrl_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-as3722.c_as3722_pinctrl_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i8*, i8*, i32 }
%struct.TYPE_12__ = type { i32, %struct.TYPE_13__* }
%struct.TYPE_13__ = type { %struct.TYPE_15__*, i32 }
%struct.TYPE_15__ = type { i32 }
%struct.platform_device = type { %struct.TYPE_13__ }
%struct.as3722_pctrl_info = type { %struct.TYPE_12__, i32, i8*, i8*, i8*, i8*, i8*, i8*, i32, %struct.TYPE_13__* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@as3722_pins_desc = common dso_local global i8* null, align 8
@as3722_pin_function = common dso_local global i8* null, align 8
@as3722_pingroups = common dso_local global i8* null, align 8
@as3722_pinctrl_desc = common dso_local global %struct.TYPE_14__ zeroinitializer, align 8
@.str = private unnamed_addr constant [34 x i8] c"Couldn't register pinctrl driver\0A\00", align 1
@as3722_gpio_chip = common dso_local global %struct.TYPE_12__ zeroinitializer, align 8
@.str.1 = private unnamed_addr constant [32 x i8] c"Couldn't register gpiochip, %d\0A\00", align 1
@AS3722_PIN_NUM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"Couldn't add pin range, %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @as3722_pinctrl_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @as3722_pinctrl_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.as3722_pctrl_info*, align 8
  %5 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %6 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %7 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %6, i32 0, i32 0
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call %struct.as3722_pctrl_info* @devm_kzalloc(%struct.TYPE_13__* %7, i32 88, i32 %8)
  store %struct.as3722_pctrl_info* %9, %struct.as3722_pctrl_info** %4, align 8
  %10 = load %struct.as3722_pctrl_info*, %struct.as3722_pctrl_info** %4, align 8
  %11 = icmp ne %struct.as3722_pctrl_info* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %1
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %2, align 4
  br label %137

15:                                               ; preds = %1
  %16 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %17 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %16, i32 0, i32 0
  %18 = load %struct.as3722_pctrl_info*, %struct.as3722_pctrl_info** %4, align 8
  %19 = getelementptr inbounds %struct.as3722_pctrl_info, %struct.as3722_pctrl_info* %18, i32 0, i32 9
  store %struct.TYPE_13__* %17, %struct.TYPE_13__** %19, align 8
  %20 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %21 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_15__*, %struct.TYPE_15__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.as3722_pctrl_info*, %struct.as3722_pctrl_info** %4, align 8
  %27 = getelementptr inbounds %struct.as3722_pctrl_info, %struct.as3722_pctrl_info* %26, i32 0, i32 9
  %28 = load %struct.TYPE_13__*, %struct.TYPE_13__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %28, i32 0, i32 1
  store i32 %25, i32* %29, align 8
  %30 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %31 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %31, i32 0, i32 0
  %33 = load %struct.TYPE_15__*, %struct.TYPE_15__** %32, align 8
  %34 = call i32 @dev_get_drvdata(%struct.TYPE_15__* %33)
  %35 = load %struct.as3722_pctrl_info*, %struct.as3722_pctrl_info** %4, align 8
  %36 = getelementptr inbounds %struct.as3722_pctrl_info, %struct.as3722_pctrl_info* %35, i32 0, i32 8
  store i32 %34, i32* %36, align 8
  %37 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %38 = load %struct.as3722_pctrl_info*, %struct.as3722_pctrl_info** %4, align 8
  %39 = call i32 @platform_set_drvdata(%struct.platform_device* %37, %struct.as3722_pctrl_info* %38)
  %40 = load i8*, i8** @as3722_pins_desc, align 8
  %41 = load %struct.as3722_pctrl_info*, %struct.as3722_pctrl_info** %4, align 8
  %42 = getelementptr inbounds %struct.as3722_pctrl_info, %struct.as3722_pctrl_info* %41, i32 0, i32 7
  store i8* %40, i8** %42, align 8
  %43 = load i8*, i8** @as3722_pins_desc, align 8
  %44 = call i8* @ARRAY_SIZE(i8* %43)
  %45 = load %struct.as3722_pctrl_info*, %struct.as3722_pctrl_info** %4, align 8
  %46 = getelementptr inbounds %struct.as3722_pctrl_info, %struct.as3722_pctrl_info* %45, i32 0, i32 6
  store i8* %44, i8** %46, align 8
  %47 = load i8*, i8** @as3722_pin_function, align 8
  %48 = load %struct.as3722_pctrl_info*, %struct.as3722_pctrl_info** %4, align 8
  %49 = getelementptr inbounds %struct.as3722_pctrl_info, %struct.as3722_pctrl_info* %48, i32 0, i32 5
  store i8* %47, i8** %49, align 8
  %50 = load i8*, i8** @as3722_pin_function, align 8
  %51 = call i8* @ARRAY_SIZE(i8* %50)
  %52 = load %struct.as3722_pctrl_info*, %struct.as3722_pctrl_info** %4, align 8
  %53 = getelementptr inbounds %struct.as3722_pctrl_info, %struct.as3722_pctrl_info* %52, i32 0, i32 4
  store i8* %51, i8** %53, align 8
  %54 = load i8*, i8** @as3722_pingroups, align 8
  %55 = load %struct.as3722_pctrl_info*, %struct.as3722_pctrl_info** %4, align 8
  %56 = getelementptr inbounds %struct.as3722_pctrl_info, %struct.as3722_pctrl_info* %55, i32 0, i32 3
  store i8* %54, i8** %56, align 8
  %57 = load i8*, i8** @as3722_pingroups, align 8
  %58 = call i8* @ARRAY_SIZE(i8* %57)
  %59 = load %struct.as3722_pctrl_info*, %struct.as3722_pctrl_info** %4, align 8
  %60 = getelementptr inbounds %struct.as3722_pctrl_info, %struct.as3722_pctrl_info* %59, i32 0, i32 2
  store i8* %58, i8** %60, align 8
  %61 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %62 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %61, i32 0, i32 0
  %63 = call i32 @dev_name(%struct.TYPE_13__* %62)
  store i32 %63, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @as3722_pinctrl_desc, i32 0, i32 2), align 8
  %64 = load i8*, i8** @as3722_pins_desc, align 8
  store i8* %64, i8** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @as3722_pinctrl_desc, i32 0, i32 1), align 8
  %65 = load i8*, i8** @as3722_pins_desc, align 8
  %66 = call i8* @ARRAY_SIZE(i8* %65)
  store i8* %66, i8** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @as3722_pinctrl_desc, i32 0, i32 0), align 8
  %67 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %68 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %67, i32 0, i32 0
  %69 = load %struct.as3722_pctrl_info*, %struct.as3722_pctrl_info** %4, align 8
  %70 = call i32 @devm_pinctrl_register(%struct.TYPE_13__* %68, %struct.TYPE_14__* @as3722_pinctrl_desc, %struct.as3722_pctrl_info* %69)
  %71 = load %struct.as3722_pctrl_info*, %struct.as3722_pctrl_info** %4, align 8
  %72 = getelementptr inbounds %struct.as3722_pctrl_info, %struct.as3722_pctrl_info* %71, i32 0, i32 1
  store i32 %70, i32* %72, align 8
  %73 = load %struct.as3722_pctrl_info*, %struct.as3722_pctrl_info** %4, align 8
  %74 = getelementptr inbounds %struct.as3722_pctrl_info, %struct.as3722_pctrl_info* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 8
  %76 = call i64 @IS_ERR(i32 %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %86

78:                                               ; preds = %15
  %79 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %80 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %79, i32 0, i32 0
  %81 = call i32 (%struct.TYPE_13__*, i8*, ...) @dev_err(%struct.TYPE_13__* %80, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %82 = load %struct.as3722_pctrl_info*, %struct.as3722_pctrl_info** %4, align 8
  %83 = getelementptr inbounds %struct.as3722_pctrl_info, %struct.as3722_pctrl_info* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 8
  %85 = call i32 @PTR_ERR(i32 %84)
  store i32 %85, i32* %2, align 4
  br label %137

86:                                               ; preds = %15
  %87 = load %struct.as3722_pctrl_info*, %struct.as3722_pctrl_info** %4, align 8
  %88 = getelementptr inbounds %struct.as3722_pctrl_info, %struct.as3722_pctrl_info* %87, i32 0, i32 0
  %89 = bitcast %struct.TYPE_12__* %88 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %89, i8* align 8 bitcast (%struct.TYPE_12__* @as3722_gpio_chip to i8*), i64 16, i1 false)
  %90 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %91 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %90, i32 0, i32 0
  %92 = load %struct.as3722_pctrl_info*, %struct.as3722_pctrl_info** %4, align 8
  %93 = getelementptr inbounds %struct.as3722_pctrl_info, %struct.as3722_pctrl_info* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %93, i32 0, i32 1
  store %struct.TYPE_13__* %91, %struct.TYPE_13__** %94, align 8
  %95 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %96 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %96, i32 0, i32 0
  %98 = load %struct.TYPE_15__*, %struct.TYPE_15__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.as3722_pctrl_info*, %struct.as3722_pctrl_info** %4, align 8
  %102 = getelementptr inbounds %struct.as3722_pctrl_info, %struct.as3722_pctrl_info* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %102, i32 0, i32 0
  store i32 %100, i32* %103, align 8
  %104 = load %struct.as3722_pctrl_info*, %struct.as3722_pctrl_info** %4, align 8
  %105 = getelementptr inbounds %struct.as3722_pctrl_info, %struct.as3722_pctrl_info* %104, i32 0, i32 0
  %106 = load %struct.as3722_pctrl_info*, %struct.as3722_pctrl_info** %4, align 8
  %107 = call i32 @gpiochip_add_data(%struct.TYPE_12__* %105, %struct.as3722_pctrl_info* %106)
  store i32 %107, i32* %5, align 4
  %108 = load i32, i32* %5, align 4
  %109 = icmp slt i32 %108, 0
  br i1 %109, label %110, label %116

110:                                              ; preds = %86
  %111 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %112 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %111, i32 0, i32 0
  %113 = load i32, i32* %5, align 4
  %114 = call i32 (%struct.TYPE_13__*, i8*, ...) @dev_err(%struct.TYPE_13__* %112, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %113)
  %115 = load i32, i32* %5, align 4
  store i32 %115, i32* %2, align 4
  br label %137

116:                                              ; preds = %86
  %117 = load %struct.as3722_pctrl_info*, %struct.as3722_pctrl_info** %4, align 8
  %118 = getelementptr inbounds %struct.as3722_pctrl_info, %struct.as3722_pctrl_info* %117, i32 0, i32 0
  %119 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %120 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %119, i32 0, i32 0
  %121 = call i32 @dev_name(%struct.TYPE_13__* %120)
  %122 = load i32, i32* @AS3722_PIN_NUM, align 4
  %123 = call i32 @gpiochip_add_pin_range(%struct.TYPE_12__* %118, i32 %121, i32 0, i32 0, i32 %122)
  store i32 %123, i32* %5, align 4
  %124 = load i32, i32* %5, align 4
  %125 = icmp slt i32 %124, 0
  br i1 %125, label %126, label %131

126:                                              ; preds = %116
  %127 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %128 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %127, i32 0, i32 0
  %129 = load i32, i32* %5, align 4
  %130 = call i32 (%struct.TYPE_13__*, i8*, ...) @dev_err(%struct.TYPE_13__* %128, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i32 %129)
  br label %132

131:                                              ; preds = %116
  store i32 0, i32* %2, align 4
  br label %137

132:                                              ; preds = %126
  %133 = load %struct.as3722_pctrl_info*, %struct.as3722_pctrl_info** %4, align 8
  %134 = getelementptr inbounds %struct.as3722_pctrl_info, %struct.as3722_pctrl_info* %133, i32 0, i32 0
  %135 = call i32 @gpiochip_remove(%struct.TYPE_12__* %134)
  %136 = load i32, i32* %5, align 4
  store i32 %136, i32* %2, align 4
  br label %137

137:                                              ; preds = %132, %131, %110, %78, %12
  %138 = load i32, i32* %2, align 4
  ret i32 %138
}

declare dso_local %struct.as3722_pctrl_info* @devm_kzalloc(%struct.TYPE_13__*, i32, i32) #1

declare dso_local i32 @dev_get_drvdata(%struct.TYPE_15__*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.as3722_pctrl_info*) #1

declare dso_local i8* @ARRAY_SIZE(i8*) #1

declare dso_local i32 @dev_name(%struct.TYPE_13__*) #1

declare dso_local i32 @devm_pinctrl_register(%struct.TYPE_13__*, %struct.TYPE_14__*, %struct.as3722_pctrl_info*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @dev_err(%struct.TYPE_13__*, i8*, ...) #1

declare dso_local i32 @PTR_ERR(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @gpiochip_add_data(%struct.TYPE_12__*, %struct.as3722_pctrl_info*) #1

declare dso_local i32 @gpiochip_add_pin_range(%struct.TYPE_12__*, i32, i32, i32, i32) #1

declare dso_local i32 @gpiochip_remove(%struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
