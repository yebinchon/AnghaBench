; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_ds2781_battery.c_ds2781_get_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_ds2781_battery.c_ds2781_get_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ds2781_device_info = type { i32 }

@CURRENT_NOW = common dso_local global i32 0, align 4
@POWER_SUPPLY_STATUS_FULL = common dso_local global i32 0, align 4
@POWER_SUPPLY_STATUS_CHARGING = common dso_local global i32 0, align 4
@POWER_SUPPLY_STATUS_NOT_CHARGING = common dso_local global i32 0, align 4
@POWER_SUPPLY_STATUS_DISCHARGING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ds2781_device_info*, i32*)* @ds2781_get_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ds2781_get_status(%struct.ds2781_device_info* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ds2781_device_info*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ds2781_device_info* %0, %struct.ds2781_device_info** %4, align 8
  store i32* %1, i32** %5, align 8
  %9 = load %struct.ds2781_device_info*, %struct.ds2781_device_info** %4, align 8
  %10 = load i32, i32* @CURRENT_NOW, align 4
  %11 = call i32 @ds2781_get_current(%struct.ds2781_device_info* %9, i32 %10, i32* %7)
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* %6, align 4
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = load i32, i32* %6, align 4
  store i32 %15, i32* %3, align 4
  br label %50

16:                                               ; preds = %2
  %17 = load %struct.ds2781_device_info*, %struct.ds2781_device_info** %4, align 8
  %18 = call i32 @ds2781_get_capacity(%struct.ds2781_device_info* %17, i32* %8)
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %6, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %16
  %22 = load i32, i32* %6, align 4
  store i32 %22, i32* %3, align 4
  br label %50

23:                                               ; preds = %16
  %24 = load %struct.ds2781_device_info*, %struct.ds2781_device_info** %4, align 8
  %25 = getelementptr inbounds %struct.ds2781_device_info, %struct.ds2781_device_info* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i64 @power_supply_am_i_supplied(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %46

29:                                               ; preds = %23
  %30 = load i32, i32* %8, align 4
  %31 = icmp eq i32 %30, 100
  br i1 %31, label %32, label %35

32:                                               ; preds = %29
  %33 = load i32, i32* @POWER_SUPPLY_STATUS_FULL, align 4
  %34 = load i32*, i32** %5, align 8
  store i32 %33, i32* %34, align 4
  br label %45

35:                                               ; preds = %29
  %36 = load i32, i32* %7, align 4
  %37 = icmp sgt i32 %36, 50000
  br i1 %37, label %38, label %41

38:                                               ; preds = %35
  %39 = load i32, i32* @POWER_SUPPLY_STATUS_CHARGING, align 4
  %40 = load i32*, i32** %5, align 8
  store i32 %39, i32* %40, align 4
  br label %44

41:                                               ; preds = %35
  %42 = load i32, i32* @POWER_SUPPLY_STATUS_NOT_CHARGING, align 4
  %43 = load i32*, i32** %5, align 8
  store i32 %42, i32* %43, align 4
  br label %44

44:                                               ; preds = %41, %38
  br label %45

45:                                               ; preds = %44, %32
  br label %49

46:                                               ; preds = %23
  %47 = load i32, i32* @POWER_SUPPLY_STATUS_DISCHARGING, align 4
  %48 = load i32*, i32** %5, align 8
  store i32 %47, i32* %48, align 4
  br label %49

49:                                               ; preds = %46, %45
  store i32 0, i32* %3, align 4
  br label %50

50:                                               ; preds = %49, %21, %14
  %51 = load i32, i32* %3, align 4
  ret i32 %51
}

declare dso_local i32 @ds2781_get_current(%struct.ds2781_device_info*, i32, i32*) #1

declare dso_local i32 @ds2781_get_capacity(%struct.ds2781_device_info*, i32*) #1

declare dso_local i64 @power_supply_am_i_supplied(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
