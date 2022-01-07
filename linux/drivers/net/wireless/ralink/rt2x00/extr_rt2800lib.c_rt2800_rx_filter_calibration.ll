; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ralink/rt2x00/extr_rt2800lib.c_rt2800_rx_filter_calibration.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ralink/rt2x00/extr_rt2800lib.c_rt2800_rx_filter_calibration.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt2x00_dev = type { %struct.rt2800_drv_data* }
%struct.rt2800_drv_data = type { i8*, i8*, i8*, i8* }

@RT3070 = common dso_local global i32 0, align 4
@RFCSR22_BASEBAND_LOOPBACK = common dso_local global i32 0, align 4
@BBP4_BANDWIDTH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rt2x00_dev*)* @rt2800_rx_filter_calibration to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rt2800_rx_filter_calibration(%struct.rt2x00_dev* %0) #0 {
  %2 = alloca %struct.rt2x00_dev*, align 8
  %3 = alloca %struct.rt2800_drv_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.rt2x00_dev* %0, %struct.rt2x00_dev** %2, align 8
  %8 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %9 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %8, i32 0, i32 0
  %10 = load %struct.rt2800_drv_data*, %struct.rt2800_drv_data** %9, align 8
  store %struct.rt2800_drv_data* %10, %struct.rt2800_drv_data** %3, align 8
  %11 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %12 = load i32, i32* @RT3070, align 4
  %13 = call i64 @rt2x00_rt(%struct.rt2x00_dev* %11, i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %1
  store i32 22, i32* %4, align 4
  store i32 25, i32* %5, align 4
  br label %17

16:                                               ; preds = %1
  store i32 19, i32* %4, align 4
  store i32 21, i32* %5, align 4
  br label %17

17:                                               ; preds = %16, %15
  %18 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %19 = load i32, i32* %4, align 4
  %20 = call i8* @rt2800_init_rx_filter(%struct.rt2x00_dev* %18, i32 0, i32 %19)
  %21 = load %struct.rt2800_drv_data*, %struct.rt2800_drv_data** %3, align 8
  %22 = getelementptr inbounds %struct.rt2800_drv_data, %struct.rt2800_drv_data* %21, i32 0, i32 3
  store i8* %20, i8** %22, align 8
  %23 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %24 = load i32, i32* %5, align 4
  %25 = call i8* @rt2800_init_rx_filter(%struct.rt2x00_dev* %23, i32 1, i32 %24)
  %26 = load %struct.rt2800_drv_data*, %struct.rt2800_drv_data** %3, align 8
  %27 = getelementptr inbounds %struct.rt2800_drv_data, %struct.rt2800_drv_data* %26, i32 0, i32 2
  store i8* %25, i8** %27, align 8
  %28 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %29 = call i8* @rt2800_bbp_read(%struct.rt2x00_dev* %28, i32 25)
  %30 = load %struct.rt2800_drv_data*, %struct.rt2800_drv_data** %3, align 8
  %31 = getelementptr inbounds %struct.rt2800_drv_data, %struct.rt2800_drv_data* %30, i32 0, i32 1
  store i8* %29, i8** %31, align 8
  %32 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %33 = call i8* @rt2800_bbp_read(%struct.rt2x00_dev* %32, i32 26)
  %34 = load %struct.rt2800_drv_data*, %struct.rt2800_drv_data** %3, align 8
  %35 = getelementptr inbounds %struct.rt2800_drv_data, %struct.rt2800_drv_data* %34, i32 0, i32 0
  store i8* %33, i8** %35, align 8
  %36 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %37 = call i32 @rt2800_bbp_write(%struct.rt2x00_dev* %36, i32 24, i32 0)
  %38 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %39 = call i32 @rt2800_rfcsr_read(%struct.rt2x00_dev* %38, i32 22)
  store i32 %39, i32* %6, align 4
  %40 = load i32, i32* @RFCSR22_BASEBAND_LOOPBACK, align 4
  %41 = call i32 @rt2x00_set_field8(i32* %6, i32 %40, i32 0)
  %42 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %43 = load i32, i32* %6, align 4
  %44 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %42, i32 22, i32 %43)
  %45 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %46 = call i8* @rt2800_bbp_read(%struct.rt2x00_dev* %45, i32 4)
  %47 = ptrtoint i8* %46 to i32
  store i32 %47, i32* %7, align 4
  %48 = load i32, i32* @BBP4_BANDWIDTH, align 4
  %49 = call i32 @rt2x00_set_field8(i32* %7, i32 %48, i32 0)
  %50 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %51 = load i32, i32* %7, align 4
  %52 = call i32 @rt2800_bbp_write(%struct.rt2x00_dev* %50, i32 4, i32 %51)
  ret void
}

declare dso_local i64 @rt2x00_rt(%struct.rt2x00_dev*, i32) #1

declare dso_local i8* @rt2800_init_rx_filter(%struct.rt2x00_dev*, i32, i32) #1

declare dso_local i8* @rt2800_bbp_read(%struct.rt2x00_dev*, i32) #1

declare dso_local i32 @rt2800_bbp_write(%struct.rt2x00_dev*, i32, i32) #1

declare dso_local i32 @rt2800_rfcsr_read(%struct.rt2x00_dev*, i32) #1

declare dso_local i32 @rt2x00_set_field8(i32*, i32, i32) #1

declare dso_local i32 @rt2800_rfcsr_write(%struct.rt2x00_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
