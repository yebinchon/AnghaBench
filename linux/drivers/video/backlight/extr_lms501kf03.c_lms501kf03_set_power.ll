; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/backlight/extr_lms501kf03.c_lms501kf03_set_power.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/backlight/extr_lms501kf03.c_lms501kf03_set_power.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lcd_device = type { i32 }
%struct.lms501kf03 = type { i32 }

@FB_BLANK_UNBLANK = common dso_local global i32 0, align 4
@FB_BLANK_POWERDOWN = common dso_local global i32 0, align 4
@FB_BLANK_NORMAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"power value should be 0, 1 or 4.\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lcd_device*, i32)* @lms501kf03_set_power to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lms501kf03_set_power(%struct.lcd_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.lcd_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.lms501kf03*, align 8
  store %struct.lcd_device* %0, %struct.lcd_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.lcd_device*, %struct.lcd_device** %4, align 8
  %8 = call %struct.lms501kf03* @lcd_get_data(%struct.lcd_device* %7)
  store %struct.lms501kf03* %8, %struct.lms501kf03** %6, align 8
  %9 = load i32, i32* %5, align 4
  %10 = load i32, i32* @FB_BLANK_UNBLANK, align 4
  %11 = icmp ne i32 %9, %10
  br i1 %11, label %12, label %27

12:                                               ; preds = %2
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* @FB_BLANK_POWERDOWN, align 4
  %15 = icmp ne i32 %13, %14
  br i1 %15, label %16, label %27

16:                                               ; preds = %12
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* @FB_BLANK_NORMAL, align 4
  %19 = icmp ne i32 %17, %18
  br i1 %19, label %20, label %27

20:                                               ; preds = %16
  %21 = load %struct.lms501kf03*, %struct.lms501kf03** %6, align 8
  %22 = getelementptr inbounds %struct.lms501kf03, %struct.lms501kf03* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @dev_err(i32 %23, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %3, align 4
  br label %31

27:                                               ; preds = %16, %12, %2
  %28 = load %struct.lms501kf03*, %struct.lms501kf03** %6, align 8
  %29 = load i32, i32* %5, align 4
  %30 = call i32 @lms501kf03_power(%struct.lms501kf03* %28, i32 %29)
  store i32 %30, i32* %3, align 4
  br label %31

31:                                               ; preds = %27, %20
  %32 = load i32, i32* %3, align 4
  ret i32 %32
}

declare dso_local %struct.lms501kf03* @lcd_get_data(%struct.lcd_device*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @lms501kf03_power(%struct.lms501kf03*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
