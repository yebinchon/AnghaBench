; ModuleID = '/home/carl/AnghaBench/linux/drivers/watchdog/extr_gpio_wdt.c_gpio_wdt_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/watchdog/extr_gpio_wdt.c_gpio_wdt_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.gpio_wdt_priv = type { %struct.TYPE_7__, i64, i32, i32 }
%struct.TYPE_7__ = type { i32, i32, %struct.device*, i32, i32*, i32* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"hw_algo\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"toggle\00", align 1
@HW_ALGO_TOGGLE = common dso_local global i32 0, align 4
@GPIOD_IN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c"level\00", align 1
@HW_ALGO_LEVEL = common dso_local global i32 0, align 4
@GPIOD_OUT_LOW = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [13 x i8] c"hw_margin_ms\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"always-running\00", align 1
@gpio_wdt_ident = common dso_local global i32 0, align 4
@gpio_wdt_ops = common dso_local global i32 0, align 4
@SOFT_TIMEOUT_MIN = common dso_local global i32 0, align 4
@SOFT_TIMEOUT_DEF = common dso_local global i32 0, align 4
@nowayout = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @gpio_wdt_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gpio_wdt_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.device_node*, align 8
  %6 = alloca %struct.gpio_wdt_priv*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %11 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %12 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %11, i32 0, i32 0
  store %struct.device* %12, %struct.device** %4, align 8
  %13 = load %struct.device*, %struct.device** %4, align 8
  %14 = getelementptr inbounds %struct.device, %struct.device* %13, i32 0, i32 0
  %15 = load %struct.device_node*, %struct.device_node** %14, align 8
  store %struct.device_node* %15, %struct.device_node** %5, align 8
  %16 = load %struct.device*, %struct.device** %4, align 8
  %17 = load i32, i32* @GFP_KERNEL, align 4
  %18 = call %struct.gpio_wdt_priv* @devm_kzalloc(%struct.device* %16, i32 56, i32 %17)
  store %struct.gpio_wdt_priv* %18, %struct.gpio_wdt_priv** %6, align 8
  %19 = load %struct.gpio_wdt_priv*, %struct.gpio_wdt_priv** %6, align 8
  %20 = icmp ne %struct.gpio_wdt_priv* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %1
  %22 = load i32, i32* @ENOMEM, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %2, align 4
  br label %143

24:                                               ; preds = %1
  %25 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %26 = load %struct.gpio_wdt_priv*, %struct.gpio_wdt_priv** %6, align 8
  %27 = call i32 @platform_set_drvdata(%struct.platform_device* %25, %struct.gpio_wdt_priv* %26)
  %28 = load %struct.device_node*, %struct.device_node** %5, align 8
  %29 = call i32 @of_property_read_string(%struct.device_node* %28, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8** %9)
  store i32 %29, i32* %10, align 4
  %30 = load i32, i32* %10, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %24
  %33 = load i32, i32* %10, align 4
  store i32 %33, i32* %2, align 4
  br label %143

34:                                               ; preds = %24
  %35 = load i8*, i8** %9, align 8
  %36 = call i32 @strcmp(i8* %35, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %43, label %38

38:                                               ; preds = %34
  %39 = load i32, i32* @HW_ALGO_TOGGLE, align 4
  %40 = load %struct.gpio_wdt_priv*, %struct.gpio_wdt_priv** %6, align 8
  %41 = getelementptr inbounds %struct.gpio_wdt_priv, %struct.gpio_wdt_priv* %40, i32 0, i32 3
  store i32 %39, i32* %41, align 4
  %42 = load i32, i32* @GPIOD_IN, align 4
  store i32 %42, i32* %7, align 4
  br label %56

43:                                               ; preds = %34
  %44 = load i8*, i8** %9, align 8
  %45 = call i32 @strcmp(i8* %44, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %52, label %47

47:                                               ; preds = %43
  %48 = load i32, i32* @HW_ALGO_LEVEL, align 4
  %49 = load %struct.gpio_wdt_priv*, %struct.gpio_wdt_priv** %6, align 8
  %50 = getelementptr inbounds %struct.gpio_wdt_priv, %struct.gpio_wdt_priv* %49, i32 0, i32 3
  store i32 %48, i32* %50, align 4
  %51 = load i32, i32* @GPIOD_OUT_LOW, align 4
  store i32 %51, i32* %7, align 4
  br label %55

52:                                               ; preds = %43
  %53 = load i32, i32* @EINVAL, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %2, align 4
  br label %143

55:                                               ; preds = %47
  br label %56

56:                                               ; preds = %55, %38
  %57 = load %struct.device*, %struct.device** %4, align 8
  %58 = load i32, i32* %7, align 4
  %59 = call i32 @devm_gpiod_get(%struct.device* %57, i32* null, i32 %58)
  %60 = load %struct.gpio_wdt_priv*, %struct.gpio_wdt_priv** %6, align 8
  %61 = getelementptr inbounds %struct.gpio_wdt_priv, %struct.gpio_wdt_priv* %60, i32 0, i32 2
  store i32 %59, i32* %61, align 8
  %62 = load %struct.gpio_wdt_priv*, %struct.gpio_wdt_priv** %6, align 8
  %63 = getelementptr inbounds %struct.gpio_wdt_priv, %struct.gpio_wdt_priv* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 8
  %65 = call i64 @IS_ERR(i32 %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %72

67:                                               ; preds = %56
  %68 = load %struct.gpio_wdt_priv*, %struct.gpio_wdt_priv** %6, align 8
  %69 = getelementptr inbounds %struct.gpio_wdt_priv, %struct.gpio_wdt_priv* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 8
  %71 = call i32 @PTR_ERR(i32 %70)
  store i32 %71, i32* %2, align 4
  br label %143

72:                                               ; preds = %56
  %73 = load %struct.device_node*, %struct.device_node** %5, align 8
  %74 = call i32 @of_property_read_u32(%struct.device_node* %73, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i32* %8)
  store i32 %74, i32* %10, align 4
  %75 = load i32, i32* %10, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %79

77:                                               ; preds = %72
  %78 = load i32, i32* %10, align 4
  store i32 %78, i32* %2, align 4
  br label %143

79:                                               ; preds = %72
  %80 = load i32, i32* %8, align 4
  %81 = icmp ult i32 %80, 2
  br i1 %81, label %85, label %82

82:                                               ; preds = %79
  %83 = load i32, i32* %8, align 4
  %84 = icmp ugt i32 %83, 65535
  br i1 %84, label %85, label %88

85:                                               ; preds = %82, %79
  %86 = load i32, i32* @EINVAL, align 4
  %87 = sub nsw i32 0, %86
  store i32 %87, i32* %2, align 4
  br label %143

88:                                               ; preds = %82
  %89 = load %struct.device_node*, %struct.device_node** %5, align 8
  %90 = call i64 @of_property_read_bool(%struct.device_node* %89, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0))
  %91 = load %struct.gpio_wdt_priv*, %struct.gpio_wdt_priv** %6, align 8
  %92 = getelementptr inbounds %struct.gpio_wdt_priv, %struct.gpio_wdt_priv* %91, i32 0, i32 1
  store i64 %90, i64* %92, align 8
  %93 = load %struct.gpio_wdt_priv*, %struct.gpio_wdt_priv** %6, align 8
  %94 = getelementptr inbounds %struct.gpio_wdt_priv, %struct.gpio_wdt_priv* %93, i32 0, i32 0
  %95 = load %struct.gpio_wdt_priv*, %struct.gpio_wdt_priv** %6, align 8
  %96 = call i32 @watchdog_set_drvdata(%struct.TYPE_7__* %94, %struct.gpio_wdt_priv* %95)
  %97 = load %struct.gpio_wdt_priv*, %struct.gpio_wdt_priv** %6, align 8
  %98 = getelementptr inbounds %struct.gpio_wdt_priv, %struct.gpio_wdt_priv* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %98, i32 0, i32 5
  store i32* @gpio_wdt_ident, i32** %99, align 8
  %100 = load %struct.gpio_wdt_priv*, %struct.gpio_wdt_priv** %6, align 8
  %101 = getelementptr inbounds %struct.gpio_wdt_priv, %struct.gpio_wdt_priv* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %101, i32 0, i32 4
  store i32* @gpio_wdt_ops, i32** %102, align 8
  %103 = load i32, i32* @SOFT_TIMEOUT_MIN, align 4
  %104 = load %struct.gpio_wdt_priv*, %struct.gpio_wdt_priv** %6, align 8
  %105 = getelementptr inbounds %struct.gpio_wdt_priv, %struct.gpio_wdt_priv* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %105, i32 0, i32 3
  store i32 %103, i32* %106, align 8
  %107 = load i32, i32* %8, align 4
  %108 = load %struct.gpio_wdt_priv*, %struct.gpio_wdt_priv** %6, align 8
  %109 = getelementptr inbounds %struct.gpio_wdt_priv, %struct.gpio_wdt_priv* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %109, i32 0, i32 0
  store i32 %107, i32* %110, align 8
  %111 = load %struct.device*, %struct.device** %4, align 8
  %112 = load %struct.gpio_wdt_priv*, %struct.gpio_wdt_priv** %6, align 8
  %113 = getelementptr inbounds %struct.gpio_wdt_priv, %struct.gpio_wdt_priv* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %113, i32 0, i32 2
  store %struct.device* %111, %struct.device** %114, align 8
  %115 = load i32, i32* @SOFT_TIMEOUT_DEF, align 4
  %116 = load %struct.gpio_wdt_priv*, %struct.gpio_wdt_priv** %6, align 8
  %117 = getelementptr inbounds %struct.gpio_wdt_priv, %struct.gpio_wdt_priv* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %117, i32 0, i32 1
  store i32 %115, i32* %118, align 4
  %119 = load %struct.gpio_wdt_priv*, %struct.gpio_wdt_priv** %6, align 8
  %120 = getelementptr inbounds %struct.gpio_wdt_priv, %struct.gpio_wdt_priv* %119, i32 0, i32 0
  %121 = load %struct.device*, %struct.device** %4, align 8
  %122 = call i32 @watchdog_init_timeout(%struct.TYPE_7__* %120, i32 0, %struct.device* %121)
  %123 = load %struct.gpio_wdt_priv*, %struct.gpio_wdt_priv** %6, align 8
  %124 = getelementptr inbounds %struct.gpio_wdt_priv, %struct.gpio_wdt_priv* %123, i32 0, i32 0
  %125 = load i32, i32* @nowayout, align 4
  %126 = call i32 @watchdog_set_nowayout(%struct.TYPE_7__* %124, i32 %125)
  %127 = load %struct.gpio_wdt_priv*, %struct.gpio_wdt_priv** %6, align 8
  %128 = getelementptr inbounds %struct.gpio_wdt_priv, %struct.gpio_wdt_priv* %127, i32 0, i32 0
  %129 = call i32 @watchdog_stop_on_reboot(%struct.TYPE_7__* %128)
  %130 = load %struct.gpio_wdt_priv*, %struct.gpio_wdt_priv** %6, align 8
  %131 = getelementptr inbounds %struct.gpio_wdt_priv, %struct.gpio_wdt_priv* %130, i32 0, i32 1
  %132 = load i64, i64* %131, align 8
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %138

134:                                              ; preds = %88
  %135 = load %struct.gpio_wdt_priv*, %struct.gpio_wdt_priv** %6, align 8
  %136 = getelementptr inbounds %struct.gpio_wdt_priv, %struct.gpio_wdt_priv* %135, i32 0, i32 0
  %137 = call i32 @gpio_wdt_start(%struct.TYPE_7__* %136)
  br label %138

138:                                              ; preds = %134, %88
  %139 = load %struct.device*, %struct.device** %4, align 8
  %140 = load %struct.gpio_wdt_priv*, %struct.gpio_wdt_priv** %6, align 8
  %141 = getelementptr inbounds %struct.gpio_wdt_priv, %struct.gpio_wdt_priv* %140, i32 0, i32 0
  %142 = call i32 @devm_watchdog_register_device(%struct.device* %139, %struct.TYPE_7__* %141)
  store i32 %142, i32* %2, align 4
  br label %143

143:                                              ; preds = %138, %85, %77, %67, %52, %32, %21
  %144 = load i32, i32* %2, align 4
  ret i32 %144
}

declare dso_local %struct.gpio_wdt_priv* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.gpio_wdt_priv*) #1

declare dso_local i32 @of_property_read_string(%struct.device_node*, i8*, i8**) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @devm_gpiod_get(%struct.device*, i32*, i32) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @of_property_read_u32(%struct.device_node*, i8*, i32*) #1

declare dso_local i64 @of_property_read_bool(%struct.device_node*, i8*) #1

declare dso_local i32 @watchdog_set_drvdata(%struct.TYPE_7__*, %struct.gpio_wdt_priv*) #1

declare dso_local i32 @watchdog_init_timeout(%struct.TYPE_7__*, i32, %struct.device*) #1

declare dso_local i32 @watchdog_set_nowayout(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @watchdog_stop_on_reboot(%struct.TYPE_7__*) #1

declare dso_local i32 @gpio_wdt_start(%struct.TYPE_7__*) #1

declare dso_local i32 @devm_watchdog_register_device(%struct.device*, %struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
