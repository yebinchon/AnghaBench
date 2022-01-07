; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_ds2780_battery.c_ds2780_get_pio_pin.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_ds2780_battery.c_ds2780_get_pio_pin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.power_supply = type { i32 }
%struct.ds2780_device_info = type { i32 }

@DS2780_SFR_REG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@DS2780_SFR_REG_PIOSC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*)* @ds2780_get_pio_pin to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ds2780_get_pio_pin(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_attribute*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.power_supply*, align 8
  %11 = alloca %struct.ds2780_device_info*, align 8
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %6, align 8
  store i8* %2, i8** %7, align 8
  %12 = load %struct.device*, %struct.device** %5, align 8
  %13 = call %struct.power_supply* @to_power_supply(%struct.device* %12)
  store %struct.power_supply* %13, %struct.power_supply** %10, align 8
  %14 = load %struct.power_supply*, %struct.power_supply** %10, align 8
  %15 = call %struct.ds2780_device_info* @to_ds2780_device_info(%struct.power_supply* %14)
  store %struct.ds2780_device_info* %15, %struct.ds2780_device_info** %11, align 8
  %16 = load %struct.ds2780_device_info*, %struct.ds2780_device_info** %11, align 8
  %17 = load i32, i32* @DS2780_SFR_REG, align 4
  %18 = call i32 @ds2780_read8(%struct.ds2780_device_info* %16, i32* %9, i32 %17)
  store i32 %18, i32* %8, align 4
  %19 = load i32, i32* %8, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %3
  %22 = load i32, i32* %8, align 4
  store i32 %22, i32* %4, align 4
  br label %30

23:                                               ; preds = %3
  %24 = load i8*, i8** %7, align 8
  %25 = load i32, i32* %9, align 4
  %26 = load i32, i32* @DS2780_SFR_REG_PIOSC, align 4
  %27 = and i32 %25, %26
  %28 = call i32 @sprintf(i8* %24, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %27)
  store i32 %28, i32* %8, align 4
  %29 = load i32, i32* %8, align 4
  store i32 %29, i32* %4, align 4
  br label %30

30:                                               ; preds = %23, %21
  %31 = load i32, i32* %4, align 4
  ret i32 %31
}

declare dso_local %struct.power_supply* @to_power_supply(%struct.device*) #1

declare dso_local %struct.ds2780_device_info* @to_ds2780_device_info(%struct.power_supply*) #1

declare dso_local i32 @ds2780_read8(%struct.ds2780_device_info*, i32*, i32) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
