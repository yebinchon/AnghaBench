; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_generic-adc-battery.c_gab_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_generic-adc-battery.c_gab_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.gab = type { i32, %struct.TYPE_2__, i64*, i32, %struct.gab_platform_data* }
%struct.TYPE_2__ = type { i32 }
%struct.gab_platform_data = type { i32 }

@gab_chan_name = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @gab_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gab_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.gab*, align 8
  %5 = alloca %struct.gab_platform_data*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %6 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %7 = call %struct.gab* @platform_get_drvdata(%struct.platform_device* %6)
  store %struct.gab* %7, %struct.gab** %4, align 8
  %8 = load %struct.gab*, %struct.gab** %4, align 8
  %9 = getelementptr inbounds %struct.gab, %struct.gab* %8, i32 0, i32 4
  %10 = load %struct.gab_platform_data*, %struct.gab_platform_data** %9, align 8
  store %struct.gab_platform_data* %10, %struct.gab_platform_data** %5, align 8
  %11 = load %struct.gab*, %struct.gab** %4, align 8
  %12 = getelementptr inbounds %struct.gab, %struct.gab* %11, i32 0, i32 3
  %13 = load i32, i32* %12, align 8
  %14 = call i32 @power_supply_unregister(i32 %13)
  %15 = load %struct.gab_platform_data*, %struct.gab_platform_data** %5, align 8
  %16 = getelementptr inbounds %struct.gab_platform_data, %struct.gab_platform_data* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i64 @gpio_is_valid(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %31

20:                                               ; preds = %1
  %21 = load %struct.gab_platform_data*, %struct.gab_platform_data** %5, align 8
  %22 = getelementptr inbounds %struct.gab_platform_data, %struct.gab_platform_data* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @gpio_to_irq(i32 %23)
  %25 = load %struct.gab*, %struct.gab** %4, align 8
  %26 = call i32 @free_irq(i32 %24, %struct.gab* %25)
  %27 = load %struct.gab_platform_data*, %struct.gab_platform_data** %5, align 8
  %28 = getelementptr inbounds %struct.gab_platform_data, %struct.gab_platform_data* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @gpio_free(i32 %29)
  br label %31

31:                                               ; preds = %20, %1
  store i32 0, i32* %3, align 4
  br label %32

32:                                               ; preds = %56, %31
  %33 = load i32, i32* %3, align 4
  %34 = load i32, i32* @gab_chan_name, align 4
  %35 = call i32 @ARRAY_SIZE(i32 %34)
  %36 = icmp slt i32 %33, %35
  br i1 %36, label %37, label %59

37:                                               ; preds = %32
  %38 = load %struct.gab*, %struct.gab** %4, align 8
  %39 = getelementptr inbounds %struct.gab, %struct.gab* %38, i32 0, i32 2
  %40 = load i64*, i64** %39, align 8
  %41 = load i32, i32* %3, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i64, i64* %40, i64 %42
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %55

46:                                               ; preds = %37
  %47 = load %struct.gab*, %struct.gab** %4, align 8
  %48 = getelementptr inbounds %struct.gab, %struct.gab* %47, i32 0, i32 2
  %49 = load i64*, i64** %48, align 8
  %50 = load i32, i32* %3, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i64, i64* %49, i64 %51
  %53 = load i64, i64* %52, align 8
  %54 = call i32 @iio_channel_release(i64 %53)
  br label %55

55:                                               ; preds = %46, %37
  br label %56

56:                                               ; preds = %55
  %57 = load i32, i32* %3, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %3, align 4
  br label %32

59:                                               ; preds = %32
  %60 = load %struct.gab*, %struct.gab** %4, align 8
  %61 = getelementptr inbounds %struct.gab, %struct.gab* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @kfree(i32 %63)
  %65 = load %struct.gab*, %struct.gab** %4, align 8
  %66 = getelementptr inbounds %struct.gab, %struct.gab* %65, i32 0, i32 0
  %67 = call i32 @cancel_delayed_work(i32* %66)
  ret i32 0
}

declare dso_local %struct.gab* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @power_supply_unregister(i32) #1

declare dso_local i64 @gpio_is_valid(i32) #1

declare dso_local i32 @free_irq(i32, %struct.gab*) #1

declare dso_local i32 @gpio_to_irq(i32) #1

declare dso_local i32 @gpio_free(i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @iio_channel_release(i64) #1

declare dso_local i32 @kfree(i32) #1

declare dso_local i32 @cancel_delayed_work(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
