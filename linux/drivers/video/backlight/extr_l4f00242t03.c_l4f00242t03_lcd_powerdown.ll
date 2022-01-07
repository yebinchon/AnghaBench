; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/backlight/extr_l4f00242t03.c_l4f00242t03_lcd_powerdown.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/backlight/extr_l4f00242t03.c_l4f00242t03_lcd_powerdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_device = type { i32 }
%struct.l4f00242t03_pdata = type { i32 }
%struct.l4f00242t03_priv = type { i32, i32 }

@.str = private unnamed_addr constant [19 x i8] c"Powering down LCD\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.spi_device*)* @l4f00242t03_lcd_powerdown to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @l4f00242t03_lcd_powerdown(%struct.spi_device* %0) #0 {
  %2 = alloca %struct.spi_device*, align 8
  %3 = alloca %struct.l4f00242t03_pdata*, align 8
  %4 = alloca %struct.l4f00242t03_priv*, align 8
  store %struct.spi_device* %0, %struct.spi_device** %2, align 8
  %5 = load %struct.spi_device*, %struct.spi_device** %2, align 8
  %6 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %5, i32 0, i32 0
  %7 = call %struct.l4f00242t03_pdata* @dev_get_platdata(i32* %6)
  store %struct.l4f00242t03_pdata* %7, %struct.l4f00242t03_pdata** %3, align 8
  %8 = load %struct.spi_device*, %struct.spi_device** %2, align 8
  %9 = call %struct.l4f00242t03_priv* @spi_get_drvdata(%struct.spi_device* %8)
  store %struct.l4f00242t03_priv* %9, %struct.l4f00242t03_priv** %4, align 8
  %10 = load %struct.spi_device*, %struct.spi_device** %2, align 8
  %11 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %10, i32 0, i32 0
  %12 = call i32 @dev_dbg(i32* %11, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %13 = load %struct.l4f00242t03_pdata*, %struct.l4f00242t03_pdata** %3, align 8
  %14 = getelementptr inbounds %struct.l4f00242t03_pdata, %struct.l4f00242t03_pdata* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @gpio_set_value(i32 %15, i32 0)
  %17 = load %struct.l4f00242t03_priv*, %struct.l4f00242t03_priv** %4, align 8
  %18 = getelementptr inbounds %struct.l4f00242t03_priv, %struct.l4f00242t03_priv* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @regulator_disable(i32 %19)
  %21 = load %struct.l4f00242t03_priv*, %struct.l4f00242t03_priv** %4, align 8
  %22 = getelementptr inbounds %struct.l4f00242t03_priv, %struct.l4f00242t03_priv* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @regulator_disable(i32 %23)
  ret void
}

declare dso_local %struct.l4f00242t03_pdata* @dev_get_platdata(i32*) #1

declare dso_local %struct.l4f00242t03_priv* @spi_get_drvdata(%struct.spi_device*) #1

declare dso_local i32 @dev_dbg(i32*, i8*) #1

declare dso_local i32 @gpio_set_value(i32, i32) #1

declare dso_local i32 @regulator_disable(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
