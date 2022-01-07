; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/backlight/extr_tosa_bl.c_tosa_bl_set_backlight.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/backlight/extr_tosa_bl.c_tosa_bl_set_backlight.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tosa_bl_data = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.spi_device = type { i32 }

@DAC_CH1 = common dso_local global i32 0, align 4
@DAC_CH2 = common dso_local global i32 0, align 4
@TOSA_GPIO_BL_C20MA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tosa_bl_data*, i32)* @tosa_bl_set_backlight to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tosa_bl_set_backlight(%struct.tosa_bl_data* %0, i32 %1) #0 {
  %3 = alloca %struct.tosa_bl_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.spi_device*, align 8
  store %struct.tosa_bl_data* %0, %struct.tosa_bl_data** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.tosa_bl_data*, %struct.tosa_bl_data** %3, align 8
  %7 = getelementptr inbounds %struct.tosa_bl_data, %struct.tosa_bl_data* %6, i32 0, i32 0
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = call %struct.spi_device* @dev_get_platdata(i32* %9)
  store %struct.spi_device* %10, %struct.spi_device** %5, align 8
  %11 = load %struct.tosa_bl_data*, %struct.tosa_bl_data** %3, align 8
  %12 = getelementptr inbounds %struct.tosa_bl_data, %struct.tosa_bl_data* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = load i32, i32* @DAC_CH1, align 4
  %15 = load %struct.tosa_bl_data*, %struct.tosa_bl_data** %3, align 8
  %16 = getelementptr inbounds %struct.tosa_bl_data, %struct.tosa_bl_data* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @i2c_smbus_write_byte_data(%struct.TYPE_2__* %13, i32 %14, i32 %17)
  %19 = load %struct.tosa_bl_data*, %struct.tosa_bl_data** %3, align 8
  %20 = getelementptr inbounds %struct.tosa_bl_data, %struct.tosa_bl_data* %19, i32 0, i32 0
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = load i32, i32* @DAC_CH2, align 4
  %23 = load i32, i32* %4, align 4
  %24 = and i32 %23, 255
  %25 = call i32 @i2c_smbus_write_byte_data(%struct.TYPE_2__* %21, i32 %22, i32 %24)
  %26 = load i32, i32* @TOSA_GPIO_BL_C20MA, align 4
  %27 = load i32, i32* %4, align 4
  %28 = and i32 %27, 256
  %29 = call i32 @gpio_set_value(i32 %26, i32 %28)
  %30 = load %struct.spi_device*, %struct.spi_device** %5, align 8
  %31 = load i32, i32* %4, align 4
  %32 = call i32 @tosa_bl_enable(%struct.spi_device* %30, i32 %31)
  ret void
}

declare dso_local %struct.spi_device* @dev_get_platdata(i32*) #1

declare dso_local i32 @i2c_smbus_write_byte_data(%struct.TYPE_2__*, i32, i32) #1

declare dso_local i32 @gpio_set_value(i32, i32) #1

declare dso_local i32 @tosa_bl_enable(%struct.spi_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
