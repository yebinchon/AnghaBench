; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/backlight/extr_jornada720_bl.c_jornada_bl_get_brightness.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/backlight/extr_jornada720_bl.c_jornada_bl_get_brightness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.backlight_device = type { i32 }

@PPSR = common dso_local global i32 0, align 4
@PPC_LDD1 = common dso_local global i32 0, align 4
@GETBRIGHTNESS = common dso_local global i32 0, align 4
@TXDUMMY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"get brightness timeout\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@BL_MAX_BRIGHT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.backlight_device*)* @jornada_bl_get_brightness to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @jornada_bl_get_brightness(%struct.backlight_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.backlight_device*, align 8
  %4 = alloca i32, align 4
  store %struct.backlight_device* %0, %struct.backlight_device** %3, align 8
  %5 = load i32, i32* @PPSR, align 4
  %6 = load i32, i32* @PPC_LDD1, align 4
  %7 = and i32 %5, %6
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %32

10:                                               ; preds = %1
  %11 = call i32 (...) @jornada_ssp_start()
  %12 = load i32, i32* @GETBRIGHTNESS, align 4
  %13 = call i32 @jornada_ssp_byte(i32 %12)
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* @GETBRIGHTNESS, align 4
  %15 = call i32 @jornada_ssp_byte(i32 %14)
  %16 = load i32, i32* @TXDUMMY, align 4
  %17 = icmp ne i32 %15, %16
  br i1 %17, label %18, label %25

18:                                               ; preds = %10
  %19 = load %struct.backlight_device*, %struct.backlight_device** %3, align 8
  %20 = getelementptr inbounds %struct.backlight_device, %struct.backlight_device* %19, i32 0, i32 0
  %21 = call i32 @dev_err(i32* %20, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %22 = call i32 (...) @jornada_ssp_end()
  %23 = load i32, i32* @ETIMEDOUT, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %2, align 4
  br label %32

25:                                               ; preds = %10
  %26 = load i32, i32* @TXDUMMY, align 4
  %27 = call i32 @jornada_ssp_byte(i32 %26)
  store i32 %27, i32* %4, align 4
  %28 = call i32 (...) @jornada_ssp_end()
  %29 = load i32, i32* @BL_MAX_BRIGHT, align 4
  %30 = load i32, i32* %4, align 4
  %31 = sub nsw i32 %29, %30
  store i32 %31, i32* %2, align 4
  br label %32

32:                                               ; preds = %25, %18, %9
  %33 = load i32, i32* %2, align 4
  ret i32 %33
}

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
