; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/backlight/extr_jornada720_lcd.c_jornada_lcd_set_contrast.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/backlight/extr_jornada720_lcd.c_jornada_lcd_set_contrast.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lcd_device = type { i32 }

@SETCONTRAST = common dso_local global i32 0, align 4
@TXDUMMY = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [24 x i8] c"failed to set contrast\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lcd_device*, i32)* @jornada_lcd_set_contrast to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @jornada_lcd_set_contrast(%struct.lcd_device* %0, i32 %1) #0 {
  %3 = alloca %struct.lcd_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.lcd_device* %0, %struct.lcd_device** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %6 = call i32 (...) @jornada_ssp_start()
  %7 = load i32, i32* @SETCONTRAST, align 4
  %8 = call i64 @jornada_ssp_byte(i32 %7)
  %9 = load i64, i64* @TXDUMMY, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %18

11:                                               ; preds = %2
  %12 = load i32, i32* %4, align 4
  %13 = call i64 @jornada_ssp_byte(i32 %12)
  %14 = load i64, i64* @TXDUMMY, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %11
  br label %24

17:                                               ; preds = %11
  br label %18

18:                                               ; preds = %17, %2
  %19 = load %struct.lcd_device*, %struct.lcd_device** %3, align 8
  %20 = getelementptr inbounds %struct.lcd_device, %struct.lcd_device* %19, i32 0, i32 0
  %21 = call i32 @dev_err(i32* %20, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %22 = load i32, i32* @ETIMEDOUT, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %5, align 4
  br label %24

24:                                               ; preds = %18, %16
  %25 = call i32 (...) @jornada_ssp_end()
  %26 = load i32, i32* %5, align 4
  ret i32 %26
}

declare dso_local i32 @jornada_ssp_start(...) #1

declare dso_local i64 @jornada_ssp_byte(i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @jornada_ssp_end(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
