; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/backlight/extr_jornada720_lcd.c_jornada_lcd_get_contrast.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/backlight/extr_jornada720_lcd.c_jornada_lcd_get_contrast.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lcd_device = type { i32 }

@FB_BLANK_UNBLANK = common dso_local global i64 0, align 8
@GETCONTRAST = common dso_local global i32 0, align 4
@TXDUMMY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"failed to set contrast\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lcd_device*)* @jornada_lcd_get_contrast to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @jornada_lcd_get_contrast(%struct.lcd_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.lcd_device*, align 8
  %4 = alloca i32, align 4
  store %struct.lcd_device* %0, %struct.lcd_device** %3, align 8
  %5 = load %struct.lcd_device*, %struct.lcd_device** %3, align 8
  %6 = call i64 @jornada_lcd_get_power(%struct.lcd_device* %5)
  %7 = load i64, i64* @FB_BLANK_UNBLANK, align 8
  %8 = icmp ne i64 %6, %7
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %28

10:                                               ; preds = %1
  %11 = call i32 (...) @jornada_ssp_start()
  %12 = load i32, i32* @GETCONTRAST, align 4
  %13 = call i32 @jornada_ssp_byte(i32 %12)
  %14 = load i32, i32* @TXDUMMY, align 4
  %15 = icmp eq i32 %13, %14
  br i1 %15, label %16, label %19

16:                                               ; preds = %10
  %17 = load i32, i32* @TXDUMMY, align 4
  %18 = call i32 @jornada_ssp_byte(i32 %17)
  store i32 %18, i32* %4, align 4
  br label %25

19:                                               ; preds = %10
  %20 = load %struct.lcd_device*, %struct.lcd_device** %3, align 8
  %21 = getelementptr inbounds %struct.lcd_device, %struct.lcd_device* %20, i32 0, i32 0
  %22 = call i32 @dev_err(i32* %21, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %23 = load i32, i32* @ETIMEDOUT, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %4, align 4
  br label %25

25:                                               ; preds = %19, %16
  %26 = call i32 (...) @jornada_ssp_end()
  %27 = load i32, i32* %4, align 4
  store i32 %27, i32* %2, align 4
  br label %28

28:                                               ; preds = %25, %9
  %29 = load i32, i32* %2, align 4
  ret i32 %29
}

declare dso_local i64 @jornada_lcd_get_power(%struct.lcd_device*) #1

declare dso_local i32 @jornada_ssp_start(...) #1

declare dso_local i32 @jornada_ssp_byte(i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @jornada_ssp_end(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
