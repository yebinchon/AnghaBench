; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/backlight/extr_lms501kf03.c_lms501kf03_power_off.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/backlight/extr_lms501kf03.c_lms501kf03_power_off.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lms501kf03 = type { i32, i32, %struct.lcd_platform_data* }
%struct.lcd_platform_data = type { i32 (i32, i32)*, i32 }

@.str = private unnamed_addr constant [21 x i8] c"lcd setting failed.\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lms501kf03*)* @lms501kf03_power_off to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lms501kf03_power_off(%struct.lms501kf03* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.lms501kf03*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.lcd_platform_data*, align 8
  store %struct.lms501kf03* %0, %struct.lms501kf03** %3, align 8
  store i32 0, i32* %4, align 4
  %6 = load %struct.lms501kf03*, %struct.lms501kf03** %3, align 8
  %7 = getelementptr inbounds %struct.lms501kf03, %struct.lms501kf03* %6, i32 0, i32 2
  %8 = load %struct.lcd_platform_data*, %struct.lcd_platform_data** %7, align 8
  store %struct.lcd_platform_data* %8, %struct.lcd_platform_data** %5, align 8
  %9 = load %struct.lms501kf03*, %struct.lms501kf03** %3, align 8
  %10 = call i32 @lms501kf03_ldi_disable(%struct.lms501kf03* %9)
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* %4, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %20

13:                                               ; preds = %1
  %14 = load %struct.lms501kf03*, %struct.lms501kf03** %3, align 8
  %15 = getelementptr inbounds %struct.lms501kf03, %struct.lms501kf03* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @dev_err(i32 %16, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %18 = load i32, i32* @EIO, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %2, align 4
  br label %32

20:                                               ; preds = %1
  %21 = load %struct.lcd_platform_data*, %struct.lcd_platform_data** %5, align 8
  %22 = getelementptr inbounds %struct.lcd_platform_data, %struct.lcd_platform_data* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @msleep(i32 %23)
  %25 = load %struct.lcd_platform_data*, %struct.lcd_platform_data** %5, align 8
  %26 = getelementptr inbounds %struct.lcd_platform_data, %struct.lcd_platform_data* %25, i32 0, i32 0
  %27 = load i32 (i32, i32)*, i32 (i32, i32)** %26, align 8
  %28 = load %struct.lms501kf03*, %struct.lms501kf03** %3, align 8
  %29 = getelementptr inbounds %struct.lms501kf03, %struct.lms501kf03* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = call i32 %27(i32 %30, i32 0)
  store i32 0, i32* %2, align 4
  br label %32

32:                                               ; preds = %20, %13
  %33 = load i32, i32* %2, align 4
  ret i32 %33
}

declare dso_local i32 @lms501kf03_ldi_disable(%struct.lms501kf03*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
