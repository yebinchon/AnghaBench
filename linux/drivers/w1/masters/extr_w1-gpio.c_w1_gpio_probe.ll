; ModuleID = '/home/carl/AnghaBench/linux/drivers/w1/masters/extr_w1-gpio.c_w1_gpio_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/w1/masters/extr_w1-gpio.c_w1_gpio_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { %struct.w1_gpio_platform_data*, %struct.device_node* }
%struct.w1_gpio_platform_data = type { i64, i32 (i32)*, i64 }
%struct.device_node = type { i32 }
%struct.w1_bus_master = type { i32, i32, i32, %struct.w1_gpio_platform_data* }

@GPIOD_OUT_LOW_OPEN_DRAIN = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"linux,open-drain\00", align 1
@GPIOD_OUT_LOW = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"No configuration data\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [15 x i8] c"Out of memory\0A\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"gpio_request (pin) failed\0A\00", align 1
@.str.4 = private unnamed_addr constant [49 x i8] c"gpio_request_one (ext_pullup_enable_pin) failed\0A\00", align 1
@w1_gpio_read_bit = common dso_local global i32 0, align 4
@w1_gpio_write_bit = common dso_local global i32 0, align 4
@w1_gpio_set_pullup = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [29 x i8] c"w1_add_master device failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @w1_gpio_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @w1_gpio_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.w1_bus_master*, align 8
  %5 = alloca %struct.w1_gpio_platform_data*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_node*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %10 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %11 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %10, i32 0, i32 0
  store %struct.device* %11, %struct.device** %6, align 8
  %12 = load %struct.device*, %struct.device** %6, align 8
  %13 = getelementptr inbounds %struct.device, %struct.device* %12, i32 0, i32 1
  %14 = load %struct.device_node*, %struct.device_node** %13, align 8
  store %struct.device_node* %14, %struct.device_node** %7, align 8
  %15 = load i32, i32* @GPIOD_OUT_LOW_OPEN_DRAIN, align 4
  store i32 %15, i32* %8, align 4
  %16 = call i64 (...) @of_have_populated_dt()
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %40

18:                                               ; preds = %1
  %19 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %20 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %19, i32 0, i32 0
  %21 = load i32, i32* @GFP_KERNEL, align 4
  %22 = call i8* @devm_kzalloc(%struct.device* %20, i32 24, i32 %21)
  %23 = bitcast i8* %22 to %struct.w1_gpio_platform_data*
  store %struct.w1_gpio_platform_data* %23, %struct.w1_gpio_platform_data** %5, align 8
  %24 = load %struct.w1_gpio_platform_data*, %struct.w1_gpio_platform_data** %5, align 8
  %25 = icmp ne %struct.w1_gpio_platform_data* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %18
  %27 = load i32, i32* @ENOMEM, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %2, align 4
  br label %152

29:                                               ; preds = %18
  %30 = load %struct.device_node*, %struct.device_node** %7, align 8
  %31 = call i64 @of_get_property(%struct.device_node* %30, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32* null)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %29
  %34 = load i32, i32* @GPIOD_OUT_LOW, align 4
  store i32 %34, i32* %8, align 4
  br label %35

35:                                               ; preds = %33, %29
  %36 = load %struct.w1_gpio_platform_data*, %struct.w1_gpio_platform_data** %5, align 8
  %37 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %38 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.device, %struct.device* %38, i32 0, i32 0
  store %struct.w1_gpio_platform_data* %36, %struct.w1_gpio_platform_data** %39, align 8
  br label %40

40:                                               ; preds = %35, %1
  %41 = load %struct.device*, %struct.device** %6, align 8
  %42 = call %struct.w1_gpio_platform_data* @dev_get_platdata(%struct.device* %41)
  store %struct.w1_gpio_platform_data* %42, %struct.w1_gpio_platform_data** %5, align 8
  %43 = load %struct.w1_gpio_platform_data*, %struct.w1_gpio_platform_data** %5, align 8
  %44 = icmp ne %struct.w1_gpio_platform_data* %43, null
  br i1 %44, label %50, label %45

45:                                               ; preds = %40
  %46 = load %struct.device*, %struct.device** %6, align 8
  %47 = call i32 @dev_err(%struct.device* %46, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %48 = load i32, i32* @ENXIO, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %2, align 4
  br label %152

50:                                               ; preds = %40
  %51 = load %struct.device*, %struct.device** %6, align 8
  %52 = load i32, i32* @GFP_KERNEL, align 4
  %53 = call i8* @devm_kzalloc(%struct.device* %51, i32 24, i32 %52)
  %54 = bitcast i8* %53 to %struct.w1_bus_master*
  store %struct.w1_bus_master* %54, %struct.w1_bus_master** %4, align 8
  %55 = load %struct.w1_bus_master*, %struct.w1_bus_master** %4, align 8
  %56 = icmp ne %struct.w1_bus_master* %55, null
  br i1 %56, label %62, label %57

57:                                               ; preds = %50
  %58 = load %struct.device*, %struct.device** %6, align 8
  %59 = call i32 @dev_err(%struct.device* %58, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  %60 = load i32, i32* @ENOMEM, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %2, align 4
  br label %152

62:                                               ; preds = %50
  %63 = load %struct.device*, %struct.device** %6, align 8
  %64 = load i32, i32* %8, align 4
  %65 = call i64 @devm_gpiod_get_index(%struct.device* %63, i32* null, i32 0, i32 %64)
  %66 = load %struct.w1_gpio_platform_data*, %struct.w1_gpio_platform_data** %5, align 8
  %67 = getelementptr inbounds %struct.w1_gpio_platform_data, %struct.w1_gpio_platform_data* %66, i32 0, i32 2
  store i64 %65, i64* %67, align 8
  %68 = load %struct.w1_gpio_platform_data*, %struct.w1_gpio_platform_data** %5, align 8
  %69 = getelementptr inbounds %struct.w1_gpio_platform_data, %struct.w1_gpio_platform_data* %68, i32 0, i32 2
  %70 = load i64, i64* %69, align 8
  %71 = call i64 @IS_ERR(i64 %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %80

73:                                               ; preds = %62
  %74 = load %struct.device*, %struct.device** %6, align 8
  %75 = call i32 @dev_err(%struct.device* %74, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0))
  %76 = load %struct.w1_gpio_platform_data*, %struct.w1_gpio_platform_data** %5, align 8
  %77 = getelementptr inbounds %struct.w1_gpio_platform_data, %struct.w1_gpio_platform_data* %76, i32 0, i32 2
  %78 = load i64, i64* %77, align 8
  %79 = call i32 @PTR_ERR(i64 %78)
  store i32 %79, i32* %2, align 4
  br label %152

80:                                               ; preds = %62
  %81 = load %struct.device*, %struct.device** %6, align 8
  %82 = load i32, i32* @GPIOD_OUT_LOW, align 4
  %83 = call i64 @devm_gpiod_get_index_optional(%struct.device* %81, i32* null, i32 1, i32 %82)
  %84 = load %struct.w1_gpio_platform_data*, %struct.w1_gpio_platform_data** %5, align 8
  %85 = getelementptr inbounds %struct.w1_gpio_platform_data, %struct.w1_gpio_platform_data* %84, i32 0, i32 0
  store i64 %83, i64* %85, align 8
  %86 = load %struct.w1_gpio_platform_data*, %struct.w1_gpio_platform_data** %5, align 8
  %87 = getelementptr inbounds %struct.w1_gpio_platform_data, %struct.w1_gpio_platform_data* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = call i64 @IS_ERR(i64 %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %98

91:                                               ; preds = %80
  %92 = load %struct.device*, %struct.device** %6, align 8
  %93 = call i32 @dev_err(%struct.device* %92, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.4, i64 0, i64 0))
  %94 = load %struct.w1_gpio_platform_data*, %struct.w1_gpio_platform_data** %5, align 8
  %95 = getelementptr inbounds %struct.w1_gpio_platform_data, %struct.w1_gpio_platform_data* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = call i32 @PTR_ERR(i64 %96)
  store i32 %97, i32* %2, align 4
  br label %152

98:                                               ; preds = %80
  %99 = load %struct.w1_gpio_platform_data*, %struct.w1_gpio_platform_data** %5, align 8
  %100 = load %struct.w1_bus_master*, %struct.w1_bus_master** %4, align 8
  %101 = getelementptr inbounds %struct.w1_bus_master, %struct.w1_bus_master* %100, i32 0, i32 3
  store %struct.w1_gpio_platform_data* %99, %struct.w1_gpio_platform_data** %101, align 8
  %102 = load i32, i32* @w1_gpio_read_bit, align 4
  %103 = load %struct.w1_bus_master*, %struct.w1_bus_master** %4, align 8
  %104 = getelementptr inbounds %struct.w1_bus_master, %struct.w1_bus_master* %103, i32 0, i32 2
  store i32 %102, i32* %104, align 8
  %105 = load %struct.w1_gpio_platform_data*, %struct.w1_gpio_platform_data** %5, align 8
  %106 = getelementptr inbounds %struct.w1_gpio_platform_data, %struct.w1_gpio_platform_data* %105, i32 0, i32 2
  %107 = load i64, i64* %106, align 8
  %108 = call i32 @gpiod_direction_output(i64 %107, i32 1)
  %109 = load i32, i32* @w1_gpio_write_bit, align 4
  %110 = load %struct.w1_bus_master*, %struct.w1_bus_master** %4, align 8
  %111 = getelementptr inbounds %struct.w1_bus_master, %struct.w1_bus_master* %110, i32 0, i32 1
  store i32 %109, i32* %111, align 4
  %112 = load i32, i32* %8, align 4
  %113 = load i32, i32* @GPIOD_OUT_LOW_OPEN_DRAIN, align 4
  %114 = icmp eq i32 %112, %113
  br i1 %114, label %115, label %119

115:                                              ; preds = %98
  %116 = load i32, i32* @w1_gpio_set_pullup, align 4
  %117 = load %struct.w1_bus_master*, %struct.w1_bus_master** %4, align 8
  %118 = getelementptr inbounds %struct.w1_bus_master, %struct.w1_bus_master* %117, i32 0, i32 0
  store i32 %116, i32* %118, align 8
  br label %119

119:                                              ; preds = %115, %98
  %120 = load %struct.w1_bus_master*, %struct.w1_bus_master** %4, align 8
  %121 = call i32 @w1_add_master_device(%struct.w1_bus_master* %120)
  store i32 %121, i32* %9, align 4
  %122 = load i32, i32* %9, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %128

124:                                              ; preds = %119
  %125 = load %struct.device*, %struct.device** %6, align 8
  %126 = call i32 @dev_err(%struct.device* %125, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0))
  %127 = load i32, i32* %9, align 4
  store i32 %127, i32* %2, align 4
  br label %152

128:                                              ; preds = %119
  %129 = load %struct.w1_gpio_platform_data*, %struct.w1_gpio_platform_data** %5, align 8
  %130 = getelementptr inbounds %struct.w1_gpio_platform_data, %struct.w1_gpio_platform_data* %129, i32 0, i32 1
  %131 = load i32 (i32)*, i32 (i32)** %130, align 8
  %132 = icmp ne i32 (i32)* %131, null
  br i1 %132, label %133, label %138

133:                                              ; preds = %128
  %134 = load %struct.w1_gpio_platform_data*, %struct.w1_gpio_platform_data** %5, align 8
  %135 = getelementptr inbounds %struct.w1_gpio_platform_data, %struct.w1_gpio_platform_data* %134, i32 0, i32 1
  %136 = load i32 (i32)*, i32 (i32)** %135, align 8
  %137 = call i32 %136(i32 1)
  br label %138

138:                                              ; preds = %133, %128
  %139 = load %struct.w1_gpio_platform_data*, %struct.w1_gpio_platform_data** %5, align 8
  %140 = getelementptr inbounds %struct.w1_gpio_platform_data, %struct.w1_gpio_platform_data* %139, i32 0, i32 0
  %141 = load i64, i64* %140, align 8
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %143, label %148

143:                                              ; preds = %138
  %144 = load %struct.w1_gpio_platform_data*, %struct.w1_gpio_platform_data** %5, align 8
  %145 = getelementptr inbounds %struct.w1_gpio_platform_data, %struct.w1_gpio_platform_data* %144, i32 0, i32 0
  %146 = load i64, i64* %145, align 8
  %147 = call i32 @gpiod_set_value(i64 %146, i32 1)
  br label %148

148:                                              ; preds = %143, %138
  %149 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %150 = load %struct.w1_bus_master*, %struct.w1_bus_master** %4, align 8
  %151 = call i32 @platform_set_drvdata(%struct.platform_device* %149, %struct.w1_bus_master* %150)
  store i32 0, i32* %2, align 4
  br label %152

152:                                              ; preds = %148, %124, %91, %73, %57, %45, %26
  %153 = load i32, i32* %2, align 4
  ret i32 %153
}

declare dso_local i64 @of_have_populated_dt(...) #1

declare dso_local i8* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i64 @of_get_property(%struct.device_node*, i8*, i32*) #1

declare dso_local %struct.w1_gpio_platform_data* @dev_get_platdata(%struct.device*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i64 @devm_gpiod_get_index(%struct.device*, i32*, i32, i32) #1

declare dso_local i64 @IS_ERR(i64) #1

declare dso_local i32 @PTR_ERR(i64) #1

declare dso_local i64 @devm_gpiod_get_index_optional(%struct.device*, i32*, i32, i32) #1

declare dso_local i32 @gpiod_direction_output(i64, i32) #1

declare dso_local i32 @w1_add_master_device(%struct.w1_bus_master*) #1

declare dso_local i32 @gpiod_set_value(i64, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.w1_bus_master*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
