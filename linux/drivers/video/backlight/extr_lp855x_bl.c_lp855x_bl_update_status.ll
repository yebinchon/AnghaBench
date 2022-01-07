; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/backlight/extr_lp855x_bl.c_lp855x_bl_update_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/backlight/extr_lp855x_bl.c_lp855x_bl_update_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.backlight_device = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.lp855x = type { i64, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@BL_CORE_SUSPENDED = common dso_local global i32 0, align 4
@BL_CORE_FBBLANK = common dso_local global i32 0, align 4
@PWM_BASED = common dso_local global i64 0, align 8
@REGISTER_BASED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.backlight_device*)* @lp855x_bl_update_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lp855x_bl_update_status(%struct.backlight_device* %0) #0 {
  %2 = alloca %struct.backlight_device*, align 8
  %3 = alloca %struct.lp855x*, align 8
  %4 = alloca i32, align 4
  store %struct.backlight_device* %0, %struct.backlight_device** %2, align 8
  %5 = load %struct.backlight_device*, %struct.backlight_device** %2, align 8
  %6 = call %struct.lp855x* @bl_get_data(%struct.backlight_device* %5)
  store %struct.lp855x* %6, %struct.lp855x** %3, align 8
  %7 = load %struct.backlight_device*, %struct.backlight_device** %2, align 8
  %8 = getelementptr inbounds %struct.backlight_device, %struct.backlight_device* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  store i32 %10, i32* %4, align 4
  %11 = load %struct.backlight_device*, %struct.backlight_device** %2, align 8
  %12 = getelementptr inbounds %struct.backlight_device, %struct.backlight_device* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @BL_CORE_SUSPENDED, align 4
  %16 = load i32, i32* @BL_CORE_FBBLANK, align 4
  %17 = or i32 %15, %16
  %18 = and i32 %14, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  br label %21

21:                                               ; preds = %20, %1
  %22 = load %struct.lp855x*, %struct.lp855x** %3, align 8
  %23 = getelementptr inbounds %struct.lp855x, %struct.lp855x* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @PWM_BASED, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %35

27:                                               ; preds = %21
  %28 = load %struct.lp855x*, %struct.lp855x** %3, align 8
  %29 = load i32, i32* %4, align 4
  %30 = load %struct.backlight_device*, %struct.backlight_device** %2, align 8
  %31 = getelementptr inbounds %struct.backlight_device, %struct.backlight_device* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @lp855x_pwm_ctrl(%struct.lp855x* %28, i32 %29, i32 %33)
  br label %51

35:                                               ; preds = %21
  %36 = load %struct.lp855x*, %struct.lp855x** %3, align 8
  %37 = getelementptr inbounds %struct.lp855x, %struct.lp855x* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @REGISTER_BASED, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %50

41:                                               ; preds = %35
  %42 = load %struct.lp855x*, %struct.lp855x** %3, align 8
  %43 = load %struct.lp855x*, %struct.lp855x** %3, align 8
  %44 = getelementptr inbounds %struct.lp855x, %struct.lp855x* %43, i32 0, i32 1
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* %4, align 4
  %49 = call i32 @lp855x_write_byte(%struct.lp855x* %42, i32 %47, i32 %48)
  br label %50

50:                                               ; preds = %41, %35
  br label %51

51:                                               ; preds = %50, %27
  ret i32 0
}

declare dso_local %struct.lp855x* @bl_get_data(%struct.backlight_device*) #1

declare dso_local i32 @lp855x_pwm_ctrl(%struct.lp855x*, i32, i32) #1

declare dso_local i32 @lp855x_write_byte(%struct.lp855x*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
