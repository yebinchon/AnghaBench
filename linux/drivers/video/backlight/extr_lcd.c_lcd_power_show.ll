; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/backlight/extr_lcd.c_lcd_power_show.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/backlight/extr_lcd.c_lcd_power_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.lcd_device = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.lcd_device*)* }

@.str = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*)* @lcd_power_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lcd_power_show(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.device_attribute*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.lcd_device*, align 8
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %5, align 8
  store i8* %2, i8** %6, align 8
  %9 = load %struct.device*, %struct.device** %4, align 8
  %10 = call %struct.lcd_device* @to_lcd_device(%struct.device* %9)
  store %struct.lcd_device* %10, %struct.lcd_device** %8, align 8
  %11 = load %struct.lcd_device*, %struct.lcd_device** %8, align 8
  %12 = getelementptr inbounds %struct.lcd_device, %struct.lcd_device* %11, i32 0, i32 0
  %13 = call i32 @mutex_lock(i32* %12)
  %14 = load %struct.lcd_device*, %struct.lcd_device** %8, align 8
  %15 = getelementptr inbounds %struct.lcd_device, %struct.lcd_device* %14, i32 0, i32 1
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = icmp ne %struct.TYPE_2__* %16, null
  br i1 %17, label %18, label %35

18:                                               ; preds = %3
  %19 = load %struct.lcd_device*, %struct.lcd_device** %8, align 8
  %20 = getelementptr inbounds %struct.lcd_device, %struct.lcd_device* %19, i32 0, i32 1
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32 (%struct.lcd_device*)*, i32 (%struct.lcd_device*)** %22, align 8
  %24 = icmp ne i32 (%struct.lcd_device*)* %23, null
  br i1 %24, label %25, label %35

25:                                               ; preds = %18
  %26 = load i8*, i8** %6, align 8
  %27 = load %struct.lcd_device*, %struct.lcd_device** %8, align 8
  %28 = getelementptr inbounds %struct.lcd_device, %struct.lcd_device* %27, i32 0, i32 1
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32 (%struct.lcd_device*)*, i32 (%struct.lcd_device*)** %30, align 8
  %32 = load %struct.lcd_device*, %struct.lcd_device** %8, align 8
  %33 = call i32 %31(%struct.lcd_device* %32)
  %34 = call i32 @sprintf(i8* %26, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %33)
  store i32 %34, i32* %7, align 4
  br label %38

35:                                               ; preds = %18, %3
  %36 = load i32, i32* @ENXIO, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %7, align 4
  br label %38

38:                                               ; preds = %35, %25
  %39 = load %struct.lcd_device*, %struct.lcd_device** %8, align 8
  %40 = getelementptr inbounds %struct.lcd_device, %struct.lcd_device* %39, i32 0, i32 0
  %41 = call i32 @mutex_unlock(i32* %40)
  %42 = load i32, i32* %7, align 4
  ret i32 %42
}

declare dso_local %struct.lcd_device* @to_lcd_device(%struct.device*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
