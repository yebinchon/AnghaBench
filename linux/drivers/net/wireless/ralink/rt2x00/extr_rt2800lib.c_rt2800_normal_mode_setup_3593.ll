; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ralink/rt2x00/extr_rt2800lib.c_rt2800_normal_mode_setup_3593.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ralink/rt2x00/extr_rt2800lib.c_rt2800_normal_mode_setup_3593.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt2x00_dev = type { %struct.rt2800_drv_data* }
%struct.rt2800_drv_data = type { i32 }

@RFCSR50_TX_LO2_EN = common dso_local global i32 0, align 4
@RFCSR17_TXMIXER_GAIN = common dso_local global i32 0, align 4
@RFCSR51_BITS24 = common dso_local global i32 0, align 4
@RFCSR38_RX_LO1_EN = common dso_local global i32 0, align 4
@RFCSR39_RX_LO2_EN = common dso_local global i32 0, align 4
@RFCSR1_RF_BLOCK_EN = common dso_local global i32 0, align 4
@RFCSR1_PLL_PD = common dso_local global i32 0, align 4
@RFCSR30_RX_VCM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rt2x00_dev*)* @rt2800_normal_mode_setup_3593 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rt2800_normal_mode_setup_3593(%struct.rt2x00_dev* %0) #0 {
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
  %10 = call i32 @rt2800_rfcsr_read(%struct.rt2x00_dev* %9, i32 50)
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* @RFCSR50_TX_LO2_EN, align 4
  %12 = call i32 @rt2x00_set_field8(i32* %4, i32 %11, i32 0)
  %13 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %14 = load i32, i32* %4, align 4
  %15 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %13, i32 50, i32 %14)
  %16 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %17 = call i32 @rt2800_rfcsr_read(%struct.rt2x00_dev* %16, i32 51)
  store i32 %17, i32* %4, align 4
  %18 = load %struct.rt2800_drv_data*, %struct.rt2800_drv_data** %3, align 8
  %19 = getelementptr inbounds %struct.rt2800_drv_data, %struct.rt2800_drv_data* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @RFCSR17_TXMIXER_GAIN, align 4
  %22 = call i32 @rt2x00_get_field8(i32 %20, i32 %21)
  store i32 %22, i32* %5, align 4
  %23 = load i32, i32* @RFCSR51_BITS24, align 4
  %24 = load i32, i32* %5, align 4
  %25 = call i32 @rt2x00_set_field8(i32* %4, i32 %23, i32 %24)
  %26 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %27 = load i32, i32* %4, align 4
  %28 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %26, i32 51, i32 %27)
  %29 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %30 = call i32 @rt2800_rfcsr_read(%struct.rt2x00_dev* %29, i32 38)
  store i32 %30, i32* %4, align 4
  %31 = load i32, i32* @RFCSR38_RX_LO1_EN, align 4
  %32 = call i32 @rt2x00_set_field8(i32* %4, i32 %31, i32 0)
  %33 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %34 = load i32, i32* %4, align 4
  %35 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %33, i32 38, i32 %34)
  %36 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %37 = call i32 @rt2800_rfcsr_read(%struct.rt2x00_dev* %36, i32 39)
  store i32 %37, i32* %4, align 4
  %38 = load i32, i32* @RFCSR39_RX_LO2_EN, align 4
  %39 = call i32 @rt2x00_set_field8(i32* %4, i32 %38, i32 0)
  %40 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %41 = load i32, i32* %4, align 4
  %42 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %40, i32 39, i32 %41)
  %43 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %44 = call i32 @rt2800_rfcsr_read(%struct.rt2x00_dev* %43, i32 1)
  store i32 %44, i32* %4, align 4
  %45 = load i32, i32* @RFCSR1_RF_BLOCK_EN, align 4
  %46 = call i32 @rt2x00_set_field8(i32* %4, i32 %45, i32 1)
  %47 = load i32, i32* @RFCSR1_PLL_PD, align 4
  %48 = call i32 @rt2x00_set_field8(i32* %4, i32 %47, i32 1)
  %49 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %50 = load i32, i32* %4, align 4
  %51 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %49, i32 1, i32 %50)
  %52 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %53 = call i32 @rt2800_rfcsr_read(%struct.rt2x00_dev* %52, i32 30)
  store i32 %53, i32* %4, align 4
  %54 = load i32, i32* @RFCSR30_RX_VCM, align 4
  %55 = call i32 @rt2x00_set_field8(i32* %4, i32 %54, i32 2)
  %56 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %57 = load i32, i32* %4, align 4
  %58 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %56, i32 30, i32 %57)
  ret void
}

declare dso_local i32 @rt2800_rfcsr_read(%struct.rt2x00_dev*, i32) #1

declare dso_local i32 @rt2x00_set_field8(i32*, i32, i32) #1

declare dso_local i32 @rt2800_rfcsr_write(%struct.rt2x00_dev*, i32, i32) #1

declare dso_local i32 @rt2x00_get_field8(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
