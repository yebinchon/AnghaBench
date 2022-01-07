; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ralink/rt2x00/extr_rt73usb.c_rt73usb_config_antenna_5x.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ralink/rt2x00/extr_rt73usb.c_rt73usb_config_antenna_5x.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt2x00_dev = type { i32 }
%struct.antenna_setup = type { i32 }

@BBP_R3_SMART_MODE = common dso_local global i32 0, align 4
@BBP_R4_RX_ANTENNA_CONTROL = common dso_local global i32 0, align 4
@NL80211_BAND_5GHZ = common dso_local global i32 0, align 4
@BBP_R4_RX_FRAME_END = common dso_local global i32 0, align 4
@BBP_R77_RX_ANTENNA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rt2x00_dev*, %struct.antenna_setup*)* @rt73usb_config_antenna_5x to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rt73usb_config_antenna_5x(%struct.rt2x00_dev* %0, %struct.antenna_setup* %1) #0 {
  %3 = alloca %struct.rt2x00_dev*, align 8
  %4 = alloca %struct.antenna_setup*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.rt2x00_dev* %0, %struct.rt2x00_dev** %3, align 8
  store %struct.antenna_setup* %1, %struct.antenna_setup** %4, align 8
  %9 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %10 = call i32 @rt73usb_bbp_read(%struct.rt2x00_dev* %9, i32 3)
  store i32 %10, i32* %5, align 4
  %11 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %12 = call i32 @rt73usb_bbp_read(%struct.rt2x00_dev* %11, i32 4)
  store i32 %12, i32* %6, align 4
  %13 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %14 = call i32 @rt73usb_bbp_read(%struct.rt2x00_dev* %13, i32 77)
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* @BBP_R3_SMART_MODE, align 4
  %16 = call i32 @rt2x00_set_field8(i32* %5, i32 %15, i32 0)
  %17 = load %struct.antenna_setup*, %struct.antenna_setup** %4, align 8
  %18 = getelementptr inbounds %struct.antenna_setup, %struct.antenna_setup* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  switch i32 %19, label %56 [
    i32 128, label %20
    i32 130, label %38
    i32 129, label %55
  ]

20:                                               ; preds = %2
  %21 = load i32, i32* @BBP_R4_RX_ANTENNA_CONTROL, align 4
  %22 = call i32 @rt2x00_set_field8(i32* %6, i32 %21, i32 2)
  %23 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %24 = call i32 @rt2x00_has_cap_frame_type(%struct.rt2x00_dev* %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %32, label %26

26:                                               ; preds = %20
  %27 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %28 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @NL80211_BAND_5GHZ, align 4
  %31 = icmp ne i32 %29, %30
  br label %32

32:                                               ; preds = %26, %20
  %33 = phi i1 [ false, %20 ], [ %31, %26 ]
  %34 = zext i1 %33 to i32
  store i32 %34, i32* %8, align 4
  %35 = load i32, i32* @BBP_R4_RX_FRAME_END, align 4
  %36 = load i32, i32* %8, align 4
  %37 = call i32 @rt2x00_set_field8(i32* %6, i32 %35, i32 %36)
  br label %73

38:                                               ; preds = %2
  %39 = load i32, i32* @BBP_R4_RX_ANTENNA_CONTROL, align 4
  %40 = call i32 @rt2x00_set_field8(i32* %6, i32 %39, i32 1)
  %41 = load i32, i32* @BBP_R4_RX_FRAME_END, align 4
  %42 = call i32 @rt2x00_set_field8(i32* %6, i32 %41, i32 0)
  %43 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %44 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @NL80211_BAND_5GHZ, align 4
  %47 = icmp eq i32 %45, %46
  br i1 %47, label %48, label %51

48:                                               ; preds = %38
  %49 = load i32, i32* @BBP_R77_RX_ANTENNA, align 4
  %50 = call i32 @rt2x00_set_field8(i32* %7, i32 %49, i32 0)
  br label %54

51:                                               ; preds = %38
  %52 = load i32, i32* @BBP_R77_RX_ANTENNA, align 4
  %53 = call i32 @rt2x00_set_field8(i32* %7, i32 %52, i32 3)
  br label %54

54:                                               ; preds = %51, %48
  br label %73

55:                                               ; preds = %2
  br label %56

56:                                               ; preds = %2, %55
  %57 = load i32, i32* @BBP_R4_RX_ANTENNA_CONTROL, align 4
  %58 = call i32 @rt2x00_set_field8(i32* %6, i32 %57, i32 1)
  %59 = load i32, i32* @BBP_R4_RX_FRAME_END, align 4
  %60 = call i32 @rt2x00_set_field8(i32* %6, i32 %59, i32 0)
  %61 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %62 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @NL80211_BAND_5GHZ, align 4
  %65 = icmp eq i32 %63, %64
  br i1 %65, label %66, label %69

66:                                               ; preds = %56
  %67 = load i32, i32* @BBP_R77_RX_ANTENNA, align 4
  %68 = call i32 @rt2x00_set_field8(i32* %7, i32 %67, i32 3)
  br label %72

69:                                               ; preds = %56
  %70 = load i32, i32* @BBP_R77_RX_ANTENNA, align 4
  %71 = call i32 @rt2x00_set_field8(i32* %7, i32 %70, i32 0)
  br label %72

72:                                               ; preds = %69, %66
  br label %73

73:                                               ; preds = %72, %54, %32
  %74 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %75 = load i32, i32* %7, align 4
  %76 = call i32 @rt73usb_bbp_write(%struct.rt2x00_dev* %74, i32 77, i32 %75)
  %77 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %78 = load i32, i32* %5, align 4
  %79 = call i32 @rt73usb_bbp_write(%struct.rt2x00_dev* %77, i32 3, i32 %78)
  %80 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %81 = load i32, i32* %6, align 4
  %82 = call i32 @rt73usb_bbp_write(%struct.rt2x00_dev* %80, i32 4, i32 %81)
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
