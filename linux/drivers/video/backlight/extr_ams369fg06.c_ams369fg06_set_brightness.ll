; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/backlight/extr_ams369fg06.c_ams369fg06_set_brightness.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/backlight/extr_ams369fg06.c_ams369fg06_set_brightness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.backlight_device = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.ams369fg06 = type { i32 }

@MIN_BRIGHTNESS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"lcd brightness should be %d to %d.\0A\00", align 1
@MAX_BRIGHTNESS = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"lcd brightness setting failed.\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.backlight_device*)* @ams369fg06_set_brightness to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ams369fg06_set_brightness(%struct.backlight_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.backlight_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.ams369fg06*, align 8
  store %struct.backlight_device* %0, %struct.backlight_device** %3, align 8
  store i32 0, i32* %4, align 4
  %7 = load %struct.backlight_device*, %struct.backlight_device** %3, align 8
  %8 = getelementptr inbounds %struct.backlight_device, %struct.backlight_device* %7, i32 0, i32 1
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  store i32 %10, i32* %5, align 4
  %11 = load %struct.backlight_device*, %struct.backlight_device** %3, align 8
  %12 = call %struct.ams369fg06* @bl_get_data(%struct.backlight_device* %11)
  store %struct.ams369fg06* %12, %struct.ams369fg06** %6, align 8
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* @MIN_BRIGHTNESS, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %23, label %16

16:                                               ; preds = %1
  %17 = load i32, i32* %5, align 4
  %18 = load %struct.backlight_device*, %struct.backlight_device** %3, align 8
  %19 = getelementptr inbounds %struct.backlight_device, %struct.backlight_device* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = icmp sgt i32 %17, %21
  br i1 %22, label %23, label %31

23:                                               ; preds = %16, %1
  %24 = load %struct.backlight_device*, %struct.backlight_device** %3, align 8
  %25 = getelementptr inbounds %struct.backlight_device, %struct.backlight_device* %24, i32 0, i32 0
  %26 = load i32, i32* @MIN_BRIGHTNESS, align 4
  %27 = load i32, i32* @MAX_BRIGHTNESS, align 4
  %28 = call i32 (i32*, i8*, ...) @dev_err(i32* %25, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %26, i32 %27)
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %2, align 4
  br label %48

31:                                               ; preds = %16
  %32 = load %struct.ams369fg06*, %struct.ams369fg06** %6, align 8
  %33 = load %struct.backlight_device*, %struct.backlight_device** %3, align 8
  %34 = getelementptr inbounds %struct.backlight_device, %struct.backlight_device* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @ams369fg06_gamma_ctl(%struct.ams369fg06* %32, i32 %36)
  store i32 %37, i32* %4, align 4
  %38 = load i32, i32* %4, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %46

40:                                               ; preds = %31
  %41 = load %struct.backlight_device*, %struct.backlight_device** %3, align 8
  %42 = getelementptr inbounds %struct.backlight_device, %struct.backlight_device* %41, i32 0, i32 0
  %43 = call i32 (i32*, i8*, ...) @dev_err(i32* %42, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  %44 = load i32, i32* @EIO, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %2, align 4
  br label %48

46:                                               ; preds = %31
  %47 = load i32, i32* %4, align 4
  store i32 %47, i32* %2, align 4
  br label %48

48:                                               ; preds = %46, %40, %23
  %49 = load i32, i32* %2, align 4
  ret i32 %49
}

declare dso_local %struct.ams369fg06* @bl_get_data(%struct.backlight_device*) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local i32 @ams369fg06_gamma_ctl(%struct.ams369fg06*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
