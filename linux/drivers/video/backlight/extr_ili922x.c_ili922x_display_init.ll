; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/backlight/extr_ili922x.c_ili922x_display_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/backlight/extr_ili922x.c_ili922x_display_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_device = type { i32 }

@REG_START_OSCILLATION = common dso_local global i32 0, align 4
@REG_DRIVER_OUTPUT_CONTROL = common dso_local global i32 0, align 4
@REG_LCD_AC_DRIVEING_CONTROL = common dso_local global i32 0, align 4
@REG_ENTRY_MODE = common dso_local global i32 0, align 4
@REG_COMPARE_1 = common dso_local global i32 0, align 4
@REG_COMPARE_2 = common dso_local global i32 0, align 4
@REG_DISPLAY_CONTROL_1 = common dso_local global i32 0, align 4
@REG_DISPLAY_CONTROL_2 = common dso_local global i32 0, align 4
@REG_DISPLAY_CONTROL_3 = common dso_local global i32 0, align 4
@REG_FRAME_CYCLE_CONTROL = common dso_local global i32 0, align 4
@REG_EXT_INTF_CONTROL = common dso_local global i32 0, align 4
@REG_GAMMA_CONTROL_1 = common dso_local global i32 0, align 4
@REG_GAMMA_CONTROL_2 = common dso_local global i32 0, align 4
@REG_GAMMA_CONTROL_3 = common dso_local global i32 0, align 4
@REG_GAMMA_CONTROL_4 = common dso_local global i32 0, align 4
@REG_GAMMA_CONTROL_5 = common dso_local global i32 0, align 4
@REG_GAMMA_CONTROL_6 = common dso_local global i32 0, align 4
@REG_GAMMA_CONTROL_7 = common dso_local global i32 0, align 4
@REG_GAMMA_CONTROL_8 = common dso_local global i32 0, align 4
@REG_GAMMA_CONTROL_9 = common dso_local global i32 0, align 4
@REG_GAMMA_CONTROL_10 = common dso_local global i32 0, align 4
@REG_RAM_ADDRESS_SET = common dso_local global i32 0, align 4
@REG_GATE_SCAN_CONTROL = common dso_local global i32 0, align 4
@REG_VERT_SCROLL_CONTROL = common dso_local global i32 0, align 4
@REG_FIRST_SCREEN_DRIVE_POS = common dso_local global i32 0, align 4
@REG_SECOND_SCREEN_DRIVE_POS = common dso_local global i32 0, align 4
@REG_RAM_ADDR_POS_H = common dso_local global i32 0, align 4
@REG_RAM_ADDR_POS_V = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.spi_device*)* @ili922x_display_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ili922x_display_init(%struct.spi_device* %0) #0 {
  %2 = alloca %struct.spi_device*, align 8
  store %struct.spi_device* %0, %struct.spi_device** %2, align 8
  %3 = load %struct.spi_device*, %struct.spi_device** %2, align 8
  %4 = load i32, i32* @REG_START_OSCILLATION, align 4
  %5 = call i32 @ili922x_write(%struct.spi_device* %3, i32 %4, i32 1)
  %6 = call i32 @usleep_range(i32 10000, i32 10500)
  %7 = load %struct.spi_device*, %struct.spi_device** %2, align 8
  %8 = load i32, i32* @REG_DRIVER_OUTPUT_CONTROL, align 4
  %9 = call i32 @ili922x_write(%struct.spi_device* %7, i32 %8, i32 26907)
  %10 = load %struct.spi_device*, %struct.spi_device** %2, align 8
  %11 = load i32, i32* @REG_LCD_AC_DRIVEING_CONTROL, align 4
  %12 = call i32 @ili922x_write(%struct.spi_device* %10, i32 %11, i32 1792)
  %13 = load %struct.spi_device*, %struct.spi_device** %2, align 8
  %14 = load i32, i32* @REG_ENTRY_MODE, align 4
  %15 = call i32 @ili922x_write(%struct.spi_device* %13, i32 %14, i32 4144)
  %16 = load %struct.spi_device*, %struct.spi_device** %2, align 8
  %17 = load i32, i32* @REG_COMPARE_1, align 4
  %18 = call i32 @ili922x_write(%struct.spi_device* %16, i32 %17, i32 0)
  %19 = load %struct.spi_device*, %struct.spi_device** %2, align 8
  %20 = load i32, i32* @REG_COMPARE_2, align 4
  %21 = call i32 @ili922x_write(%struct.spi_device* %19, i32 %20, i32 0)
  %22 = load %struct.spi_device*, %struct.spi_device** %2, align 8
  %23 = load i32, i32* @REG_DISPLAY_CONTROL_1, align 4
  %24 = call i32 @ili922x_write(%struct.spi_device* %22, i32 %23, i32 55)
  %25 = load %struct.spi_device*, %struct.spi_device** %2, align 8
  %26 = load i32, i32* @REG_DISPLAY_CONTROL_2, align 4
  %27 = call i32 @ili922x_write(%struct.spi_device* %25, i32 %26, i32 514)
  %28 = load %struct.spi_device*, %struct.spi_device** %2, align 8
  %29 = load i32, i32* @REG_DISPLAY_CONTROL_3, align 4
  %30 = call i32 @ili922x_write(%struct.spi_device* %28, i32 %29, i32 0)
  %31 = load %struct.spi_device*, %struct.spi_device** %2, align 8
  %32 = load i32, i32* @REG_FRAME_CYCLE_CONTROL, align 4
  %33 = call i32 @ili922x_write(%struct.spi_device* %31, i32 %32, i32 0)
  %34 = load %struct.spi_device*, %struct.spi_device** %2, align 8
  %35 = load i32, i32* @REG_EXT_INTF_CONTROL, align 4
  %36 = call i32 @ili922x_write(%struct.spi_device* %34, i32 %35, i32 272)
  %37 = load %struct.spi_device*, %struct.spi_device** %2, align 8
  %38 = call i32 @ili922x_poweron(%struct.spi_device* %37)
  %39 = load %struct.spi_device*, %struct.spi_device** %2, align 8
  %40 = load i32, i32* @REG_GAMMA_CONTROL_1, align 4
  %41 = call i32 @ili922x_write(%struct.spi_device* %39, i32 %40, i32 770)
  %42 = load %struct.spi_device*, %struct.spi_device** %2, align 8
  %43 = load i32, i32* @REG_GAMMA_CONTROL_2, align 4
  %44 = call i32 @ili922x_write(%struct.spi_device* %42, i32 %43, i32 1031)
  %45 = load %struct.spi_device*, %struct.spi_device** %2, align 8
  %46 = load i32, i32* @REG_GAMMA_CONTROL_3, align 4
  %47 = call i32 @ili922x_write(%struct.spi_device* %45, i32 %46, i32 772)
  %48 = load %struct.spi_device*, %struct.spi_device** %2, align 8
  %49 = load i32, i32* @REG_GAMMA_CONTROL_4, align 4
  %50 = call i32 @ili922x_write(%struct.spi_device* %48, i32 %49, i32 515)
  %51 = load %struct.spi_device*, %struct.spi_device** %2, align 8
  %52 = load i32, i32* @REG_GAMMA_CONTROL_5, align 4
  %53 = call i32 @ili922x_write(%struct.spi_device* %51, i32 %52, i32 1798)
  %54 = load %struct.spi_device*, %struct.spi_device** %2, align 8
  %55 = load i32, i32* @REG_GAMMA_CONTROL_6, align 4
  %56 = call i32 @ili922x_write(%struct.spi_device* %54, i32 %55, i32 1031)
  %57 = load %struct.spi_device*, %struct.spi_device** %2, align 8
  %58 = load i32, i32* @REG_GAMMA_CONTROL_7, align 4
  %59 = call i32 @ili922x_write(%struct.spi_device* %57, i32 %58, i32 1798)
  %60 = load %struct.spi_device*, %struct.spi_device** %2, align 8
  %61 = load i32, i32* @REG_GAMMA_CONTROL_8, align 4
  %62 = call i32 @ili922x_write(%struct.spi_device* %60, i32 %61, i32 0)
  %63 = load %struct.spi_device*, %struct.spi_device** %2, align 8
  %64 = load i32, i32* @REG_GAMMA_CONTROL_9, align 4
  %65 = call i32 @ili922x_write(%struct.spi_device* %63, i32 %64, i32 3078)
  %66 = load %struct.spi_device*, %struct.spi_device** %2, align 8
  %67 = load i32, i32* @REG_GAMMA_CONTROL_10, align 4
  %68 = call i32 @ili922x_write(%struct.spi_device* %66, i32 %67, i32 3840)
  %69 = load %struct.spi_device*, %struct.spi_device** %2, align 8
  %70 = load i32, i32* @REG_RAM_ADDRESS_SET, align 4
  %71 = call i32 @ili922x_write(%struct.spi_device* %69, i32 %70, i32 0)
  %72 = load %struct.spi_device*, %struct.spi_device** %2, align 8
  %73 = load i32, i32* @REG_GATE_SCAN_CONTROL, align 4
  %74 = call i32 @ili922x_write(%struct.spi_device* %72, i32 %73, i32 0)
  %75 = load %struct.spi_device*, %struct.spi_device** %2, align 8
  %76 = load i32, i32* @REG_VERT_SCROLL_CONTROL, align 4
  %77 = call i32 @ili922x_write(%struct.spi_device* %75, i32 %76, i32 0)
  %78 = load %struct.spi_device*, %struct.spi_device** %2, align 8
  %79 = load i32, i32* @REG_FIRST_SCREEN_DRIVE_POS, align 4
  %80 = call i32 @ili922x_write(%struct.spi_device* %78, i32 %79, i32 56064)
  %81 = load %struct.spi_device*, %struct.spi_device** %2, align 8
  %82 = load i32, i32* @REG_SECOND_SCREEN_DRIVE_POS, align 4
  %83 = call i32 @ili922x_write(%struct.spi_device* %81, i32 %82, i32 56064)
  %84 = load %struct.spi_device*, %struct.spi_device** %2, align 8
  %85 = load i32, i32* @REG_RAM_ADDR_POS_H, align 4
  %86 = call i32 @ili922x_write(%struct.spi_device* %84, i32 %85, i32 44800)
  %87 = load %struct.spi_device*, %struct.spi_device** %2, align 8
  %88 = load i32, i32* @REG_RAM_ADDR_POS_V, align 4
  %89 = call i32 @ili922x_write(%struct.spi_device* %87, i32 %88, i32 56064)
  %90 = load %struct.spi_device*, %struct.spi_device** %2, align 8
  %91 = call i32 @ili922x_reg_dump(%struct.spi_device* %90)
  %92 = load %struct.spi_device*, %struct.spi_device** %2, align 8
  %93 = call i32 @set_write_to_gram_reg(%struct.spi_device* %92)
  ret void
}

declare dso_local i32 @ili922x_write(%struct.spi_device*, i32, i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @ili922x_poweron(%struct.spi_device*) #1

declare dso_local i32 @ili922x_reg_dump(%struct.spi_device*) #1

declare dso_local i32 @set_write_to_gram_reg(%struct.spi_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
