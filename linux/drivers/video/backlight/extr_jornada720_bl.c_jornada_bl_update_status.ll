; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/backlight/extr_jornada720_bl.c_jornada_bl_update_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/backlight/extr_jornada720_bl.c_jornada_bl_update_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.backlight_device = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64, i64 }

@FB_BLANK_UNBLANK = common dso_local global i64 0, align 8
@BRIGHTNESSOFF = common dso_local global i64 0, align 8
@TXDUMMY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"brightness off timeout\0A\00", align 1
@PPC_LDD1 = common dso_local global i32 0, align 4
@PPSR = common dso_local global i32 0, align 4
@PPDR = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@SETBRIGHTNESS = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [26 x i8] c"failed to set brightness\0A\00", align 1
@BL_MAX_BRIGHT = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [23 x i8] c"set brightness failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.backlight_device*)* @jornada_bl_update_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @jornada_bl_update_status(%struct.backlight_device* %0) #0 {
  %2 = alloca %struct.backlight_device*, align 8
  %3 = alloca i32, align 4
  store %struct.backlight_device* %0, %struct.backlight_device** %2, align 8
  store i32 0, i32* %3, align 4
  %4 = call i32 (...) @jornada_ssp_start()
  %5 = load %struct.backlight_device*, %struct.backlight_device** %2, align 8
  %6 = getelementptr inbounds %struct.backlight_device, %struct.backlight_device* %5, i32 0, i32 1
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @FB_BLANK_UNBLANK, align 8
  %10 = icmp ne i64 %8, %9
  br i1 %10, label %18, label %11

11:                                               ; preds = %1
  %12 = load %struct.backlight_device*, %struct.backlight_device** %2, align 8
  %13 = getelementptr inbounds %struct.backlight_device, %struct.backlight_device* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @FB_BLANK_UNBLANK, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %38

18:                                               ; preds = %11, %1
  %19 = load i64, i64* @BRIGHTNESSOFF, align 8
  %20 = call i32 @jornada_ssp_byte(i64 %19)
  store i32 %20, i32* %3, align 4
  %21 = load i32, i32* %3, align 4
  %22 = load i32, i32* @TXDUMMY, align 4
  %23 = icmp ne i32 %21, %22
  br i1 %23, label %24, label %37

24:                                               ; preds = %18
  %25 = load %struct.backlight_device*, %struct.backlight_device** %2, align 8
  %26 = getelementptr inbounds %struct.backlight_device, %struct.backlight_device* %25, i32 0, i32 0
  %27 = call i32 @dev_info(i32* %26, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %28 = load i32, i32* @PPC_LDD1, align 4
  %29 = xor i32 %28, -1
  %30 = load i32, i32* @PPSR, align 4
  %31 = and i32 %30, %29
  store i32 %31, i32* @PPSR, align 4
  %32 = load i32, i32* @PPC_LDD1, align 4
  %33 = load i32, i32* @PPDR, align 4
  %34 = or i32 %33, %32
  store i32 %34, i32* @PPDR, align 4
  %35 = load i32, i32* @ETIMEDOUT, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %3, align 4
  br label %37

37:                                               ; preds = %24, %18
  br label %42

38:                                               ; preds = %11
  %39 = load i32, i32* @PPC_LDD1, align 4
  %40 = load i32, i32* @PPSR, align 4
  %41 = or i32 %40, %39
  store i32 %41, i32* @PPSR, align 4
  br label %42

42:                                               ; preds = %38, %37
  %43 = load i64, i64* @SETBRIGHTNESS, align 8
  %44 = call i32 @jornada_ssp_byte(i64 %43)
  %45 = load i32, i32* @TXDUMMY, align 4
  %46 = icmp ne i32 %44, %45
  br i1 %46, label %47, label %53

47:                                               ; preds = %42
  %48 = load %struct.backlight_device*, %struct.backlight_device** %2, align 8
  %49 = getelementptr inbounds %struct.backlight_device, %struct.backlight_device* %48, i32 0, i32 0
  %50 = call i32 @dev_info(i32* %49, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %51 = load i32, i32* @ETIMEDOUT, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %3, align 4
  br label %70

53:                                               ; preds = %42
  %54 = load i64, i64* @BL_MAX_BRIGHT, align 8
  %55 = load %struct.backlight_device*, %struct.backlight_device** %2, align 8
  %56 = getelementptr inbounds %struct.backlight_device, %struct.backlight_device* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 2
  %58 = load i64, i64* %57, align 8
  %59 = sub nsw i64 %54, %58
  %60 = call i32 @jornada_ssp_byte(i64 %59)
  %61 = load i32, i32* @TXDUMMY, align 4
  %62 = icmp ne i32 %60, %61
  br i1 %62, label %63, label %69

63:                                               ; preds = %53
  %64 = load %struct.backlight_device*, %struct.backlight_device** %2, align 8
  %65 = getelementptr inbounds %struct.backlight_device, %struct.backlight_device* %64, i32 0, i32 0
  %66 = call i32 @dev_err(i32* %65, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  %67 = load i32, i32* @ETIMEDOUT, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %3, align 4
  br label %69

69:                                               ; preds = %63, %53
  br label %70

70:                                               ; preds = %69, %47
  %71 = call i32 (...) @jornada_ssp_end()
  %72 = load i32, i32* %3, align 4
  ret i32 %72
}

declare dso_local i32 @jornada_ssp_start(...) #1

declare dso_local i32 @jornada_ssp_byte(i64) #1

declare dso_local i32 @dev_info(i32*, i8*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @jornada_ssp_end(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
