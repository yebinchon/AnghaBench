; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/backlight/extr_lms283gf05.c_lms283gf05_power_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/backlight/extr_lms283gf05.c_lms283gf05_power_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lcd_device = type { i32 }
%struct.lms283gf05_state = type { %struct.spi_device* }
%struct.spi_device = type { i32 }
%struct.lms283gf05_pdata = type { i32, i32 }

@FB_BLANK_NORMAL = common dso_local global i32 0, align 4
@disp_initseq = common dso_local global i32 0, align 4
@disp_pdwnseq = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lcd_device*, i32)* @lms283gf05_power_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lms283gf05_power_set(%struct.lcd_device* %0, i32 %1) #0 {
  %3 = alloca %struct.lcd_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.lms283gf05_state*, align 8
  %6 = alloca %struct.spi_device*, align 8
  %7 = alloca %struct.lms283gf05_pdata*, align 8
  store %struct.lcd_device* %0, %struct.lcd_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.lcd_device*, %struct.lcd_device** %3, align 8
  %9 = call %struct.lms283gf05_state* @lcd_get_data(%struct.lcd_device* %8)
  store %struct.lms283gf05_state* %9, %struct.lms283gf05_state** %5, align 8
  %10 = load %struct.lms283gf05_state*, %struct.lms283gf05_state** %5, align 8
  %11 = getelementptr inbounds %struct.lms283gf05_state, %struct.lms283gf05_state* %10, i32 0, i32 0
  %12 = load %struct.spi_device*, %struct.spi_device** %11, align 8
  store %struct.spi_device* %12, %struct.spi_device** %6, align 8
  %13 = load %struct.spi_device*, %struct.spi_device** %6, align 8
  %14 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %13, i32 0, i32 0
  %15 = call %struct.lms283gf05_pdata* @dev_get_platdata(i32* %14)
  store %struct.lms283gf05_pdata* %15, %struct.lms283gf05_pdata** %7, align 8
  %16 = load i32, i32* %4, align 4
  %17 = load i32, i32* @FB_BLANK_NORMAL, align 4
  %18 = icmp sle i32 %16, %17
  br i1 %18, label %19, label %36

19:                                               ; preds = %2
  %20 = load %struct.lms283gf05_pdata*, %struct.lms283gf05_pdata** %7, align 8
  %21 = icmp ne %struct.lms283gf05_pdata* %20, null
  br i1 %21, label %22, label %30

22:                                               ; preds = %19
  %23 = load %struct.lms283gf05_pdata*, %struct.lms283gf05_pdata** %7, align 8
  %24 = getelementptr inbounds %struct.lms283gf05_pdata, %struct.lms283gf05_pdata* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.lms283gf05_pdata*, %struct.lms283gf05_pdata** %7, align 8
  %27 = getelementptr inbounds %struct.lms283gf05_pdata, %struct.lms283gf05_pdata* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @lms283gf05_reset(i32 %25, i32 %28)
  br label %30

30:                                               ; preds = %22, %19
  %31 = load %struct.spi_device*, %struct.spi_device** %6, align 8
  %32 = load i32, i32* @disp_initseq, align 4
  %33 = load i32, i32* @disp_initseq, align 4
  %34 = call i32 @ARRAY_SIZE(i32 %33)
  %35 = call i32 @lms283gf05_toggle(%struct.spi_device* %31, i32 %32, i32 %34)
  br label %53

36:                                               ; preds = %2
  %37 = load %struct.spi_device*, %struct.spi_device** %6, align 8
  %38 = load i32, i32* @disp_pdwnseq, align 4
  %39 = load i32, i32* @disp_pdwnseq, align 4
  %40 = call i32 @ARRAY_SIZE(i32 %39)
  %41 = call i32 @lms283gf05_toggle(%struct.spi_device* %37, i32 %38, i32 %40)
  %42 = load %struct.lms283gf05_pdata*, %struct.lms283gf05_pdata** %7, align 8
  %43 = icmp ne %struct.lms283gf05_pdata* %42, null
  br i1 %43, label %44, label %52

44:                                               ; preds = %36
  %45 = load %struct.lms283gf05_pdata*, %struct.lms283gf05_pdata** %7, align 8
  %46 = getelementptr inbounds %struct.lms283gf05_pdata, %struct.lms283gf05_pdata* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.lms283gf05_pdata*, %struct.lms283gf05_pdata** %7, align 8
  %49 = getelementptr inbounds %struct.lms283gf05_pdata, %struct.lms283gf05_pdata* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @gpio_set_value(i32 %47, i32 %50)
  br label %52

52:                                               ; preds = %44, %36
  br label %53

53:                                               ; preds = %52, %30
  ret i32 0
}

declare dso_local %struct.lms283gf05_state* @lcd_get_data(%struct.lcd_device*) #1

declare dso_local %struct.lms283gf05_pdata* @dev_get_platdata(i32*) #1

declare dso_local i32 @lms283gf05_reset(i32, i32) #1

declare dso_local i32 @lms283gf05_toggle(%struct.spi_device*, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @gpio_set_value(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
