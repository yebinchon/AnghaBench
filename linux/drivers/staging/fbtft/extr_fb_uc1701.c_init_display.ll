; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/fbtft/extr_fb_uc1701.c_init_display.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/fbtft/extr_fb_uc1701.c_init_display.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fbtft_par = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 (%struct.fbtft_par.0*)* }
%struct.fbtft_par.0 = type opaque

@LCD_RESET_CMD = common dso_local global i32 0, align 4
@LCD_START_LINE = common dso_local global i32 0, align 4
@LCD_BOTTOMVIEW = common dso_local global i32 0, align 4
@LCD_SCAN_DIR = common dso_local global i32 0, align 4
@LCD_ALL_PIXEL = common dso_local global i32 0, align 4
@LCD_DISPLAY_INVERT = common dso_local global i32 0, align 4
@LCD_BIAS = common dso_local global i32 0, align 4
@LCD_POWER_CONTROL = common dso_local global i32 0, align 4
@LCD_VOLTAGE = common dso_local global i32 0, align 4
@LCD_VOLUME_MODE = common dso_local global i32 0, align 4
@LCD_NO_OP = common dso_local global i32 0, align 4
@LCD_ADV_PROG_CTRL = common dso_local global i32 0, align 4
@LCD_ADV_PROG_CTRL2 = common dso_local global i32 0, align 4
@LCD_TEMPCOMP_HIGH = common dso_local global i32 0, align 4
@LCD_DISPLAY_ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fbtft_par*)* @init_display to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init_display(%struct.fbtft_par* %0) #0 {
  %2 = alloca %struct.fbtft_par*, align 8
  store %struct.fbtft_par* %0, %struct.fbtft_par** %2, align 8
  %3 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %4 = getelementptr inbounds %struct.fbtft_par, %struct.fbtft_par* %3, i32 0, i32 0
  %5 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %4, i32 0, i32 0
  %6 = load i32 (%struct.fbtft_par.0*)*, i32 (%struct.fbtft_par.0*)** %5, align 8
  %7 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %8 = bitcast %struct.fbtft_par* %7 to %struct.fbtft_par.0*
  %9 = call i32 %6(%struct.fbtft_par.0* %8)
  %10 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %11 = load i32, i32* @LCD_RESET_CMD, align 4
  %12 = call i32 @write_reg(%struct.fbtft_par* %10, i32 %11)
  %13 = call i32 @mdelay(i32 10)
  %14 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %15 = load i32, i32* @LCD_START_LINE, align 4
  %16 = call i32 @write_reg(%struct.fbtft_par* %14, i32 %15)
  %17 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %18 = load i32, i32* @LCD_BOTTOMVIEW, align 4
  %19 = or i32 %18, 1
  %20 = call i32 @write_reg(%struct.fbtft_par* %17, i32 %19)
  %21 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %22 = load i32, i32* @LCD_SCAN_DIR, align 4
  %23 = call i32 @write_reg(%struct.fbtft_par* %21, i32 %22)
  %24 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %25 = load i32, i32* @LCD_ALL_PIXEL, align 4
  %26 = call i32 @write_reg(%struct.fbtft_par* %24, i32 %25)
  %27 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %28 = load i32, i32* @LCD_DISPLAY_INVERT, align 4
  %29 = call i32 @write_reg(%struct.fbtft_par* %27, i32 %28)
  %30 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %31 = load i32, i32* @LCD_BIAS, align 4
  %32 = call i32 @write_reg(%struct.fbtft_par* %30, i32 %31)
  %33 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %34 = load i32, i32* @LCD_POWER_CONTROL, align 4
  %35 = or i32 %34, 7
  %36 = call i32 @write_reg(%struct.fbtft_par* %33, i32 %35)
  %37 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %38 = load i32, i32* @LCD_VOLTAGE, align 4
  %39 = or i32 %38, 7
  %40 = call i32 @write_reg(%struct.fbtft_par* %37, i32 %39)
  %41 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %42 = load i32, i32* @LCD_VOLUME_MODE, align 4
  %43 = call i32 @write_reg(%struct.fbtft_par* %41, i32 %42)
  %44 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %45 = call i32 @write_reg(%struct.fbtft_par* %44, i32 9)
  %46 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %47 = load i32, i32* @LCD_NO_OP, align 4
  %48 = call i32 @write_reg(%struct.fbtft_par* %46, i32 %47)
  %49 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %50 = load i32, i32* @LCD_ADV_PROG_CTRL, align 4
  %51 = call i32 @write_reg(%struct.fbtft_par* %49, i32 %50)
  %52 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %53 = load i32, i32* @LCD_ADV_PROG_CTRL2, align 4
  %54 = load i32, i32* @LCD_TEMPCOMP_HIGH, align 4
  %55 = or i32 %53, %54
  %56 = call i32 @write_reg(%struct.fbtft_par* %52, i32 %55)
  %57 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %58 = load i32, i32* @LCD_DISPLAY_ENABLE, align 4
  %59 = or i32 %58, 1
  %60 = call i32 @write_reg(%struct.fbtft_par* %57, i32 %59)
  ret i32 0
}

declare dso_local i32 @write_reg(%struct.fbtft_par*, i32) #1

declare dso_local i32 @mdelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
