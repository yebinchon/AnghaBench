; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_clps711x-fb.c_clps711x_lcd_get_power.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_clps711x-fb.c_clps711x_lcd_get_power.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lcd_device = type { i32 }
%struct.clps711x_fb_info = type { i32 }

@FB_BLANK_NORMAL = common dso_local global i32 0, align 4
@FB_BLANK_UNBLANK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lcd_device*)* @clps711x_lcd_get_power to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @clps711x_lcd_get_power(%struct.lcd_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.lcd_device*, align 8
  %4 = alloca %struct.clps711x_fb_info*, align 8
  store %struct.lcd_device* %0, %struct.lcd_device** %3, align 8
  %5 = load %struct.lcd_device*, %struct.lcd_device** %3, align 8
  %6 = getelementptr inbounds %struct.lcd_device, %struct.lcd_device* %5, i32 0, i32 0
  %7 = call %struct.clps711x_fb_info* @dev_get_drvdata(i32* %6)
  store %struct.clps711x_fb_info* %7, %struct.clps711x_fb_info** %4, align 8
  %8 = load %struct.clps711x_fb_info*, %struct.clps711x_fb_info** %4, align 8
  %9 = getelementptr inbounds %struct.clps711x_fb_info, %struct.clps711x_fb_info* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @IS_ERR_OR_NULL(i32 %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %22, label %13

13:                                               ; preds = %1
  %14 = load %struct.clps711x_fb_info*, %struct.clps711x_fb_info** %4, align 8
  %15 = getelementptr inbounds %struct.clps711x_fb_info, %struct.clps711x_fb_info* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @regulator_is_enabled(i32 %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %21, label %19

19:                                               ; preds = %13
  %20 = load i32, i32* @FB_BLANK_NORMAL, align 4
  store i32 %20, i32* %2, align 4
  br label %24

21:                                               ; preds = %13
  br label %22

22:                                               ; preds = %21, %1
  %23 = load i32, i32* @FB_BLANK_UNBLANK, align 4
  store i32 %23, i32* %2, align 4
  br label %24

24:                                               ; preds = %22, %19
  %25 = load i32, i32* %2, align 4
  ret i32 %25
}

declare dso_local %struct.clps711x_fb_info* @dev_get_drvdata(i32*) #1

declare dso_local i32 @IS_ERR_OR_NULL(i32) #1

declare dso_local i32 @regulator_is_enabled(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
