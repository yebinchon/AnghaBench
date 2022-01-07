; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/backlight/extr_lv5207lp.c_lv5207lp_backlight_update_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/backlight/extr_lv5207lp.c_lv5207lp_backlight_update_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.backlight_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i64, i64, i32 }
%struct.lv5207lp = type { i32 }

@FB_BLANK_UNBLANK = common dso_local global i64 0, align 8
@BL_CORE_SUSPENDED = common dso_local global i32 0, align 4
@BL_CORE_FBBLANK = common dso_local global i32 0, align 4
@LV5207LP_CTRL1 = common dso_local global i32 0, align 4
@LV5207LP_CPSW = common dso_local global i32 0, align 4
@LV5207LP_C10 = common dso_local global i32 0, align 4
@LV5207LP_CKSW = common dso_local global i32 0, align 4
@LV5207LP_CTRL2 = common dso_local global i32 0, align 4
@LV5207LP_MSW = common dso_local global i32 0, align 4
@LV5207LP_MLED4 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.backlight_device*)* @lv5207lp_backlight_update_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lv5207lp_backlight_update_status(%struct.backlight_device* %0) #0 {
  %2 = alloca %struct.backlight_device*, align 8
  %3 = alloca %struct.lv5207lp*, align 8
  %4 = alloca i32, align 4
  store %struct.backlight_device* %0, %struct.backlight_device** %2, align 8
  %5 = load %struct.backlight_device*, %struct.backlight_device** %2, align 8
  %6 = call %struct.lv5207lp* @bl_get_data(%struct.backlight_device* %5)
  store %struct.lv5207lp* %6, %struct.lv5207lp** %3, align 8
  %7 = load %struct.backlight_device*, %struct.backlight_device** %2, align 8
  %8 = getelementptr inbounds %struct.backlight_device, %struct.backlight_device* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  store i32 %10, i32* %4, align 4
  %11 = load %struct.backlight_device*, %struct.backlight_device** %2, align 8
  %12 = getelementptr inbounds %struct.backlight_device, %struct.backlight_device* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @FB_BLANK_UNBLANK, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %34, label %17

17:                                               ; preds = %1
  %18 = load %struct.backlight_device*, %struct.backlight_device** %2, align 8
  %19 = getelementptr inbounds %struct.backlight_device, %struct.backlight_device* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 2
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @FB_BLANK_UNBLANK, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %34, label %24

24:                                               ; preds = %17
  %25 = load %struct.backlight_device*, %struct.backlight_device** %2, align 8
  %26 = getelementptr inbounds %struct.backlight_device, %struct.backlight_device* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @BL_CORE_SUSPENDED, align 4
  %30 = load i32, i32* @BL_CORE_FBBLANK, align 4
  %31 = or i32 %29, %30
  %32 = and i32 %28, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %24, %17, %1
  store i32 0, i32* %4, align 4
  br label %35

35:                                               ; preds = %34, %24
  %36 = load i32, i32* %4, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %56

38:                                               ; preds = %35
  %39 = load %struct.lv5207lp*, %struct.lv5207lp** %3, align 8
  %40 = load i32, i32* @LV5207LP_CTRL1, align 4
  %41 = load i32, i32* @LV5207LP_CPSW, align 4
  %42 = load i32, i32* @LV5207LP_C10, align 4
  %43 = or i32 %41, %42
  %44 = load i32, i32* @LV5207LP_CKSW, align 4
  %45 = or i32 %43, %44
  %46 = call i32 @lv5207lp_write(%struct.lv5207lp* %39, i32 %40, i32 %45)
  %47 = load %struct.lv5207lp*, %struct.lv5207lp** %3, align 8
  %48 = load i32, i32* @LV5207LP_CTRL2, align 4
  %49 = load i32, i32* @LV5207LP_MSW, align 4
  %50 = load i32, i32* @LV5207LP_MLED4, align 4
  %51 = or i32 %49, %50
  %52 = load i32, i32* %4, align 4
  %53 = sub nsw i32 %52, 1
  %54 = or i32 %51, %53
  %55 = call i32 @lv5207lp_write(%struct.lv5207lp* %47, i32 %48, i32 %54)
  br label %63

56:                                               ; preds = %35
  %57 = load %struct.lv5207lp*, %struct.lv5207lp** %3, align 8
  %58 = load i32, i32* @LV5207LP_CTRL1, align 4
  %59 = call i32 @lv5207lp_write(%struct.lv5207lp* %57, i32 %58, i32 0)
  %60 = load %struct.lv5207lp*, %struct.lv5207lp** %3, align 8
  %61 = load i32, i32* @LV5207LP_CTRL2, align 4
  %62 = call i32 @lv5207lp_write(%struct.lv5207lp* %60, i32 %61, i32 0)
  br label %63

63:                                               ; preds = %56, %38
  ret i32 0
}

declare dso_local %struct.lv5207lp* @bl_get_data(%struct.backlight_device*) #1

declare dso_local i32 @lv5207lp_write(%struct.lv5207lp*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
