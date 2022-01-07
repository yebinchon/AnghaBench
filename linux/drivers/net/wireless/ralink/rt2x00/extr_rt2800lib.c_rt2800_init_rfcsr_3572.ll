; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ralink/rt2x00/extr_rt2800lib.c_rt2800_init_rfcsr_3572.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ralink/rt2x00/extr_rt2800lib.c_rt2800_init_rfcsr_3572.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt2x00_dev = type { i32 }

@RFCSR6_R2 = common dso_local global i32 0, align 4
@LDO_CFG0 = common dso_local global i32 0, align 4
@LDO_CFG0_LDO_CORE_VLEVEL = common dso_local global i32 0, align 4
@LDO_CFG0_BGSEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rt2x00_dev*)* @rt2800_init_rfcsr_3572 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rt2800_init_rfcsr_3572(%struct.rt2x00_dev* %0) #0 {
  %2 = alloca %struct.rt2x00_dev*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.rt2x00_dev* %0, %struct.rt2x00_dev** %2, align 8
  %5 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %6 = call i32 @rt2800_rf_init_calibration(%struct.rt2x00_dev* %5, i32 30)
  %7 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %8 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %7, i32 0, i32 112)
  %9 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %10 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %9, i32 1, i32 129)
  %11 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %12 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %11, i32 2, i32 241)
  %13 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %14 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %13, i32 3, i32 2)
  %15 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %16 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %15, i32 4, i32 76)
  %17 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %18 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %17, i32 5, i32 5)
  %19 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %20 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %19, i32 6, i32 74)
  %21 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %22 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %21, i32 7, i32 216)
  %23 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %24 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %23, i32 9, i32 195)
  %25 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %26 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %25, i32 10, i32 241)
  %27 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %28 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %27, i32 11, i32 185)
  %29 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %30 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %29, i32 12, i32 112)
  %31 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %32 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %31, i32 13, i32 101)
  %33 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %34 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %33, i32 14, i32 160)
  %35 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %36 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %35, i32 15, i32 83)
  %37 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %38 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %37, i32 16, i32 76)
  %39 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %40 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %39, i32 17, i32 35)
  %41 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %42 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %41, i32 18, i32 172)
  %43 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %44 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %43, i32 19, i32 147)
  %45 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %46 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %45, i32 20, i32 179)
  %47 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %48 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %47, i32 21, i32 208)
  %49 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %50 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %49, i32 22, i32 0)
  %51 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %52 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %51, i32 23, i32 60)
  %53 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %54 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %53, i32 24, i32 22)
  %55 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %56 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %55, i32 25, i32 21)
  %57 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %58 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %57, i32 26, i32 133)
  %59 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %60 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %59, i32 27, i32 0)
  %61 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %62 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %61, i32 28, i32 0)
  %63 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %64 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %63, i32 29, i32 155)
  %65 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %66 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %65, i32 30, i32 9)
  %67 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %68 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %67, i32 31, i32 16)
  %69 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %70 = call i32 @rt2800_rfcsr_read(%struct.rt2x00_dev* %69, i32 6)
  store i32 %70, i32* %3, align 4
  %71 = load i32, i32* @RFCSR6_R2, align 4
  %72 = call i32 @rt2x00_set_field8(i32* %3, i32 %71, i32 1)
  %73 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %74 = load i32, i32* %3, align 4
  %75 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %73, i32 6, i32 %74)
  %76 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %77 = load i32, i32* @LDO_CFG0, align 4
  %78 = call i32 @rt2800_register_read(%struct.rt2x00_dev* %76, i32 %77)
  store i32 %78, i32* %4, align 4
  %79 = load i32, i32* @LDO_CFG0_LDO_CORE_VLEVEL, align 4
  %80 = call i32 @rt2x00_set_field32(i32* %4, i32 %79, i32 3)
  %81 = load i32, i32* @LDO_CFG0_BGSEL, align 4
  %82 = call i32 @rt2x00_set_field32(i32* %4, i32 %81, i32 1)
  %83 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %84 = load i32, i32* @LDO_CFG0, align 4
  %85 = load i32, i32* %4, align 4
  %86 = call i32 @rt2800_register_write(%struct.rt2x00_dev* %83, i32 %84, i32 %85)
  %87 = call i32 @msleep(i32 1)
  %88 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %89 = load i32, i32* @LDO_CFG0, align 4
  %90 = call i32 @rt2800_register_read(%struct.rt2x00_dev* %88, i32 %89)
  store i32 %90, i32* %4, align 4
  %91 = load i32, i32* @LDO_CFG0_LDO_CORE_VLEVEL, align 4
  %92 = call i32 @rt2x00_set_field32(i32* %4, i32 %91, i32 0)
  %93 = load i32, i32* @LDO_CFG0_BGSEL, align 4
  %94 = call i32 @rt2x00_set_field32(i32* %4, i32 %93, i32 1)
  %95 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %96 = load i32, i32* @LDO_CFG0, align 4
  %97 = load i32, i32* %4, align 4
  %98 = call i32 @rt2800_register_write(%struct.rt2x00_dev* %95, i32 %96, i32 %97)
  %99 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %100 = call i32 @rt2800_rx_filter_calibration(%struct.rt2x00_dev* %99)
  %101 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %102 = call i32 @rt2800_led_open_drain_enable(%struct.rt2x00_dev* %101)
  %103 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %104 = call i32 @rt2800_normal_mode_setup_3xxx(%struct.rt2x00_dev* %103)
  ret void
}

declare dso_local i32 @rt2800_rf_init_calibration(%struct.rt2x00_dev*, i32) #1

declare dso_local i32 @rt2800_rfcsr_write(%struct.rt2x00_dev*, i32, i32) #1

declare dso_local i32 @rt2800_rfcsr_read(%struct.rt2x00_dev*, i32) #1

declare dso_local i32 @rt2x00_set_field8(i32*, i32, i32) #1

declare dso_local i32 @rt2800_register_read(%struct.rt2x00_dev*, i32) #1

declare dso_local i32 @rt2x00_set_field32(i32*, i32, i32) #1

declare dso_local i32 @rt2800_register_write(%struct.rt2x00_dev*, i32, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @rt2800_rx_filter_calibration(%struct.rt2x00_dev*) #1

declare dso_local i32 @rt2800_led_open_drain_enable(%struct.rt2x00_dev*) #1

declare dso_local i32 @rt2800_normal_mode_setup_3xxx(%struct.rt2x00_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
