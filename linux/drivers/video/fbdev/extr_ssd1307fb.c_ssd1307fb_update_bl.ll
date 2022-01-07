; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_ssd1307fb.c_ssd1307fb_update_bl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_ssd1307fb.c_ssd1307fb_update_bl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.backlight_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.ssd1307fb_par = type { i32, i32 }

@SSD1307FB_CONTRAST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.backlight_device*)* @ssd1307fb_update_bl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ssd1307fb_update_bl(%struct.backlight_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.backlight_device*, align 8
  %4 = alloca %struct.ssd1307fb_par*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.backlight_device* %0, %struct.backlight_device** %3, align 8
  %7 = load %struct.backlight_device*, %struct.backlight_device** %3, align 8
  %8 = call %struct.ssd1307fb_par* @bl_get_data(%struct.backlight_device* %7)
  store %struct.ssd1307fb_par* %8, %struct.ssd1307fb_par** %4, align 8
  %9 = load %struct.backlight_device*, %struct.backlight_device** %3, align 8
  %10 = getelementptr inbounds %struct.backlight_device, %struct.backlight_device* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* %6, align 4
  %14 = load %struct.ssd1307fb_par*, %struct.ssd1307fb_par** %4, align 8
  %15 = getelementptr inbounds %struct.ssd1307fb_par, %struct.ssd1307fb_par* %14, i32 0, i32 0
  store i32 %13, i32* %15, align 4
  %16 = load %struct.ssd1307fb_par*, %struct.ssd1307fb_par** %4, align 8
  %17 = getelementptr inbounds %struct.ssd1307fb_par, %struct.ssd1307fb_par* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @SSD1307FB_CONTRAST, align 4
  %20 = call i32 @ssd1307fb_write_cmd(i32 %18, i32 %19)
  store i32 %20, i32* %5, align 4
  %21 = load i32, i32* %5, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %1
  %24 = load i32, i32* %5, align 4
  store i32 %24, i32* %2, align 4
  br label %38

25:                                               ; preds = %1
  %26 = load %struct.ssd1307fb_par*, %struct.ssd1307fb_par** %4, align 8
  %27 = getelementptr inbounds %struct.ssd1307fb_par, %struct.ssd1307fb_par* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.ssd1307fb_par*, %struct.ssd1307fb_par** %4, align 8
  %30 = getelementptr inbounds %struct.ssd1307fb_par, %struct.ssd1307fb_par* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @ssd1307fb_write_cmd(i32 %28, i32 %31)
  store i32 %32, i32* %5, align 4
  %33 = load i32, i32* %5, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %25
  %36 = load i32, i32* %5, align 4
  store i32 %36, i32* %2, align 4
  br label %38

37:                                               ; preds = %25
  store i32 0, i32* %2, align 4
  br label %38

38:                                               ; preds = %37, %35, %23
  %39 = load i32, i32* %2, align 4
  ret i32 %39
}

declare dso_local %struct.ssd1307fb_par* @bl_get_data(%struct.backlight_device*) #1

declare dso_local i32 @ssd1307fb_write_cmd(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
