; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_mx3fb.c_mx3fb_bl_update_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_mx3fb.c_mx3fb_bl_update_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.backlight_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i64, i64 }
%struct.mx3fb_data = type { i32 }

@FB_BLANK_UNBLANK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.backlight_device*)* @mx3fb_bl_update_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mx3fb_bl_update_status(%struct.backlight_device* %0) #0 {
  %2 = alloca %struct.backlight_device*, align 8
  %3 = alloca %struct.mx3fb_data*, align 8
  %4 = alloca i32, align 4
  store %struct.backlight_device* %0, %struct.backlight_device** %2, align 8
  %5 = load %struct.backlight_device*, %struct.backlight_device** %2, align 8
  %6 = call %struct.mx3fb_data* @bl_get_data(%struct.backlight_device* %5)
  store %struct.mx3fb_data* %6, %struct.mx3fb_data** %3, align 8
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
  br i1 %16, label %17, label %18

17:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  br label %18

18:                                               ; preds = %17, %1
  %19 = load %struct.backlight_device*, %struct.backlight_device** %2, align 8
  %20 = getelementptr inbounds %struct.backlight_device, %struct.backlight_device* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 2
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @FB_BLANK_UNBLANK, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %18
  store i32 0, i32* %4, align 4
  br label %26

26:                                               ; preds = %25, %18
  %27 = load %struct.mx3fb_data*, %struct.mx3fb_data** %3, align 8
  %28 = getelementptr inbounds %struct.mx3fb_data, %struct.mx3fb_data* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = and i32 %29, -256
  %31 = load i32, i32* %4, align 4
  %32 = or i32 %30, %31
  %33 = load %struct.mx3fb_data*, %struct.mx3fb_data** %3, align 8
  %34 = getelementptr inbounds %struct.mx3fb_data, %struct.mx3fb_data* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 4
  %35 = load %struct.mx3fb_data*, %struct.mx3fb_data** %3, align 8
  %36 = load %struct.mx3fb_data*, %struct.mx3fb_data** %3, align 8
  %37 = getelementptr inbounds %struct.mx3fb_data, %struct.mx3fb_data* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @sdc_set_brightness(%struct.mx3fb_data* %35, i32 %38)
  ret i32 0
}

declare dso_local %struct.mx3fb_data* @bl_get_data(%struct.backlight_device*) #1

declare dso_local i32 @sdc_set_brightness(%struct.mx3fb_data*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
