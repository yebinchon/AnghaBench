; ModuleID = '/home/carl/AnghaBench/linux/drivers/pps/clients/extr_pps-gpio.c_pps_gpio_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pps/clients/extr_pps-gpio.c_pps_gpio_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.pps_gpio_device_data = type { i32, i32, i64, i64 }

@GPIOD_IN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"failed to request PPS GPIO\0A\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"echo\00", align 1
@GPIOD_OUT_LOW = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"failed to request ECHO GPIO\0A\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"echo-active-ms\00", align 1
@.str.4 = private unnamed_addr constant [38 x i8] c"failed to get echo-active-ms from OF\0A\00", align 1
@.str.5 = private unnamed_addr constant [40 x i8] c"echo-active-ms: %u - bad value from OF\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [20 x i8] c"assert-falling-edge\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @pps_gpio_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pps_gpio_setup(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.pps_gpio_device_data*, align 8
  %5 = alloca %struct.device_node*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %8 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %9 = call %struct.pps_gpio_device_data* @platform_get_drvdata(%struct.platform_device* %8)
  store %struct.pps_gpio_device_data* %9, %struct.pps_gpio_device_data** %4, align 8
  %10 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %11 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load %struct.device_node*, %struct.device_node** %12, align 8
  store %struct.device_node* %13, %struct.device_node** %5, align 8
  %14 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %15 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %14, i32 0, i32 0
  %16 = load i32, i32* @GPIOD_IN, align 4
  %17 = call i64 @devm_gpiod_get(%struct.TYPE_4__* %15, i32* null, i32 %16)
  %18 = load %struct.pps_gpio_device_data*, %struct.pps_gpio_device_data** %4, align 8
  %19 = getelementptr inbounds %struct.pps_gpio_device_data, %struct.pps_gpio_device_data* %18, i32 0, i32 3
  store i64 %17, i64* %19, align 8
  %20 = load %struct.pps_gpio_device_data*, %struct.pps_gpio_device_data** %4, align 8
  %21 = getelementptr inbounds %struct.pps_gpio_device_data, %struct.pps_gpio_device_data* %20, i32 0, i32 3
  %22 = load i64, i64* %21, align 8
  %23 = call i64 @IS_ERR(i64 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %33

25:                                               ; preds = %1
  %26 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %27 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %26, i32 0, i32 0
  %28 = call i32 (%struct.TYPE_4__*, i8*, ...) @dev_err(%struct.TYPE_4__* %27, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %29 = load %struct.pps_gpio_device_data*, %struct.pps_gpio_device_data** %4, align 8
  %30 = getelementptr inbounds %struct.pps_gpio_device_data, %struct.pps_gpio_device_data* %29, i32 0, i32 3
  %31 = load i64, i64* %30, align 8
  %32 = call i32 @PTR_ERR(i64 %31)
  store i32 %32, i32* %2, align 4
  br label %99

33:                                               ; preds = %1
  %34 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %35 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %34, i32 0, i32 0
  %36 = load i32, i32* @GPIOD_OUT_LOW, align 4
  %37 = call i64 @devm_gpiod_get_optional(%struct.TYPE_4__* %35, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 %36)
  %38 = load %struct.pps_gpio_device_data*, %struct.pps_gpio_device_data** %4, align 8
  %39 = getelementptr inbounds %struct.pps_gpio_device_data, %struct.pps_gpio_device_data* %38, i32 0, i32 2
  store i64 %37, i64* %39, align 8
  %40 = load %struct.pps_gpio_device_data*, %struct.pps_gpio_device_data** %4, align 8
  %41 = getelementptr inbounds %struct.pps_gpio_device_data, %struct.pps_gpio_device_data* %40, i32 0, i32 2
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %91

44:                                               ; preds = %33
  %45 = load %struct.pps_gpio_device_data*, %struct.pps_gpio_device_data** %4, align 8
  %46 = getelementptr inbounds %struct.pps_gpio_device_data, %struct.pps_gpio_device_data* %45, i32 0, i32 2
  %47 = load i64, i64* %46, align 8
  %48 = call i64 @IS_ERR(i64 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %58

50:                                               ; preds = %44
  %51 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %52 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %51, i32 0, i32 0
  %53 = call i32 (%struct.TYPE_4__*, i8*, ...) @dev_err(%struct.TYPE_4__* %52, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  %54 = load %struct.pps_gpio_device_data*, %struct.pps_gpio_device_data** %4, align 8
  %55 = getelementptr inbounds %struct.pps_gpio_device_data, %struct.pps_gpio_device_data* %54, i32 0, i32 2
  %56 = load i64, i64* %55, align 8
  %57 = call i32 @PTR_ERR(i64 %56)
  store i32 %57, i32* %2, align 4
  br label %99

58:                                               ; preds = %44
  %59 = load %struct.device_node*, %struct.device_node** %5, align 8
  %60 = call i32 @of_property_read_u32(%struct.device_node* %59, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i32* %7)
  store i32 %60, i32* %6, align 4
  %61 = load i32, i32* %6, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %68

63:                                               ; preds = %58
  %64 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %65 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %64, i32 0, i32 0
  %66 = call i32 (%struct.TYPE_4__*, i8*, ...) @dev_err(%struct.TYPE_4__* %65, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i64 0, i64 0))
  %67 = load i32, i32* %6, align 4
  store i32 %67, i32* %2, align 4
  br label %99

68:                                               ; preds = %58
  %69 = load i32, i32* %7, align 4
  %70 = load %struct.pps_gpio_device_data*, %struct.pps_gpio_device_data** %4, align 8
  %71 = getelementptr inbounds %struct.pps_gpio_device_data, %struct.pps_gpio_device_data* %70, i32 0, i32 0
  store i32 %69, i32* %71, align 8
  %72 = load %struct.pps_gpio_device_data*, %struct.pps_gpio_device_data** %4, align 8
  %73 = getelementptr inbounds %struct.pps_gpio_device_data, %struct.pps_gpio_device_data* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %81

76:                                               ; preds = %68
  %77 = load %struct.pps_gpio_device_data*, %struct.pps_gpio_device_data** %4, align 8
  %78 = getelementptr inbounds %struct.pps_gpio_device_data, %struct.pps_gpio_device_data* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = icmp sgt i32 %79, 999
  br i1 %80, label %81, label %90

81:                                               ; preds = %76, %68
  %82 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %83 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %82, i32 0, i32 0
  %84 = load %struct.pps_gpio_device_data*, %struct.pps_gpio_device_data** %4, align 8
  %85 = getelementptr inbounds %struct.pps_gpio_device_data, %struct.pps_gpio_device_data* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = call i32 (%struct.TYPE_4__*, i8*, ...) @dev_err(%struct.TYPE_4__* %83, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.5, i64 0, i64 0), i32 %86)
  %88 = load i32, i32* @EINVAL, align 4
  %89 = sub nsw i32 0, %88
  store i32 %89, i32* %2, align 4
  br label %99

90:                                               ; preds = %76
  br label %91

91:                                               ; preds = %90, %33
  %92 = load %struct.device_node*, %struct.device_node** %5, align 8
  %93 = call i64 @of_property_read_bool(%struct.device_node* %92, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0))
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %98

95:                                               ; preds = %91
  %96 = load %struct.pps_gpio_device_data*, %struct.pps_gpio_device_data** %4, align 8
  %97 = getelementptr inbounds %struct.pps_gpio_device_data, %struct.pps_gpio_device_data* %96, i32 0, i32 1
  store i32 1, i32* %97, align 4
  br label %98

98:                                               ; preds = %95, %91
  store i32 0, i32* %2, align 4
  br label %99

99:                                               ; preds = %98, %81, %63, %50, %25
  %100 = load i32, i32* %2, align 4
  ret i32 %100
}

declare dso_local %struct.pps_gpio_device_data* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i64 @devm_gpiod_get(%struct.TYPE_4__*, i32*, i32) #1

declare dso_local i64 @IS_ERR(i64) #1

declare dso_local i32 @dev_err(%struct.TYPE_4__*, i8*, ...) #1

declare dso_local i32 @PTR_ERR(i64) #1

declare dso_local i64 @devm_gpiod_get_optional(%struct.TYPE_4__*, i8*, i32) #1

declare dso_local i32 @of_property_read_u32(%struct.device_node*, i8*, i32*) #1

declare dso_local i64 @of_property_read_bool(%struct.device_node*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
