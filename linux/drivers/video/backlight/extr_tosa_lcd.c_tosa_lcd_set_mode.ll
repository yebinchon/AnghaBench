; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/backlight/extr_tosa_lcd.c_tosa_lcd_set_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/backlight/extr_tosa_lcd.c_tosa_lcd_set_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lcd_device = type { i32 }
%struct.fb_videomode = type { i32, i32 }
%struct.tosa_lcd_data = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lcd_device*, %struct.fb_videomode*)* @tosa_lcd_set_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tosa_lcd_set_mode(%struct.lcd_device* %0, %struct.fb_videomode* %1) #0 {
  %3 = alloca %struct.lcd_device*, align 8
  %4 = alloca %struct.fb_videomode*, align 8
  %5 = alloca %struct.tosa_lcd_data*, align 8
  store %struct.lcd_device* %0, %struct.lcd_device** %3, align 8
  store %struct.fb_videomode* %1, %struct.fb_videomode** %4, align 8
  %6 = load %struct.lcd_device*, %struct.lcd_device** %3, align 8
  %7 = call %struct.tosa_lcd_data* @lcd_get_data(%struct.lcd_device* %6)
  store %struct.tosa_lcd_data* %7, %struct.tosa_lcd_data** %5, align 8
  %8 = load %struct.fb_videomode*, %struct.fb_videomode** %4, align 8
  %9 = getelementptr inbounds %struct.fb_videomode, %struct.fb_videomode* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = icmp eq i32 %10, 320
  br i1 %11, label %17, label %12

12:                                               ; preds = %2
  %13 = load %struct.fb_videomode*, %struct.fb_videomode** %4, align 8
  %14 = getelementptr inbounds %struct.fb_videomode, %struct.fb_videomode* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = icmp eq i32 %15, 320
  br i1 %16, label %17, label %20

17:                                               ; preds = %12, %2
  %18 = load %struct.tosa_lcd_data*, %struct.tosa_lcd_data** %5, align 8
  %19 = getelementptr inbounds %struct.tosa_lcd_data, %struct.tosa_lcd_data* %18, i32 0, i32 0
  store i32 0, i32* %19, align 4
  br label %23

20:                                               ; preds = %12
  %21 = load %struct.tosa_lcd_data*, %struct.tosa_lcd_data** %5, align 8
  %22 = getelementptr inbounds %struct.tosa_lcd_data, %struct.tosa_lcd_data* %21, i32 0, i32 0
  store i32 1, i32* %22, align 4
  br label %23

23:                                               ; preds = %20, %17
  %24 = load %struct.tosa_lcd_data*, %struct.tosa_lcd_data** %5, align 8
  %25 = getelementptr inbounds %struct.tosa_lcd_data, %struct.tosa_lcd_data* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call i64 @POWER_IS_ON(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %23
  %30 = load %struct.tosa_lcd_data*, %struct.tosa_lcd_data** %5, align 8
  %31 = call i32 @tosa_lcd_tg_on(%struct.tosa_lcd_data* %30)
  br label %32

32:                                               ; preds = %29, %23
  ret i32 0
}

declare dso_local %struct.tosa_lcd_data* @lcd_get_data(%struct.lcd_device*) #1

declare dso_local i64 @POWER_IS_ON(i32) #1

declare dso_local i32 @tosa_lcd_tg_on(%struct.tosa_lcd_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
