; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-ds3232.c_ds3232_hwmon_register.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-ds3232.c_ds3232_hwmon_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.ds3232 = type { i32 }

@CONFIG_RTC_DRV_DS3232_HWMON = common dso_local global i32 0, align 4
@ds3232_hwmon_chip_info = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"unable to register hwmon device %ld\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.device*, i8*)* @ds3232_hwmon_register to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ds3232_hwmon_register(%struct.device* %0, i8* %1) #0 {
  %3 = alloca %struct.device*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.ds3232*, align 8
  %6 = alloca %struct.device*, align 8
  store %struct.device* %0, %struct.device** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load %struct.device*, %struct.device** %3, align 8
  %8 = call %struct.ds3232* @dev_get_drvdata(%struct.device* %7)
  store %struct.ds3232* %8, %struct.ds3232** %5, align 8
  %9 = load i32, i32* @CONFIG_RTC_DRV_DS3232_HWMON, align 4
  %10 = call i32 @IS_ENABLED(i32 %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  br label %26

13:                                               ; preds = %2
  %14 = load %struct.device*, %struct.device** %3, align 8
  %15 = load i8*, i8** %4, align 8
  %16 = load %struct.ds3232*, %struct.ds3232** %5, align 8
  %17 = call %struct.device* @devm_hwmon_device_register_with_info(%struct.device* %14, i8* %15, %struct.ds3232* %16, i32* @ds3232_hwmon_chip_info, i32* null)
  store %struct.device* %17, %struct.device** %6, align 8
  %18 = load %struct.device*, %struct.device** %6, align 8
  %19 = call i64 @IS_ERR(%struct.device* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %13
  %22 = load %struct.device*, %struct.device** %3, align 8
  %23 = load %struct.device*, %struct.device** %6, align 8
  %24 = call i32 @PTR_ERR(%struct.device* %23)
  %25 = call i32 @dev_err(%struct.device* %22, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %24)
  br label %26

26:                                               ; preds = %12, %21, %13
  ret void
}

declare dso_local %struct.ds3232* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @IS_ENABLED(i32) #1

declare dso_local %struct.device* @devm_hwmon_device_register_with_info(%struct.device*, i8*, %struct.ds3232*, i32*, i32*) #1

declare dso_local i64 @IS_ERR(%struct.device*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

declare dso_local i32 @PTR_ERR(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
