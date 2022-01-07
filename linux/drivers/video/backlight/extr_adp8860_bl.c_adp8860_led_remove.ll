; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/backlight/extr_adp8860_bl.c_adp8860_led_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/backlight/extr_adp8860_bl.c_adp8860_led_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }
%struct.adp8860_backlight_platform_data = type { i32 }
%struct.adp8860_bl = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*)* @adp8860_led_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adp8860_led_remove(%struct.i2c_client* %0) #0 {
  %2 = alloca %struct.i2c_client*, align 8
  %3 = alloca %struct.adp8860_backlight_platform_data*, align 8
  %4 = alloca %struct.adp8860_bl*, align 8
  %5 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %2, align 8
  %6 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %7 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %6, i32 0, i32 0
  %8 = call %struct.adp8860_backlight_platform_data* @dev_get_platdata(i32* %7)
  store %struct.adp8860_backlight_platform_data* %8, %struct.adp8860_backlight_platform_data** %3, align 8
  %9 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %10 = call %struct.adp8860_bl* @i2c_get_clientdata(%struct.i2c_client* %9)
  store %struct.adp8860_bl* %10, %struct.adp8860_bl** %4, align 8
  store i32 0, i32* %5, align 4
  br label %11

11:                                               ; preds = %34, %1
  %12 = load i32, i32* %5, align 4
  %13 = load %struct.adp8860_backlight_platform_data*, %struct.adp8860_backlight_platform_data** %3, align 8
  %14 = getelementptr inbounds %struct.adp8860_backlight_platform_data, %struct.adp8860_backlight_platform_data* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = icmp slt i32 %12, %15
  br i1 %16, label %17, label %37

17:                                               ; preds = %11
  %18 = load %struct.adp8860_bl*, %struct.adp8860_bl** %4, align 8
  %19 = getelementptr inbounds %struct.adp8860_bl, %struct.adp8860_bl* %18, i32 0, i32 0
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = load i32, i32* %5, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i64 %22
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 1
  %25 = call i32 @led_classdev_unregister(i32* %24)
  %26 = load %struct.adp8860_bl*, %struct.adp8860_bl** %4, align 8
  %27 = getelementptr inbounds %struct.adp8860_bl, %struct.adp8860_bl* %26, i32 0, i32 0
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = load i32, i32* %5, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = call i32 @cancel_work_sync(i32* %32)
  br label %34

34:                                               ; preds = %17
  %35 = load i32, i32* %5, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %5, align 4
  br label %11

37:                                               ; preds = %11
  ret i32 0
}

declare dso_local %struct.adp8860_backlight_platform_data* @dev_get_platdata(i32*) #1

declare dso_local %struct.adp8860_bl* @i2c_get_clientdata(%struct.i2c_client*) #1

declare dso_local i32 @led_classdev_unregister(i32*) #1

declare dso_local i32 @cancel_work_sync(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
