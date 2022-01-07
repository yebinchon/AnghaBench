; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_lp8788-charger.c_lp8788_get_battery_temperature.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_lp8788-charger.c_lp8788_get_battery_temperature.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lp8788_charger = type { %struct.iio_channel** }
%struct.iio_channel = type { i32 }
%union.power_supply_propval = type { i32 }

@LP8788_BATT_TEMP = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lp8788_charger*, %union.power_supply_propval*)* @lp8788_get_battery_temperature to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lp8788_get_battery_temperature(%struct.lp8788_charger* %0, %union.power_supply_propval* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.lp8788_charger*, align 8
  %5 = alloca %union.power_supply_propval*, align 8
  %6 = alloca %struct.iio_channel*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.lp8788_charger* %0, %struct.lp8788_charger** %4, align 8
  store %union.power_supply_propval* %1, %union.power_supply_propval** %5, align 8
  %9 = load %struct.lp8788_charger*, %struct.lp8788_charger** %4, align 8
  %10 = getelementptr inbounds %struct.lp8788_charger, %struct.lp8788_charger* %9, i32 0, i32 0
  %11 = load %struct.iio_channel**, %struct.iio_channel*** %10, align 8
  %12 = load i64, i64* @LP8788_BATT_TEMP, align 8
  %13 = getelementptr inbounds %struct.iio_channel*, %struct.iio_channel** %11, i64 %12
  %14 = load %struct.iio_channel*, %struct.iio_channel** %13, align 8
  store %struct.iio_channel* %14, %struct.iio_channel** %6, align 8
  %15 = load %struct.iio_channel*, %struct.iio_channel** %6, align 8
  %16 = icmp ne %struct.iio_channel* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %2
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %33

20:                                               ; preds = %2
  %21 = load %struct.iio_channel*, %struct.iio_channel** %6, align 8
  %22 = call i32 @iio_read_channel_processed(%struct.iio_channel* %21, i32* %7)
  store i32 %22, i32* %8, align 4
  %23 = load i32, i32* %8, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %20
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %3, align 4
  br label %33

28:                                               ; preds = %20
  %29 = load i32, i32* %7, align 4
  %30 = mul nsw i32 %29, 10
  %31 = load %union.power_supply_propval*, %union.power_supply_propval** %5, align 8
  %32 = bitcast %union.power_supply_propval* %31 to i32*
  store i32 %30, i32* %32, align 4
  store i32 0, i32* %3, align 4
  br label %33

33:                                               ; preds = %28, %25, %17
  %34 = load i32, i32* %3, align 4
  ret i32 %34
}

declare dso_local i32 @iio_read_channel_processed(%struct.iio_channel*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
