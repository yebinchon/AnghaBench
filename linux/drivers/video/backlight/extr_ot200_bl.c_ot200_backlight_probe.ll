; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/backlight/extr_ot200_bl.c_ot200_backlight_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/backlight/extr_ot200_bl.c_ot200_backlight_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.backlight_device = type { i32 }
%struct.ot200_backlight_data = type { i32 }
%struct.backlight_properties = type { i32, i32, i32 }

@GPIO_DIMM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"ot200 backlight dimmer\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"failed to request GPIO %d\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@MFGPT_DOMAIN_ANY = common dso_local global i32 0, align 4
@pwm_timer = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [23 x i8] c"MFGPT 7 not available\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@GPIO_OUTPUT_ENABLE = common dso_local global i32 0, align 4
@GPIO_OUTPUT_AUX1 = common dso_local global i32 0, align 4
@MFGPT_REG_CMP1 = common dso_local global i32 0, align 4
@MFGPT_REG_CMP2 = common dso_local global i32 0, align 4
@MAX_COMP2 = common dso_local global i32 0, align 4
@MFGPT_REG_SETUP = common dso_local global i32 0, align 4
@PWM_SETUP = common dso_local global i32 0, align 4
@BACKLIGHT_RAW = common dso_local global i32 0, align 4
@ot200_backlight_ops = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [30 x i8] c"failed to register backlight\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @ot200_backlight_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ot200_backlight_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.backlight_device*, align 8
  %5 = alloca %struct.ot200_backlight_data*, align 8
  %6 = alloca %struct.backlight_properties, align 4
  %7 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  store i32 0, i32* %7, align 4
  %8 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %9 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %8, i32 0, i32 0
  %10 = load i32, i32* @GPIO_DIMM, align 4
  %11 = call i64 @devm_gpio_request(i32* %9, i32 %10, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %12 = icmp slt i64 %11, 0
  br i1 %12, label %13, label %20

13:                                               ; preds = %1
  %14 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %15 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %14, i32 0, i32 0
  %16 = load i32, i32* @GPIO_DIMM, align 4
  %17 = call i32 (i32*, i8*, ...) @dev_err(i32* %15, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %16)
  %18 = load i32, i32* @ENODEV, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %2, align 4
  br label %91

20:                                               ; preds = %1
  %21 = load i32, i32* @MFGPT_DOMAIN_ANY, align 4
  %22 = call i32 @cs5535_mfgpt_alloc_timer(i32 7, i32 %21)
  store i32 %22, i32* @pwm_timer, align 4
  %23 = load i32, i32* @pwm_timer, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %31, label %25

25:                                               ; preds = %20
  %26 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %27 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %26, i32 0, i32 0
  %28 = call i32 (i32*, i8*, ...) @dev_err(i32* %27, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  %29 = load i32, i32* @ENODEV, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %2, align 4
  br label %91

31:                                               ; preds = %20
  %32 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %33 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %32, i32 0, i32 0
  %34 = load i32, i32* @GFP_KERNEL, align 4
  %35 = call %struct.ot200_backlight_data* @devm_kzalloc(i32* %33, i32 4, i32 %34)
  store %struct.ot200_backlight_data* %35, %struct.ot200_backlight_data** %5, align 8
  %36 = load %struct.ot200_backlight_data*, %struct.ot200_backlight_data** %5, align 8
  %37 = icmp ne %struct.ot200_backlight_data* %36, null
  br i1 %37, label %41, label %38

38:                                               ; preds = %31
  %39 = load i32, i32* @ENOMEM, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %7, align 4
  br label %87

41:                                               ; preds = %31
  %42 = load i32, i32* @GPIO_DIMM, align 4
  %43 = load i32, i32* @GPIO_OUTPUT_ENABLE, align 4
  %44 = call i32 @cs5535_gpio_set(i32 %42, i32 %43)
  %45 = load i32, i32* @GPIO_DIMM, align 4
  %46 = load i32, i32* @GPIO_OUTPUT_AUX1, align 4
  %47 = call i32 @cs5535_gpio_set(i32 %45, i32 %46)
  %48 = load i32, i32* @pwm_timer, align 4
  %49 = load i32, i32* @MFGPT_REG_CMP1, align 4
  %50 = call i32 @cs5535_mfgpt_write(i32 %48, i32 %49, i32 0)
  %51 = load i32, i32* @pwm_timer, align 4
  %52 = load i32, i32* @MFGPT_REG_CMP2, align 4
  %53 = load i32, i32* @MAX_COMP2, align 4
  %54 = call i32 @cs5535_mfgpt_write(i32 %51, i32 %52, i32 %53)
  %55 = load i32, i32* @pwm_timer, align 4
  %56 = load i32, i32* @MFGPT_REG_SETUP, align 4
  %57 = load i32, i32* @PWM_SETUP, align 4
  %58 = call i32 @cs5535_mfgpt_write(i32 %55, i32 %56, i32 %57)
  %59 = load %struct.ot200_backlight_data*, %struct.ot200_backlight_data** %5, align 8
  %60 = getelementptr inbounds %struct.ot200_backlight_data, %struct.ot200_backlight_data* %59, i32 0, i32 0
  store i32 100, i32* %60, align 4
  %61 = getelementptr inbounds %struct.backlight_properties, %struct.backlight_properties* %6, i32 0, i32 0
  store i32 100, i32* %61, align 4
  %62 = getelementptr inbounds %struct.backlight_properties, %struct.backlight_properties* %6, i32 0, i32 1
  store i32 100, i32* %62, align 4
  %63 = load i32, i32* @BACKLIGHT_RAW, align 4
  %64 = getelementptr inbounds %struct.backlight_properties, %struct.backlight_properties* %6, i32 0, i32 2
  store i32 %63, i32* %64, align 4
  %65 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %66 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %65, i32 0, i32 0
  %67 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %68 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %67, i32 0, i32 0
  %69 = call i32 @dev_name(i32* %68)
  %70 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %71 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %70, i32 0, i32 0
  %72 = load %struct.ot200_backlight_data*, %struct.ot200_backlight_data** %5, align 8
  %73 = call %struct.backlight_device* @devm_backlight_device_register(i32* %66, i32 %69, i32* %71, %struct.ot200_backlight_data* %72, i32* @ot200_backlight_ops, %struct.backlight_properties* %6)
  store %struct.backlight_device* %73, %struct.backlight_device** %4, align 8
  %74 = load %struct.backlight_device*, %struct.backlight_device** %4, align 8
  %75 = call i64 @IS_ERR(%struct.backlight_device* %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %83

77:                                               ; preds = %41
  %78 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %79 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %78, i32 0, i32 0
  %80 = call i32 (i32*, i8*, ...) @dev_err(i32* %79, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0))
  %81 = load %struct.backlight_device*, %struct.backlight_device** %4, align 8
  %82 = call i32 @PTR_ERR(%struct.backlight_device* %81)
  store i32 %82, i32* %7, align 4
  br label %87

83:                                               ; preds = %41
  %84 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %85 = load %struct.backlight_device*, %struct.backlight_device** %4, align 8
  %86 = call i32 @platform_set_drvdata(%struct.platform_device* %84, %struct.backlight_device* %85)
  store i32 0, i32* %2, align 4
  br label %91

87:                                               ; preds = %77, %38
  %88 = load i32, i32* @pwm_timer, align 4
  %89 = call i32 @cs5535_mfgpt_free_timer(i32 %88)
  %90 = load i32, i32* %7, align 4
  store i32 %90, i32* %2, align 4
  br label %91

91:                                               ; preds = %87, %83, %25, %13
  %92 = load i32, i32* %2, align 4
  ret i32 %92
}

declare dso_local i64 @devm_gpio_request(i32*, i32, i8*) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local i32 @cs5535_mfgpt_alloc_timer(i32, i32) #1

declare dso_local %struct.ot200_backlight_data* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @cs5535_gpio_set(i32, i32) #1

declare dso_local i32 @cs5535_mfgpt_write(i32, i32, i32) #1

declare dso_local %struct.backlight_device* @devm_backlight_device_register(i32*, i32, i32*, %struct.ot200_backlight_data*, i32*, %struct.backlight_properties*) #1

declare dso_local i32 @dev_name(i32*) #1

declare dso_local i64 @IS_ERR(%struct.backlight_device*) #1

declare dso_local i32 @PTR_ERR(%struct.backlight_device*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.backlight_device*) #1

declare dso_local i32 @cs5535_mfgpt_free_timer(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
