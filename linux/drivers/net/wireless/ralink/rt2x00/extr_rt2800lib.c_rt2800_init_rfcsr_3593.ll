; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ralink/rt2x00/extr_rt2800lib.c_rt2800_init_rfcsr_3593.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ralink/rt2x00/extr_rt2800lib.c_rt2800_init_rfcsr_3593.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt2x00_dev = type { %struct.rt2800_drv_data* }
%struct.rt2800_drv_data = type { i32, i32, i8*, i8* }

@GPIO_SWITCH = common dso_local global i32 0, align 4
@GPIO_SWITCH_4 = common dso_local global i32 0, align 4
@GPIO_SWITCH_7 = common dso_local global i32 0, align 4
@RFCSR2_RESCAL_EN = common dso_local global i32 0, align 4
@RFCSR18_XO_TUNE_BYPASS = common dso_local global i32 0, align 4
@LDO_CFG0 = common dso_local global i32 0, align 4
@LDO_CFG0_LDO_CORE_VLEVEL = common dso_local global i32 0, align 4
@LDO_CFG0_BGSEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rt2x00_dev*)* @rt2800_init_rfcsr_3593 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rt2800_init_rfcsr_3593(%struct.rt2x00_dev* %0) #0 {
  %2 = alloca %struct.rt2x00_dev*, align 8
  %3 = alloca %struct.rt2800_drv_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.rt2x00_dev* %0, %struct.rt2x00_dev** %2, align 8
  %6 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %7 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %6, i32 0, i32 0
  %8 = load %struct.rt2800_drv_data*, %struct.rt2800_drv_data** %7, align 8
  store %struct.rt2800_drv_data* %8, %struct.rt2800_drv_data** %3, align 8
  %9 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %10 = load i32, i32* @GPIO_SWITCH, align 4
  %11 = call i32 @rt2800_register_read(%struct.rt2x00_dev* %9, i32 %10)
  store i32 %11, i32* %4, align 4
  %12 = load i32, i32* @GPIO_SWITCH_4, align 4
  %13 = call i32 @rt2x00_set_field32(i32* %4, i32 %12, i32 0)
  %14 = load i32, i32* @GPIO_SWITCH_7, align 4
  %15 = call i32 @rt2x00_set_field32(i32* %4, i32 %14, i32 0)
  %16 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %17 = load i32, i32* @GPIO_SWITCH, align 4
  %18 = load i32, i32* %4, align 4
  %19 = call i32 @rt2800_register_write(%struct.rt2x00_dev* %16, i32 %17, i32 %18)
  %20 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %21 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %20, i32 1, i32 3)
  %22 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %23 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %22, i32 3, i32 128)
  %24 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %25 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %24, i32 5, i32 0)
  %26 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %27 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %26, i32 6, i32 64)
  %28 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %29 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %28, i32 8, i32 241)
  %30 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %31 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %30, i32 9, i32 2)
  %32 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %33 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %32, i32 10, i32 211)
  %34 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %35 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %34, i32 11, i32 64)
  %36 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %37 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %36, i32 12, i32 78)
  %38 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %39 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %38, i32 13, i32 18)
  %40 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %41 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %40, i32 18, i32 64)
  %42 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %43 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %42, i32 22, i32 32)
  %44 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %45 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %44, i32 30, i32 16)
  %46 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %47 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %46, i32 31, i32 128)
  %48 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %49 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %48, i32 32, i32 120)
  %50 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %51 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %50, i32 33, i32 59)
  %52 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %53 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %52, i32 34, i32 60)
  %54 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %55 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %54, i32 35, i32 224)
  %56 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %57 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %56, i32 38, i32 134)
  %58 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %59 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %58, i32 39, i32 35)
  %60 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %61 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %60, i32 44, i32 211)
  %62 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %63 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %62, i32 45, i32 187)
  %64 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %65 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %64, i32 46, i32 96)
  %66 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %67 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %66, i32 49, i32 142)
  %68 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %69 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %68, i32 50, i32 134)
  %70 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %71 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %70, i32 51, i32 117)
  %72 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %73 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %72, i32 52, i32 69)
  %74 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %75 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %74, i32 53, i32 24)
  %76 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %77 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %76, i32 54, i32 24)
  %78 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %79 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %78, i32 55, i32 24)
  %80 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %81 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %80, i32 56, i32 219)
  %82 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %83 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %82, i32 57, i32 110)
  %84 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %85 = call i32 @rt2800_rfcsr_read(%struct.rt2x00_dev* %84, i32 2)
  store i32 %85, i32* %5, align 4
  %86 = load i32, i32* @RFCSR2_RESCAL_EN, align 4
  %87 = call i32 @rt2x00_set_field8(i32* %5, i32 %86, i32 1)
  %88 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %89 = load i32, i32* %5, align 4
  %90 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %88, i32 2, i32 %89)
  %91 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %92 = call i32 @rt2800_freq_cal_mode1(%struct.rt2x00_dev* %91)
  %93 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %94 = call i32 @rt2800_rfcsr_read(%struct.rt2x00_dev* %93, i32 18)
  store i32 %94, i32* %5, align 4
  %95 = load i32, i32* @RFCSR18_XO_TUNE_BYPASS, align 4
  %96 = call i32 @rt2x00_set_field8(i32* %5, i32 %95, i32 1)
  %97 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %98 = load i32, i32* %5, align 4
  %99 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %97, i32 18, i32 %98)
  %100 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %101 = load i32, i32* @LDO_CFG0, align 4
  %102 = call i32 @rt2800_register_read(%struct.rt2x00_dev* %100, i32 %101)
  store i32 %102, i32* %4, align 4
  %103 = load i32, i32* @LDO_CFG0_LDO_CORE_VLEVEL, align 4
  %104 = call i32 @rt2x00_set_field32(i32* %4, i32 %103, i32 3)
  %105 = load i32, i32* @LDO_CFG0_BGSEL, align 4
  %106 = call i32 @rt2x00_set_field32(i32* %4, i32 %105, i32 1)
  %107 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %108 = load i32, i32* @LDO_CFG0, align 4
  %109 = load i32, i32* %4, align 4
  %110 = call i32 @rt2800_register_write(%struct.rt2x00_dev* %107, i32 %108, i32 %109)
  %111 = call i32 @usleep_range(i32 1000, i32 1500)
  %112 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %113 = load i32, i32* @LDO_CFG0, align 4
  %114 = call i32 @rt2800_register_read(%struct.rt2x00_dev* %112, i32 %113)
  store i32 %114, i32* %4, align 4
  %115 = load i32, i32* @LDO_CFG0_LDO_CORE_VLEVEL, align 4
  %116 = call i32 @rt2x00_set_field32(i32* %4, i32 %115, i32 0)
  %117 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %118 = load i32, i32* @LDO_CFG0, align 4
  %119 = load i32, i32* %4, align 4
  %120 = call i32 @rt2800_register_write(%struct.rt2x00_dev* %117, i32 %118, i32 %119)
  %121 = load %struct.rt2800_drv_data*, %struct.rt2800_drv_data** %3, align 8
  %122 = getelementptr inbounds %struct.rt2800_drv_data, %struct.rt2800_drv_data* %121, i32 0, i32 0
  store i32 31, i32* %122, align 8
  %123 = load %struct.rt2800_drv_data*, %struct.rt2800_drv_data** %3, align 8
  %124 = getelementptr inbounds %struct.rt2800_drv_data, %struct.rt2800_drv_data* %123, i32 0, i32 1
  store i32 47, i32* %124, align 4
  %125 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %126 = call i8* @rt2800_bbp_read(%struct.rt2x00_dev* %125, i32 25)
  %127 = load %struct.rt2800_drv_data*, %struct.rt2800_drv_data** %3, align 8
  %128 = getelementptr inbounds %struct.rt2800_drv_data, %struct.rt2800_drv_data* %127, i32 0, i32 3
  store i8* %126, i8** %128, align 8
  %129 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %130 = call i8* @rt2800_bbp_read(%struct.rt2x00_dev* %129, i32 26)
  %131 = load %struct.rt2800_drv_data*, %struct.rt2800_drv_data** %3, align 8
  %132 = getelementptr inbounds %struct.rt2800_drv_data, %struct.rt2800_drv_data* %131, i32 0, i32 2
  store i8* %130, i8** %132, align 8
  %133 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %134 = call i32 @rt2800_led_open_drain_enable(%struct.rt2x00_dev* %133)
  %135 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %136 = call i32 @rt2800_normal_mode_setup_3593(%struct.rt2x00_dev* %135)
  %137 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %138 = call i32 @rt3593_post_bbp_init(%struct.rt2x00_dev* %137)
  ret void
}

declare dso_local i32 @rt2800_register_read(%struct.rt2x00_dev*, i32) #1

declare dso_local i32 @rt2x00_set_field32(i32*, i32, i32) #1

declare dso_local i32 @rt2800_register_write(%struct.rt2x00_dev*, i32, i32) #1

declare dso_local i32 @rt2800_rfcsr_write(%struct.rt2x00_dev*, i32, i32) #1

declare dso_local i32 @rt2800_rfcsr_read(%struct.rt2x00_dev*, i32) #1

declare dso_local i32 @rt2x00_set_field8(i32*, i32, i32) #1

declare dso_local i32 @rt2800_freq_cal_mode1(%struct.rt2x00_dev*) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i8* @rt2800_bbp_read(%struct.rt2x00_dev*, i32) #1

declare dso_local i32 @rt2800_led_open_drain_enable(%struct.rt2x00_dev*) #1

declare dso_local i32 @rt2800_normal_mode_setup_3593(%struct.rt2x00_dev*) #1

declare dso_local i32 @rt3593_post_bbp_init(%struct.rt2x00_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
