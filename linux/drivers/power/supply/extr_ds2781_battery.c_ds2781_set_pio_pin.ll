; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_ds2781_battery.c_ds2781_set_pio_pin.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_ds2781_battery.c_ds2781_set_pio_pin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.power_supply = type { i32 }
%struct.ds2781_device_info = type { i32 }

@.str = private unnamed_addr constant [34 x i8] c"Invalid pio_pin setting (0 or 1)\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@DS2781_SFR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @ds2781_set_pio_pin to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ds2781_set_pio_pin(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.power_supply*, align 8
  %13 = alloca %struct.ds2781_device_info*, align 8
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %14 = load %struct.device*, %struct.device** %6, align 8
  %15 = call %struct.power_supply* @to_power_supply(%struct.device* %14)
  store %struct.power_supply* %15, %struct.power_supply** %12, align 8
  %16 = load %struct.power_supply*, %struct.power_supply** %12, align 8
  %17 = call %struct.ds2781_device_info* @to_ds2781_device_info(%struct.power_supply* %16)
  store %struct.ds2781_device_info* %17, %struct.ds2781_device_info** %13, align 8
  %18 = load i8*, i8** %8, align 8
  %19 = call i32 @kstrtou8(i8* %18, i32 0, i32* %11)
  store i32 %19, i32* %10, align 4
  %20 = load i32, i32* %10, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %4
  %23 = load i32, i32* %10, align 4
  store i32 %23, i32* %5, align 4
  br label %48

24:                                               ; preds = %4
  %25 = load i32, i32* %11, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %37

27:                                               ; preds = %24
  %28 = load i32, i32* %11, align 4
  %29 = icmp ne i32 %28, 1
  br i1 %29, label %30, label %37

30:                                               ; preds = %27
  %31 = load %struct.ds2781_device_info*, %struct.ds2781_device_info** %13, align 8
  %32 = getelementptr inbounds %struct.ds2781_device_info, %struct.ds2781_device_info* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @dev_err(i32 %33, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %5, align 4
  br label %48

37:                                               ; preds = %27, %24
  %38 = load %struct.ds2781_device_info*, %struct.ds2781_device_info** %13, align 8
  %39 = load i32, i32* @DS2781_SFR, align 4
  %40 = call i32 @ds2781_write(%struct.ds2781_device_info* %38, i32* %11, i32 %39, i32 4)
  store i32 %40, i32* %10, align 4
  %41 = load i32, i32* %10, align 4
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %37
  %44 = load i32, i32* %10, align 4
  store i32 %44, i32* %5, align 4
  br label %48

45:                                               ; preds = %37
  %46 = load i64, i64* %9, align 8
  %47 = trunc i64 %46 to i32
  store i32 %47, i32* %5, align 4
  br label %48

48:                                               ; preds = %45, %43, %30, %22
  %49 = load i32, i32* %5, align 4
  ret i32 %49
}

declare dso_local %struct.power_supply* @to_power_supply(%struct.device*) #1

declare dso_local %struct.ds2781_device_info* @to_ds2781_device_info(%struct.power_supply*) #1

declare dso_local i32 @kstrtou8(i8*, i32, i32*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @ds2781_write(%struct.ds2781_device_info*, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
