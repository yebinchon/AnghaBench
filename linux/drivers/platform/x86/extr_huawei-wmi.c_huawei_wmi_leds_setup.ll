; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/extr_huawei-wmi.c_huawei_wmi_leds_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/extr_huawei-wmi.c_huawei_wmi_leds_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wmi_device = type { i32 }
%struct.huawei_wmi_priv = type { i8*, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i8*, i32, i8*, i32, i32*, i32, i32 }

@.str = private unnamed_addr constant [5 x i8] c"SPIN\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"WPIN\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"platform::micmute\00", align 1
@huawei_wmi_micmute_led_set = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [14 x i8] c"audio-micmute\00", align 1
@LED_AUDIO_MICMUTE = common dso_local global i32 0, align 4
@LED_CORE_SUSPENDRESUME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wmi_device*)* @huawei_wmi_leds_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @huawei_wmi_leds_setup(%struct.wmi_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.wmi_device*, align 8
  %4 = alloca %struct.huawei_wmi_priv*, align 8
  store %struct.wmi_device* %0, %struct.wmi_device** %3, align 8
  %5 = load %struct.wmi_device*, %struct.wmi_device** %3, align 8
  %6 = getelementptr inbounds %struct.wmi_device, %struct.wmi_device* %5, i32 0, i32 0
  %7 = call %struct.huawei_wmi_priv* @dev_get_drvdata(i32* %6)
  store %struct.huawei_wmi_priv* %7, %struct.huawei_wmi_priv** %4, align 8
  %8 = call i32 (...) @ec_get_handle()
  %9 = load %struct.huawei_wmi_priv*, %struct.huawei_wmi_priv** %4, align 8
  %10 = getelementptr inbounds %struct.huawei_wmi_priv, %struct.huawei_wmi_priv* %9, i32 0, i32 2
  store i32 %8, i32* %10, align 8
  %11 = load %struct.huawei_wmi_priv*, %struct.huawei_wmi_priv** %4, align 8
  %12 = getelementptr inbounds %struct.huawei_wmi_priv, %struct.huawei_wmi_priv* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 8
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %69

16:                                               ; preds = %1
  %17 = load %struct.huawei_wmi_priv*, %struct.huawei_wmi_priv** %4, align 8
  %18 = getelementptr inbounds %struct.huawei_wmi_priv, %struct.huawei_wmi_priv* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 8
  %20 = call i64 @acpi_has_method(i32 %19, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %16
  %23 = load %struct.huawei_wmi_priv*, %struct.huawei_wmi_priv** %4, align 8
  %24 = getelementptr inbounds %struct.huawei_wmi_priv, %struct.huawei_wmi_priv* %23, i32 0, i32 0
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8** %24, align 8
  br label %36

25:                                               ; preds = %16
  %26 = load %struct.huawei_wmi_priv*, %struct.huawei_wmi_priv** %4, align 8
  %27 = getelementptr inbounds %struct.huawei_wmi_priv, %struct.huawei_wmi_priv* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = call i64 @acpi_has_method(i32 %28, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %25
  %32 = load %struct.huawei_wmi_priv*, %struct.huawei_wmi_priv** %4, align 8
  %33 = getelementptr inbounds %struct.huawei_wmi_priv, %struct.huawei_wmi_priv* %32, i32 0, i32 0
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8** %33, align 8
  br label %35

34:                                               ; preds = %25
  store i32 0, i32* %2, align 4
  br label %69

35:                                               ; preds = %31
  br label %36

36:                                               ; preds = %35, %22
  %37 = load %struct.huawei_wmi_priv*, %struct.huawei_wmi_priv** %4, align 8
  %38 = getelementptr inbounds %struct.huawei_wmi_priv, %struct.huawei_wmi_priv* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i8** %39, align 8
  %40 = load %struct.huawei_wmi_priv*, %struct.huawei_wmi_priv** %4, align 8
  %41 = getelementptr inbounds %struct.huawei_wmi_priv, %struct.huawei_wmi_priv* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 1
  store i32 1, i32* %42, align 8
  %43 = load i32, i32* @huawei_wmi_micmute_led_set, align 4
  %44 = load %struct.huawei_wmi_priv*, %struct.huawei_wmi_priv** %4, align 8
  %45 = getelementptr inbounds %struct.huawei_wmi_priv, %struct.huawei_wmi_priv* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 6
  store i32 %43, i32* %46, align 4
  %47 = load %struct.huawei_wmi_priv*, %struct.huawei_wmi_priv** %4, align 8
  %48 = getelementptr inbounds %struct.huawei_wmi_priv, %struct.huawei_wmi_priv* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 2
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i8** %49, align 8
  %50 = load i32, i32* @LED_AUDIO_MICMUTE, align 4
  %51 = call i32 @ledtrig_audio_get(i32 %50)
  %52 = load %struct.huawei_wmi_priv*, %struct.huawei_wmi_priv** %4, align 8
  %53 = getelementptr inbounds %struct.huawei_wmi_priv, %struct.huawei_wmi_priv* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 5
  store i32 %51, i32* %54, align 8
  %55 = load %struct.wmi_device*, %struct.wmi_device** %3, align 8
  %56 = getelementptr inbounds %struct.wmi_device, %struct.wmi_device* %55, i32 0, i32 0
  %57 = load %struct.huawei_wmi_priv*, %struct.huawei_wmi_priv** %4, align 8
  %58 = getelementptr inbounds %struct.huawei_wmi_priv, %struct.huawei_wmi_priv* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 4
  store i32* %56, i32** %59, align 8
  %60 = load i32, i32* @LED_CORE_SUSPENDRESUME, align 4
  %61 = load %struct.huawei_wmi_priv*, %struct.huawei_wmi_priv** %4, align 8
  %62 = getelementptr inbounds %struct.huawei_wmi_priv, %struct.huawei_wmi_priv* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 3
  store i32 %60, i32* %63, align 8
  %64 = load %struct.wmi_device*, %struct.wmi_device** %3, align 8
  %65 = getelementptr inbounds %struct.wmi_device, %struct.wmi_device* %64, i32 0, i32 0
  %66 = load %struct.huawei_wmi_priv*, %struct.huawei_wmi_priv** %4, align 8
  %67 = getelementptr inbounds %struct.huawei_wmi_priv, %struct.huawei_wmi_priv* %66, i32 0, i32 1
  %68 = call i32 @devm_led_classdev_register(i32* %65, %struct.TYPE_2__* %67)
  store i32 %68, i32* %2, align 4
  br label %69

69:                                               ; preds = %36, %34, %15
  %70 = load i32, i32* %2, align 4
  ret i32 %70
}

declare dso_local %struct.huawei_wmi_priv* @dev_get_drvdata(i32*) #1

declare dso_local i32 @ec_get_handle(...) #1

declare dso_local i64 @acpi_has_method(i32, i8*) #1

declare dso_local i32 @ledtrig_audio_get(i32) #1

declare dso_local i32 @devm_led_classdev_register(i32*, %struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
