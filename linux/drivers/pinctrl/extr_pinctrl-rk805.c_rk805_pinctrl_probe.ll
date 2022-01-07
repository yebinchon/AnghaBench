; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-rk805.c_rk805_pinctrl_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-rk805.c_rk805_pinctrl_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i8*, i8* }
%struct.TYPE_16__ = type { i8*, i32, %struct.TYPE_17__* }
%struct.TYPE_17__ = type { %struct.TYPE_14__*, i32 }
%struct.TYPE_14__ = type { i32 }
%struct.platform_device = type { %struct.TYPE_17__ }
%struct.rk805_pctrl_info = type { %struct.TYPE_16__, i32, %struct.TYPE_15__, %struct.TYPE_13__*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct.TYPE_17__* }
%struct.TYPE_13__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@rk805_pinctrl_desc = common dso_local global %struct.TYPE_15__ zeroinitializer, align 8
@rk805_gpio_chip = common dso_local global %struct.TYPE_16__ zeroinitializer, align 8
@rk805_pins_desc = common dso_local global i8* null, align 8
@rk805_pin_functions = common dso_local global i8* null, align 8
@rk805_pin_groups = common dso_local global i8* null, align 8
@rk805_gpio_cfgs = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [26 x i8] c"unsupported RK805 ID %lu\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"Couldn't add gpiochip\0A\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"Couldn't add pinctrl\0A\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"Couldn't add gpiochip pin range\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @rk805_pinctrl_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rk805_pinctrl_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.rk805_pctrl_info*, align 8
  %5 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %6 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %7 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %6, i32 0, i32 0
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call %struct.rk805_pctrl_info* @devm_kzalloc(%struct.TYPE_17__* %7, i32 120, i32 %8)
  store %struct.rk805_pctrl_info* %9, %struct.rk805_pctrl_info** %4, align 8
  %10 = load %struct.rk805_pctrl_info*, %struct.rk805_pctrl_info** %4, align 8
  %11 = icmp ne %struct.rk805_pctrl_info* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %1
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %2, align 4
  br label %170

15:                                               ; preds = %1
  %16 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %17 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %16, i32 0, i32 0
  %18 = load %struct.rk805_pctrl_info*, %struct.rk805_pctrl_info** %4, align 8
  %19 = getelementptr inbounds %struct.rk805_pctrl_info, %struct.rk805_pctrl_info* %18, i32 0, i32 11
  store %struct.TYPE_17__* %17, %struct.TYPE_17__** %19, align 8
  %20 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %21 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_14__*, %struct.TYPE_14__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.rk805_pctrl_info*, %struct.rk805_pctrl_info** %4, align 8
  %27 = getelementptr inbounds %struct.rk805_pctrl_info, %struct.rk805_pctrl_info* %26, i32 0, i32 11
  %28 = load %struct.TYPE_17__*, %struct.TYPE_17__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %28, i32 0, i32 1
  store i32 %25, i32* %29, align 8
  %30 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %31 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %31, i32 0, i32 0
  %33 = load %struct.TYPE_14__*, %struct.TYPE_14__** %32, align 8
  %34 = call %struct.TYPE_13__* @dev_get_drvdata(%struct.TYPE_14__* %33)
  %35 = load %struct.rk805_pctrl_info*, %struct.rk805_pctrl_info** %4, align 8
  %36 = getelementptr inbounds %struct.rk805_pctrl_info, %struct.rk805_pctrl_info* %35, i32 0, i32 3
  store %struct.TYPE_13__* %34, %struct.TYPE_13__** %36, align 8
  %37 = load %struct.rk805_pctrl_info*, %struct.rk805_pctrl_info** %4, align 8
  %38 = getelementptr inbounds %struct.rk805_pctrl_info, %struct.rk805_pctrl_info* %37, i32 0, i32 2
  %39 = bitcast %struct.TYPE_15__* %38 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %39, i8* align 8 bitcast (%struct.TYPE_15__* @rk805_pinctrl_desc to i8*), i64 16, i1 false)
  %40 = load %struct.rk805_pctrl_info*, %struct.rk805_pctrl_info** %4, align 8
  %41 = getelementptr inbounds %struct.rk805_pctrl_info, %struct.rk805_pctrl_info* %40, i32 0, i32 0
  %42 = bitcast %struct.TYPE_16__* %41 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %42, i8* align 8 bitcast (%struct.TYPE_16__* @rk805_gpio_chip to i8*), i64 24, i1 false)
  %43 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %44 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %43, i32 0, i32 0
  %45 = load %struct.rk805_pctrl_info*, %struct.rk805_pctrl_info** %4, align 8
  %46 = getelementptr inbounds %struct.rk805_pctrl_info, %struct.rk805_pctrl_info* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %46, i32 0, i32 2
  store %struct.TYPE_17__* %44, %struct.TYPE_17__** %47, align 8
  %48 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %49 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %49, i32 0, i32 0
  %51 = load %struct.TYPE_14__*, %struct.TYPE_14__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.rk805_pctrl_info*, %struct.rk805_pctrl_info** %4, align 8
  %55 = getelementptr inbounds %struct.rk805_pctrl_info, %struct.rk805_pctrl_info* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %55, i32 0, i32 1
  store i32 %53, i32* %56, align 8
  %57 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %58 = load %struct.rk805_pctrl_info*, %struct.rk805_pctrl_info** %4, align 8
  %59 = call i32 @platform_set_drvdata(%struct.platform_device* %57, %struct.rk805_pctrl_info* %58)
  %60 = load %struct.rk805_pctrl_info*, %struct.rk805_pctrl_info** %4, align 8
  %61 = getelementptr inbounds %struct.rk805_pctrl_info, %struct.rk805_pctrl_info* %60, i32 0, i32 3
  %62 = load %struct.TYPE_13__*, %struct.TYPE_13__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  switch i32 %64, label %104 [
    i32 128, label %65
  ]

65:                                               ; preds = %15
  %66 = load i8*, i8** @rk805_pins_desc, align 8
  %67 = load %struct.rk805_pctrl_info*, %struct.rk805_pctrl_info** %4, align 8
  %68 = getelementptr inbounds %struct.rk805_pctrl_info, %struct.rk805_pctrl_info* %67, i32 0, i32 10
  store i8* %66, i8** %68, align 8
  %69 = load i8*, i8** @rk805_pins_desc, align 8
  %70 = call i8* @ARRAY_SIZE(i8* %69)
  %71 = load %struct.rk805_pctrl_info*, %struct.rk805_pctrl_info** %4, align 8
  %72 = getelementptr inbounds %struct.rk805_pctrl_info, %struct.rk805_pctrl_info* %71, i32 0, i32 9
  store i8* %70, i8** %72, align 8
  %73 = load i8*, i8** @rk805_pin_functions, align 8
  %74 = load %struct.rk805_pctrl_info*, %struct.rk805_pctrl_info** %4, align 8
  %75 = getelementptr inbounds %struct.rk805_pctrl_info, %struct.rk805_pctrl_info* %74, i32 0, i32 8
  store i8* %73, i8** %75, align 8
  %76 = load i8*, i8** @rk805_pin_functions, align 8
  %77 = call i8* @ARRAY_SIZE(i8* %76)
  %78 = load %struct.rk805_pctrl_info*, %struct.rk805_pctrl_info** %4, align 8
  %79 = getelementptr inbounds %struct.rk805_pctrl_info, %struct.rk805_pctrl_info* %78, i32 0, i32 7
  store i8* %77, i8** %79, align 8
  %80 = load i8*, i8** @rk805_pin_groups, align 8
  %81 = load %struct.rk805_pctrl_info*, %struct.rk805_pctrl_info** %4, align 8
  %82 = getelementptr inbounds %struct.rk805_pctrl_info, %struct.rk805_pctrl_info* %81, i32 0, i32 6
  store i8* %80, i8** %82, align 8
  %83 = load i8*, i8** @rk805_pin_groups, align 8
  %84 = call i8* @ARRAY_SIZE(i8* %83)
  %85 = load %struct.rk805_pctrl_info*, %struct.rk805_pctrl_info** %4, align 8
  %86 = getelementptr inbounds %struct.rk805_pctrl_info, %struct.rk805_pctrl_info* %85, i32 0, i32 5
  store i8* %84, i8** %86, align 8
  %87 = load i8*, i8** @rk805_pins_desc, align 8
  %88 = load %struct.rk805_pctrl_info*, %struct.rk805_pctrl_info** %4, align 8
  %89 = getelementptr inbounds %struct.rk805_pctrl_info, %struct.rk805_pctrl_info* %88, i32 0, i32 2
  %90 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %89, i32 0, i32 1
  store i8* %87, i8** %90, align 8
  %91 = load i8*, i8** @rk805_pins_desc, align 8
  %92 = call i8* @ARRAY_SIZE(i8* %91)
  %93 = load %struct.rk805_pctrl_info*, %struct.rk805_pctrl_info** %4, align 8
  %94 = getelementptr inbounds %struct.rk805_pctrl_info, %struct.rk805_pctrl_info* %93, i32 0, i32 2
  %95 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %94, i32 0, i32 0
  store i8* %92, i8** %95, align 8
  %96 = load i8*, i8** @rk805_gpio_cfgs, align 8
  %97 = load %struct.rk805_pctrl_info*, %struct.rk805_pctrl_info** %4, align 8
  %98 = getelementptr inbounds %struct.rk805_pctrl_info, %struct.rk805_pctrl_info* %97, i32 0, i32 4
  store i8* %96, i8** %98, align 8
  %99 = load i8*, i8** @rk805_gpio_cfgs, align 8
  %100 = call i8* @ARRAY_SIZE(i8* %99)
  %101 = load %struct.rk805_pctrl_info*, %struct.rk805_pctrl_info** %4, align 8
  %102 = getelementptr inbounds %struct.rk805_pctrl_info, %struct.rk805_pctrl_info* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %102, i32 0, i32 0
  store i8* %100, i8** %103, align 8
  br label %115

104:                                              ; preds = %15
  %105 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %106 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %105, i32 0, i32 0
  %107 = load %struct.rk805_pctrl_info*, %struct.rk805_pctrl_info** %4, align 8
  %108 = getelementptr inbounds %struct.rk805_pctrl_info, %struct.rk805_pctrl_info* %107, i32 0, i32 3
  %109 = load %struct.TYPE_13__*, %struct.TYPE_13__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = call i32 (%struct.TYPE_17__*, i8*, ...) @dev_err(%struct.TYPE_17__* %106, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %111)
  %113 = load i32, i32* @EINVAL, align 4
  %114 = sub nsw i32 0, %113
  store i32 %114, i32* %2, align 4
  br label %170

115:                                              ; preds = %65
  %116 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %117 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %116, i32 0, i32 0
  %118 = load %struct.rk805_pctrl_info*, %struct.rk805_pctrl_info** %4, align 8
  %119 = getelementptr inbounds %struct.rk805_pctrl_info, %struct.rk805_pctrl_info* %118, i32 0, i32 0
  %120 = load %struct.rk805_pctrl_info*, %struct.rk805_pctrl_info** %4, align 8
  %121 = call i32 @devm_gpiochip_add_data(%struct.TYPE_17__* %117, %struct.TYPE_16__* %119, %struct.rk805_pctrl_info* %120)
  store i32 %121, i32* %5, align 4
  %122 = load i32, i32* %5, align 4
  %123 = icmp slt i32 %122, 0
  br i1 %123, label %124, label %129

124:                                              ; preds = %115
  %125 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %126 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %125, i32 0, i32 0
  %127 = call i32 (%struct.TYPE_17__*, i8*, ...) @dev_err(%struct.TYPE_17__* %126, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %128 = load i32, i32* %5, align 4
  store i32 %128, i32* %2, align 4
  br label %170

129:                                              ; preds = %115
  %130 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %131 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %130, i32 0, i32 0
  %132 = load %struct.rk805_pctrl_info*, %struct.rk805_pctrl_info** %4, align 8
  %133 = getelementptr inbounds %struct.rk805_pctrl_info, %struct.rk805_pctrl_info* %132, i32 0, i32 2
  %134 = load %struct.rk805_pctrl_info*, %struct.rk805_pctrl_info** %4, align 8
  %135 = call i32 @devm_pinctrl_register(%struct.TYPE_17__* %131, %struct.TYPE_15__* %133, %struct.rk805_pctrl_info* %134)
  %136 = load %struct.rk805_pctrl_info*, %struct.rk805_pctrl_info** %4, align 8
  %137 = getelementptr inbounds %struct.rk805_pctrl_info, %struct.rk805_pctrl_info* %136, i32 0, i32 1
  store i32 %135, i32* %137, align 8
  %138 = load %struct.rk805_pctrl_info*, %struct.rk805_pctrl_info** %4, align 8
  %139 = getelementptr inbounds %struct.rk805_pctrl_info, %struct.rk805_pctrl_info* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 8
  %141 = call i64 @IS_ERR(i32 %140)
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %143, label %151

143:                                              ; preds = %129
  %144 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %145 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %144, i32 0, i32 0
  %146 = call i32 (%struct.TYPE_17__*, i8*, ...) @dev_err(%struct.TYPE_17__* %145, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  %147 = load %struct.rk805_pctrl_info*, %struct.rk805_pctrl_info** %4, align 8
  %148 = getelementptr inbounds %struct.rk805_pctrl_info, %struct.rk805_pctrl_info* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 8
  %150 = call i32 @PTR_ERR(i32 %149)
  store i32 %150, i32* %2, align 4
  br label %170

151:                                              ; preds = %129
  %152 = load %struct.rk805_pctrl_info*, %struct.rk805_pctrl_info** %4, align 8
  %153 = getelementptr inbounds %struct.rk805_pctrl_info, %struct.rk805_pctrl_info* %152, i32 0, i32 0
  %154 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %155 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %154, i32 0, i32 0
  %156 = call i32 @dev_name(%struct.TYPE_17__* %155)
  %157 = load %struct.rk805_pctrl_info*, %struct.rk805_pctrl_info** %4, align 8
  %158 = getelementptr inbounds %struct.rk805_pctrl_info, %struct.rk805_pctrl_info* %157, i32 0, i32 0
  %159 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %158, i32 0, i32 0
  %160 = load i8*, i8** %159, align 8
  %161 = call i32 @gpiochip_add_pin_range(%struct.TYPE_16__* %153, i32 %156, i32 0, i32 0, i8* %160)
  store i32 %161, i32* %5, align 4
  %162 = load i32, i32* %5, align 4
  %163 = icmp slt i32 %162, 0
  br i1 %163, label %164, label %169

164:                                              ; preds = %151
  %165 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %166 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %165, i32 0, i32 0
  %167 = call i32 (%struct.TYPE_17__*, i8*, ...) @dev_err(%struct.TYPE_17__* %166, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0))
  %168 = load i32, i32* %5, align 4
  store i32 %168, i32* %2, align 4
  br label %170

169:                                              ; preds = %151
  store i32 0, i32* %2, align 4
  br label %170

170:                                              ; preds = %169, %164, %143, %124, %104, %12
  %171 = load i32, i32* %2, align 4
  ret i32 %171
}

declare dso_local %struct.rk805_pctrl_info* @devm_kzalloc(%struct.TYPE_17__*, i32, i32) #1

declare dso_local %struct.TYPE_13__* @dev_get_drvdata(%struct.TYPE_14__*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.rk805_pctrl_info*) #1

declare dso_local i8* @ARRAY_SIZE(i8*) #1

declare dso_local i32 @dev_err(%struct.TYPE_17__*, i8*, ...) #1

declare dso_local i32 @devm_gpiochip_add_data(%struct.TYPE_17__*, %struct.TYPE_16__*, %struct.rk805_pctrl_info*) #1

declare dso_local i32 @devm_pinctrl_register(%struct.TYPE_17__*, %struct.TYPE_15__*, %struct.rk805_pctrl_info*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @gpiochip_add_pin_range(%struct.TYPE_16__*, i32, i32, i32, i8*) #1

declare dso_local i32 @dev_name(%struct.TYPE_17__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
