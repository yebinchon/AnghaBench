; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-ds2404.c_rtc_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-ds2404.c_rtc_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.ds2404_platform_data = type { i32 }
%struct.ds2404 = type { %struct.TYPE_7__*, %struct.TYPE_6__* }
%struct.TYPE_7__ = type { i32, i32* }
%struct.TYPE_6__ = type { i32 }

@EBUSY = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ds2404_gpio_unmap = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"using GPIOs RST:%d, CLK:%d, DQ:%d\0A\00", align 1
@DS2404_RST = common dso_local global i64 0, align 8
@DS2404_CLK = common dso_local global i64 0, align 8
@DS2404_DQ = common dso_local global i64 0, align 8
@ds2404_rtc_ops = common dso_local global i32 0, align 4
@U32_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @rtc_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtc_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.ds2404_platform_data*, align 8
  %5 = alloca %struct.ds2404*, align 8
  %6 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %7 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %8 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %7, i32 0, i32 0
  %9 = call %struct.ds2404_platform_data* @dev_get_platdata(i32* %8)
  store %struct.ds2404_platform_data* %9, %struct.ds2404_platform_data** %4, align 8
  %10 = load i32, i32* @EBUSY, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %6, align 4
  %12 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %13 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %12, i32 0, i32 0
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call %struct.ds2404* @devm_kzalloc(i32* %13, i32 16, i32 %14)
  store %struct.ds2404* %15, %struct.ds2404** %5, align 8
  %16 = load %struct.ds2404*, %struct.ds2404** %5, align 8
  %17 = icmp ne %struct.ds2404* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %1
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %2, align 4
  br label %105

21:                                               ; preds = %1
  %22 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %23 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %22, i32 0, i32 0
  %24 = call %struct.TYPE_7__* @devm_rtc_allocate_device(i32* %23)
  %25 = load %struct.ds2404*, %struct.ds2404** %5, align 8
  %26 = getelementptr inbounds %struct.ds2404, %struct.ds2404* %25, i32 0, i32 0
  store %struct.TYPE_7__* %24, %struct.TYPE_7__** %26, align 8
  %27 = load %struct.ds2404*, %struct.ds2404** %5, align 8
  %28 = getelementptr inbounds %struct.ds2404, %struct.ds2404* %27, i32 0, i32 0
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %28, align 8
  %30 = call i64 @IS_ERR(%struct.TYPE_7__* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %21
  %33 = load %struct.ds2404*, %struct.ds2404** %5, align 8
  %34 = getelementptr inbounds %struct.ds2404, %struct.ds2404* %33, i32 0, i32 0
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %34, align 8
  %36 = call i32 @PTR_ERR(%struct.TYPE_7__* %35)
  store i32 %36, i32* %2, align 4
  br label %105

37:                                               ; preds = %21
  %38 = load %struct.ds2404*, %struct.ds2404** %5, align 8
  %39 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %40 = load %struct.ds2404_platform_data*, %struct.ds2404_platform_data** %4, align 8
  %41 = call i32 @ds2404_gpio_map(%struct.ds2404* %38, %struct.platform_device* %39, %struct.ds2404_platform_data* %40)
  store i32 %41, i32* %6, align 4
  %42 = load i32, i32* %6, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %37
  %45 = load i32, i32* %6, align 4
  store i32 %45, i32* %2, align 4
  br label %105

46:                                               ; preds = %37
  %47 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %48 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %47, i32 0, i32 0
  %49 = load i32, i32* @ds2404_gpio_unmap, align 4
  %50 = load %struct.ds2404*, %struct.ds2404** %5, align 8
  %51 = call i32 @devm_add_action_or_reset(i32* %48, i32 %49, %struct.ds2404* %50)
  store i32 %51, i32* %6, align 4
  %52 = load i32, i32* %6, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %46
  %55 = load i32, i32* %6, align 4
  store i32 %55, i32* %2, align 4
  br label %105

56:                                               ; preds = %46
  %57 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %58 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %57, i32 0, i32 0
  %59 = load %struct.ds2404*, %struct.ds2404** %5, align 8
  %60 = getelementptr inbounds %struct.ds2404, %struct.ds2404* %59, i32 0, i32 1
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %60, align 8
  %62 = load i64, i64* @DS2404_RST, align 8
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i64 %62
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.ds2404*, %struct.ds2404** %5, align 8
  %67 = getelementptr inbounds %struct.ds2404, %struct.ds2404* %66, i32 0, i32 1
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** %67, align 8
  %69 = load i64, i64* @DS2404_CLK, align 8
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i64 %69
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.ds2404*, %struct.ds2404** %5, align 8
  %74 = getelementptr inbounds %struct.ds2404, %struct.ds2404* %73, i32 0, i32 1
  %75 = load %struct.TYPE_6__*, %struct.TYPE_6__** %74, align 8
  %76 = load i64, i64* @DS2404_DQ, align 8
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i64 %76
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @dev_info(i32* %58, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %65, i32 %72, i32 %79)
  %81 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %82 = load %struct.ds2404*, %struct.ds2404** %5, align 8
  %83 = call i32 @platform_set_drvdata(%struct.platform_device* %81, %struct.ds2404* %82)
  %84 = load %struct.ds2404*, %struct.ds2404** %5, align 8
  %85 = getelementptr inbounds %struct.ds2404, %struct.ds2404* %84, i32 0, i32 0
  %86 = load %struct.TYPE_7__*, %struct.TYPE_7__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %86, i32 0, i32 1
  store i32* @ds2404_rtc_ops, i32** %87, align 8
  %88 = load i32, i32* @U32_MAX, align 4
  %89 = load %struct.ds2404*, %struct.ds2404** %5, align 8
  %90 = getelementptr inbounds %struct.ds2404, %struct.ds2404* %89, i32 0, i32 0
  %91 = load %struct.TYPE_7__*, %struct.TYPE_7__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %91, i32 0, i32 0
  store i32 %88, i32* %92, align 8
  %93 = load %struct.ds2404*, %struct.ds2404** %5, align 8
  %94 = getelementptr inbounds %struct.ds2404, %struct.ds2404* %93, i32 0, i32 0
  %95 = load %struct.TYPE_7__*, %struct.TYPE_7__** %94, align 8
  %96 = call i32 @rtc_register_device(%struct.TYPE_7__* %95)
  store i32 %96, i32* %6, align 4
  %97 = load i32, i32* %6, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %101

99:                                               ; preds = %56
  %100 = load i32, i32* %6, align 4
  store i32 %100, i32* %2, align 4
  br label %105

101:                                              ; preds = %56
  %102 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %103 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %102, i32 0, i32 0
  %104 = call i32 @ds2404_enable_osc(i32* %103)
  store i32 0, i32* %2, align 4
  br label %105

105:                                              ; preds = %101, %99, %54, %44, %32, %18
  %106 = load i32, i32* %2, align 4
  ret i32 %106
}

declare dso_local %struct.ds2404_platform_data* @dev_get_platdata(i32*) #1

declare dso_local %struct.ds2404* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local %struct.TYPE_7__* @devm_rtc_allocate_device(i32*) #1

declare dso_local i64 @IS_ERR(%struct.TYPE_7__*) #1

declare dso_local i32 @PTR_ERR(%struct.TYPE_7__*) #1

declare dso_local i32 @ds2404_gpio_map(%struct.ds2404*, %struct.platform_device*, %struct.ds2404_platform_data*) #1

declare dso_local i32 @devm_add_action_or_reset(i32*, i32, %struct.ds2404*) #1

declare dso_local i32 @dev_info(i32*, i8*, i32, i32, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.ds2404*) #1

declare dso_local i32 @rtc_register_device(%struct.TYPE_7__*) #1

declare dso_local i32 @ds2404_enable_osc(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
