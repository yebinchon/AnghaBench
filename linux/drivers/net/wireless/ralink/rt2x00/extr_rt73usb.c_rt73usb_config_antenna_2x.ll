; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ralink/rt2x00/extr_rt73usb.c_rt73usb_config_antenna_2x.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ralink/rt2x00/extr_rt73usb.c_rt73usb_config_antenna_2x.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt2x00_dev = type { i32 }
%struct.antenna_setup = type { i32 }

@BBP_R3_SMART_MODE = common dso_local global i32 0, align 4
@BBP_R4_RX_FRAME_END = common dso_local global i32 0, align 4
@BBP_R4_RX_ANTENNA_CONTROL = common dso_local global i32 0, align 4
@BBP_R77_RX_ANTENNA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rt2x00_dev*, %struct.antenna_setup*)* @rt73usb_config_antenna_2x to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rt73usb_config_antenna_2x(%struct.rt2x00_dev* %0, %struct.antenna_setup* %1) #0 {
  %3 = alloca %struct.rt2x00_dev*, align 8
  %4 = alloca %struct.antenna_setup*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.rt2x00_dev* %0, %struct.rt2x00_dev** %3, align 8
  store %struct.antenna_setup* %1, %struct.antenna_setup** %4, align 8
  %8 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %9 = call i32 @rt73usb_bbp_read(%struct.rt2x00_dev* %8, i32 3)
  store i32 %9, i32* %5, align 4
  %10 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %11 = call i32 @rt73usb_bbp_read(%struct.rt2x00_dev* %10, i32 4)
  store i32 %11, i32* %6, align 4
  %12 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %13 = call i32 @rt73usb_bbp_read(%struct.rt2x00_dev* %12, i32 77)
  store i32 %13, i32* %7, align 4
  %14 = load i32, i32* @BBP_R3_SMART_MODE, align 4
  %15 = call i32 @rt2x00_set_field8(i32* %5, i32 %14, i32 0)
  %16 = load i32, i32* @BBP_R4_RX_FRAME_END, align 4
  %17 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %18 = call i32 @rt2x00_has_cap_frame_type(%struct.rt2x00_dev* %17)
  %19 = icmp ne i32 %18, 0
  %20 = xor i1 %19, true
  %21 = zext i1 %20 to i32
  %22 = call i32 @rt2x00_set_field8(i32* %6, i32 %16, i32 %21)
  %23 = load %struct.antenna_setup*, %struct.antenna_setup** %4, align 8
  %24 = getelementptr inbounds %struct.antenna_setup, %struct.antenna_setup* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  switch i32 %25, label %35 [
    i32 128, label %26
    i32 130, label %29
    i32 129, label %34
  ]

26:                                               ; preds = %2
  %27 = load i32, i32* @BBP_R4_RX_ANTENNA_CONTROL, align 4
  %28 = call i32 @rt2x00_set_field8(i32* %6, i32 %27, i32 2)
  br label %40

29:                                               ; preds = %2
  %30 = load i32, i32* @BBP_R77_RX_ANTENNA, align 4
  %31 = call i32 @rt2x00_set_field8(i32* %7, i32 %30, i32 3)
  %32 = load i32, i32* @BBP_R4_RX_ANTENNA_CONTROL, align 4
  %33 = call i32 @rt2x00_set_field8(i32* %6, i32 %32, i32 1)
  br label %40

34:                                               ; preds = %2
  br label %35

35:                                               ; preds = %2, %34
  %36 = load i32, i32* @BBP_R77_RX_ANTENNA, align 4
  %37 = call i32 @rt2x00_set_field8(i32* %7, i32 %36, i32 0)
  %38 = load i32, i32* @BBP_R4_RX_ANTENNA_CONTROL, align 4
  %39 = call i32 @rt2x00_set_field8(i32* %6, i32 %38, i32 1)
  br label %40

40:                                               ; preds = %35, %29, %26
  %41 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %42 = load i32, i32* %7, align 4
  %43 = call i32 @rt73usb_bbp_write(%struct.rt2x00_dev* %41, i32 77, i32 %42)
  %44 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %45 = load i32, i32* %5, align 4
  %46 = call i32 @rt73usb_bbp_write(%struct.rt2x00_dev* %44, i32 3, i32 %45)
  %47 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %48 = load i32, i32* %6, align 4
  %49 = call i32 @rt73usb_bbp_write(%struct.rt2x00_dev* %47, i32 4, i32 %48)
  ret void
}

declare dso_local i32 @rt73usb_bbp_read(%struct.rt2x00_dev*, i32) #1

declare dso_local i32 @rt2x00_set_field8(i32*, i32, i32) #1

declare dso_local i32 @rt2x00_has_cap_frame_type(%struct.rt2x00_dev*) #1

declare dso_local i32 @rt73usb_bbp_write(%struct.rt2x00_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
