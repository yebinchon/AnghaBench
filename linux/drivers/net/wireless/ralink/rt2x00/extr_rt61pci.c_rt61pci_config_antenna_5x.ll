; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ralink/rt2x00/extr_rt61pci.c_rt61pci_config_antenna_5x.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ralink/rt2x00/extr_rt61pci.c_rt61pci_config_antenna_5x.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt2x00_dev = type { i32 }
%struct.antenna_setup = type { i32 }

@BBP_R3_SMART_MODE = common dso_local global i32 0, align 4
@RF5325 = common dso_local global i32 0, align 4
@BBP_R4_RX_ANTENNA_CONTROL = common dso_local global i32 0, align 4
@BBP_R4_RX_FRAME_END = common dso_local global i32 0, align 4
@NL80211_BAND_5GHZ = common dso_local global i32 0, align 4
@BBP_R77_RX_ANTENNA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rt2x00_dev*, %struct.antenna_setup*)* @rt61pci_config_antenna_5x to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rt61pci_config_antenna_5x(%struct.rt2x00_dev* %0, %struct.antenna_setup* %1) #0 {
  %3 = alloca %struct.rt2x00_dev*, align 8
  %4 = alloca %struct.antenna_setup*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.rt2x00_dev* %0, %struct.rt2x00_dev** %3, align 8
  store %struct.antenna_setup* %1, %struct.antenna_setup** %4, align 8
  %8 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %9 = call i32 @rt61pci_bbp_read(%struct.rt2x00_dev* %8, i32 3)
  store i32 %9, i32* %5, align 4
  %10 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %11 = call i32 @rt61pci_bbp_read(%struct.rt2x00_dev* %10, i32 4)
  store i32 %11, i32* %6, align 4
  %12 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %13 = call i32 @rt61pci_bbp_read(%struct.rt2x00_dev* %12, i32 77)
  store i32 %13, i32* %7, align 4
  %14 = load i32, i32* @BBP_R3_SMART_MODE, align 4
  %15 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %16 = load i32, i32* @RF5325, align 4
  %17 = call i32 @rt2x00_rf(%struct.rt2x00_dev* %15, i32 %16)
  %18 = call i32 @rt2x00_set_field8(i32* %5, i32 %14, i32 %17)
  %19 = load %struct.antenna_setup*, %struct.antenna_setup** %4, align 8
  %20 = getelementptr inbounds %struct.antenna_setup, %struct.antenna_setup* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  switch i32 %21, label %51 [
    i32 128, label %22
    i32 130, label %33
    i32 129, label %50
  ]

22:                                               ; preds = %2
  %23 = load i32, i32* @BBP_R4_RX_ANTENNA_CONTROL, align 4
  %24 = call i32 @rt2x00_set_field8(i32* %6, i32 %23, i32 2)
  %25 = load i32, i32* @BBP_R4_RX_FRAME_END, align 4
  %26 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %27 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @NL80211_BAND_5GHZ, align 4
  %30 = icmp ne i32 %28, %29
  %31 = zext i1 %30 to i32
  %32 = call i32 @rt2x00_set_field8(i32* %6, i32 %25, i32 %31)
  br label %68

33:                                               ; preds = %2
  %34 = load i32, i32* @BBP_R4_RX_ANTENNA_CONTROL, align 4
  %35 = call i32 @rt2x00_set_field8(i32* %6, i32 %34, i32 1)
  %36 = load i32, i32* @BBP_R4_RX_FRAME_END, align 4
  %37 = call i32 @rt2x00_set_field8(i32* %6, i32 %36, i32 0)
  %38 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %39 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @NL80211_BAND_5GHZ, align 4
  %42 = icmp eq i32 %40, %41
  br i1 %42, label %43, label %46

43:                                               ; preds = %33
  %44 = load i32, i32* @BBP_R77_RX_ANTENNA, align 4
  %45 = call i32 @rt2x00_set_field8(i32* %7, i32 %44, i32 0)
  br label %49

46:                                               ; preds = %33
  %47 = load i32, i32* @BBP_R77_RX_ANTENNA, align 4
  %48 = call i32 @rt2x00_set_field8(i32* %7, i32 %47, i32 3)
  br label %49

49:                                               ; preds = %46, %43
  br label %68

50:                                               ; preds = %2
  br label %51

51:                                               ; preds = %2, %50
  %52 = load i32, i32* @BBP_R4_RX_ANTENNA_CONTROL, align 4
  %53 = call i32 @rt2x00_set_field8(i32* %6, i32 %52, i32 1)
  %54 = load i32, i32* @BBP_R4_RX_FRAME_END, align 4
  %55 = call i32 @rt2x00_set_field8(i32* %6, i32 %54, i32 0)
  %56 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %57 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @NL80211_BAND_5GHZ, align 4
  %60 = icmp eq i32 %58, %59
  br i1 %60, label %61, label %64

61:                                               ; preds = %51
  %62 = load i32, i32* @BBP_R77_RX_ANTENNA, align 4
  %63 = call i32 @rt2x00_set_field8(i32* %7, i32 %62, i32 3)
  br label %67

64:                                               ; preds = %51
  %65 = load i32, i32* @BBP_R77_RX_ANTENNA, align 4
  %66 = call i32 @rt2x00_set_field8(i32* %7, i32 %65, i32 0)
  br label %67

67:                                               ; preds = %64, %61
  br label %68

68:                                               ; preds = %67, %49, %22
  %69 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %70 = load i32, i32* %7, align 4
  %71 = call i32 @rt61pci_bbp_write(%struct.rt2x00_dev* %69, i32 77, i32 %70)
  %72 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %73 = load i32, i32* %5, align 4
  %74 = call i32 @rt61pci_bbp_write(%struct.rt2x00_dev* %72, i32 3, i32 %73)
  %75 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %76 = load i32, i32* %6, align 4
  %77 = call i32 @rt61pci_bbp_write(%struct.rt2x00_dev* %75, i32 4, i32 %76)
  ret void
}

declare dso_local i32 @rt61pci_bbp_read(%struct.rt2x00_dev*, i32) #1

declare dso_local i32 @rt2x00_set_field8(i32*, i32, i32) #1

declare dso_local i32 @rt2x00_rf(%struct.rt2x00_dev*, i32) #1

declare dso_local i32 @rt61pci_bbp_write(%struct.rt2x00_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
