; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/backlight/extr_omap1_bl.c_omapbl_update_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/backlight/extr_omap1_bl.c_omapbl_update_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.backlight_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64 }
%struct.omap_backlight = type { i64, i64 }

@FB_BLANK_UNBLANK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.backlight_device*)* @omapbl_update_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @omapbl_update_status(%struct.backlight_device* %0) #0 {
  %2 = alloca %struct.backlight_device*, align 8
  %3 = alloca %struct.omap_backlight*, align 8
  store %struct.backlight_device* %0, %struct.backlight_device** %2, align 8
  %4 = load %struct.backlight_device*, %struct.backlight_device** %2, align 8
  %5 = call %struct.omap_backlight* @bl_get_data(%struct.backlight_device* %4)
  store %struct.omap_backlight* %5, %struct.omap_backlight** %3, align 8
  %6 = load %struct.omap_backlight*, %struct.omap_backlight** %3, align 8
  %7 = getelementptr inbounds %struct.omap_backlight, %struct.omap_backlight* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load %struct.backlight_device*, %struct.backlight_device** %2, align 8
  %10 = getelementptr inbounds %struct.backlight_device, %struct.backlight_device* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %8, %12
  br i1 %13, label %14, label %33

14:                                               ; preds = %1
  %15 = load %struct.omap_backlight*, %struct.omap_backlight** %3, align 8
  %16 = getelementptr inbounds %struct.omap_backlight, %struct.omap_backlight* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @FB_BLANK_UNBLANK, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %26

20:                                               ; preds = %14
  %21 = load %struct.backlight_device*, %struct.backlight_device** %2, align 8
  %22 = getelementptr inbounds %struct.backlight_device, %struct.backlight_device* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = call i32 @omapbl_send_intensity(i64 %24)
  br label %26

26:                                               ; preds = %20, %14
  %27 = load %struct.backlight_device*, %struct.backlight_device** %2, align 8
  %28 = getelementptr inbounds %struct.backlight_device, %struct.backlight_device* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.omap_backlight*, %struct.omap_backlight** %3, align 8
  %32 = getelementptr inbounds %struct.omap_backlight, %struct.omap_backlight* %31, i32 0, i32 0
  store i64 %30, i64* %32, align 8
  br label %33

33:                                               ; preds = %26, %1
  %34 = load %struct.backlight_device*, %struct.backlight_device** %2, align 8
  %35 = getelementptr inbounds %struct.backlight_device, %struct.backlight_device* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.omap_backlight*, %struct.omap_backlight** %3, align 8
  %39 = getelementptr inbounds %struct.omap_backlight, %struct.omap_backlight* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %37, %40
  br i1 %41, label %42, label %49

42:                                               ; preds = %33
  %43 = load %struct.backlight_device*, %struct.backlight_device** %2, align 8
  %44 = load %struct.backlight_device*, %struct.backlight_device** %2, align 8
  %45 = getelementptr inbounds %struct.backlight_device, %struct.backlight_device* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = call i32 @omapbl_set_power(%struct.backlight_device* %43, i64 %47)
  br label %49

49:                                               ; preds = %42, %33
  ret i32 0
}

declare dso_local %struct.omap_backlight* @bl_get_data(%struct.backlight_device*) #1

declare dso_local i32 @omapbl_send_intensity(i64) #1

declare dso_local i32 @omapbl_set_power(%struct.backlight_device*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
