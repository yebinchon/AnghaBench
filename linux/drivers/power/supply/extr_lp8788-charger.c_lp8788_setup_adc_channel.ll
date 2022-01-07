; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_lp8788-charger.c_lp8788_setup_adc_channel.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_lp8788-charger.c_lp8788_setup_adc_channel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.lp8788_charger = type { %struct.iio_channel**, %struct.lp8788_charger_platform_data* }
%struct.iio_channel = type { i32 }
%struct.lp8788_charger_platform_data = type { i32, i32 }

@LP8788_VBATT = common dso_local global i64 0, align 8
@LP8788_BATT_TEMP = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.device*, %struct.lp8788_charger*)* @lp8788_setup_adc_channel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lp8788_setup_adc_channel(%struct.device* %0, %struct.lp8788_charger* %1) #0 {
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.lp8788_charger*, align 8
  %5 = alloca %struct.lp8788_charger_platform_data*, align 8
  %6 = alloca %struct.iio_channel*, align 8
  store %struct.device* %0, %struct.device** %3, align 8
  store %struct.lp8788_charger* %1, %struct.lp8788_charger** %4, align 8
  %7 = load %struct.lp8788_charger*, %struct.lp8788_charger** %4, align 8
  %8 = getelementptr inbounds %struct.lp8788_charger, %struct.lp8788_charger* %7, i32 0, i32 1
  %9 = load %struct.lp8788_charger_platform_data*, %struct.lp8788_charger_platform_data** %8, align 8
  store %struct.lp8788_charger_platform_data* %9, %struct.lp8788_charger_platform_data** %5, align 8
  %10 = load %struct.lp8788_charger_platform_data*, %struct.lp8788_charger_platform_data** %5, align 8
  %11 = icmp ne %struct.lp8788_charger_platform_data* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  br label %50

13:                                               ; preds = %2
  %14 = load %struct.device*, %struct.device** %3, align 8
  %15 = load %struct.lp8788_charger_platform_data*, %struct.lp8788_charger_platform_data** %5, align 8
  %16 = getelementptr inbounds %struct.lp8788_charger_platform_data, %struct.lp8788_charger_platform_data* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call %struct.iio_channel* @iio_channel_get(%struct.device* %14, i32 %17)
  store %struct.iio_channel* %18, %struct.iio_channel** %6, align 8
  %19 = load %struct.iio_channel*, %struct.iio_channel** %6, align 8
  %20 = call i64 @IS_ERR(%struct.iio_channel* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %13
  br label %25

23:                                               ; preds = %13
  %24 = load %struct.iio_channel*, %struct.iio_channel** %6, align 8
  br label %25

25:                                               ; preds = %23, %22
  %26 = phi %struct.iio_channel* [ null, %22 ], [ %24, %23 ]
  %27 = load %struct.lp8788_charger*, %struct.lp8788_charger** %4, align 8
  %28 = getelementptr inbounds %struct.lp8788_charger, %struct.lp8788_charger* %27, i32 0, i32 0
  %29 = load %struct.iio_channel**, %struct.iio_channel*** %28, align 8
  %30 = load i64, i64* @LP8788_VBATT, align 8
  %31 = getelementptr inbounds %struct.iio_channel*, %struct.iio_channel** %29, i64 %30
  store %struct.iio_channel* %26, %struct.iio_channel** %31, align 8
  %32 = load %struct.device*, %struct.device** %3, align 8
  %33 = load %struct.lp8788_charger_platform_data*, %struct.lp8788_charger_platform_data** %5, align 8
  %34 = getelementptr inbounds %struct.lp8788_charger_platform_data, %struct.lp8788_charger_platform_data* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call %struct.iio_channel* @iio_channel_get(%struct.device* %32, i32 %35)
  store %struct.iio_channel* %36, %struct.iio_channel** %6, align 8
  %37 = load %struct.iio_channel*, %struct.iio_channel** %6, align 8
  %38 = call i64 @IS_ERR(%struct.iio_channel* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %25
  br label %43

41:                                               ; preds = %25
  %42 = load %struct.iio_channel*, %struct.iio_channel** %6, align 8
  br label %43

43:                                               ; preds = %41, %40
  %44 = phi %struct.iio_channel* [ null, %40 ], [ %42, %41 ]
  %45 = load %struct.lp8788_charger*, %struct.lp8788_charger** %4, align 8
  %46 = getelementptr inbounds %struct.lp8788_charger, %struct.lp8788_charger* %45, i32 0, i32 0
  %47 = load %struct.iio_channel**, %struct.iio_channel*** %46, align 8
  %48 = load i64, i64* @LP8788_BATT_TEMP, align 8
  %49 = getelementptr inbounds %struct.iio_channel*, %struct.iio_channel** %47, i64 %48
  store %struct.iio_channel* %44, %struct.iio_channel** %49, align 8
  br label %50

50:                                               ; preds = %43, %12
  ret void
}

declare dso_local %struct.iio_channel* @iio_channel_get(%struct.device*, i32) #1

declare dso_local i64 @IS_ERR(%struct.iio_channel*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
