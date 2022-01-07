; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/backlight/extr_backlight.c_actual_brightness_show.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/backlight/extr_backlight.c_actual_brightness_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.backlight_device = type { i32, %struct.TYPE_3__, %struct.TYPE_4__* }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32 (%struct.backlight_device*)* }

@ENXIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*)* @actual_brightness_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @actual_brightness_show(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.device_attribute*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.backlight_device*, align 8
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %5, align 8
  store i8* %2, i8** %6, align 8
  %9 = load i32, i32* @ENXIO, align 4
  %10 = sub nsw i32 0, %9
  store i32 %10, i32* %7, align 4
  %11 = load %struct.device*, %struct.device** %4, align 8
  %12 = call %struct.backlight_device* @to_backlight_device(%struct.device* %11)
  store %struct.backlight_device* %12, %struct.backlight_device** %8, align 8
  %13 = load %struct.backlight_device*, %struct.backlight_device** %8, align 8
  %14 = getelementptr inbounds %struct.backlight_device, %struct.backlight_device* %13, i32 0, i32 0
  %15 = call i32 @mutex_lock(i32* %14)
  %16 = load %struct.backlight_device*, %struct.backlight_device** %8, align 8
  %17 = getelementptr inbounds %struct.backlight_device, %struct.backlight_device* %16, i32 0, i32 2
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = icmp ne %struct.TYPE_4__* %18, null
  br i1 %19, label %20, label %37

20:                                               ; preds = %3
  %21 = load %struct.backlight_device*, %struct.backlight_device** %8, align 8
  %22 = getelementptr inbounds %struct.backlight_device, %struct.backlight_device* %21, i32 0, i32 2
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i32 (%struct.backlight_device*)*, i32 (%struct.backlight_device*)** %24, align 8
  %26 = icmp ne i32 (%struct.backlight_device*)* %25, null
  br i1 %26, label %27, label %37

27:                                               ; preds = %20
  %28 = load i8*, i8** %6, align 8
  %29 = load %struct.backlight_device*, %struct.backlight_device** %8, align 8
  %30 = getelementptr inbounds %struct.backlight_device, %struct.backlight_device* %29, i32 0, i32 2
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i32 (%struct.backlight_device*)*, i32 (%struct.backlight_device*)** %32, align 8
  %34 = load %struct.backlight_device*, %struct.backlight_device** %8, align 8
  %35 = call i32 %33(%struct.backlight_device* %34)
  %36 = call i32 @sprintf(i8* %28, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %35)
  store i32 %36, i32* %7, align 4
  br label %44

37:                                               ; preds = %20, %3
  %38 = load i8*, i8** %6, align 8
  %39 = load %struct.backlight_device*, %struct.backlight_device** %8, align 8
  %40 = getelementptr inbounds %struct.backlight_device, %struct.backlight_device* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @sprintf(i8* %38, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %42)
  store i32 %43, i32* %7, align 4
  br label %44

44:                                               ; preds = %37, %27
  %45 = load %struct.backlight_device*, %struct.backlight_device** %8, align 8
  %46 = getelementptr inbounds %struct.backlight_device, %struct.backlight_device* %45, i32 0, i32 0
  %47 = call i32 @mutex_unlock(i32* %46)
  %48 = load i32, i32* %7, align 4
  ret i32 %48
}

declare dso_local %struct.backlight_device* @to_backlight_device(%struct.device*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
