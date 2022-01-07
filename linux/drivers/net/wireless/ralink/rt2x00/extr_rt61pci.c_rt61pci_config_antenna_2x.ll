; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ralink/rt2x00/extr_rt61pci.c_rt61pci_config_antenna_2x.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ralink/rt2x00/extr_rt61pci.c_rt61pci_config_antenna_2x.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt2x00_dev = type { i32 }
%struct.antenna_setup = type { i32 }

@BBP_R3_SMART_MODE = common dso_local global i32 0, align 4
@RF2529 = common dso_local global i32 0, align 4
@BBP_R4_RX_FRAME_END = common dso_local global i32 0, align 4
@BBP_R4_RX_ANTENNA_CONTROL = common dso_local global i32 0, align 4
@BBP_R77_RX_ANTENNA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rt2x00_dev*, %struct.antenna_setup*)* @rt61pci_config_antenna_2x to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rt61pci_config_antenna_2x(%struct.rt2x00_dev* %0, %struct.antenna_setup* %1) #0 {
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
  %16 = load i32, i32* @RF2529, align 4
  %17 = call i32 @rt2x00_rf(%struct.rt2x00_dev* %15, i32 %16)
  %18 = call i32 @rt2x00_set_field8(i32* %5, i32 %14, i32 %17)
  %19 = load i32, i32* @BBP_R4_RX_FRAME_END, align 4
  %20 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %21 = call i32 @rt2x00_has_cap_frame_type(%struct.rt2x00_dev* %20)
  %22 = icmp ne i32 %21, 0
  %23 = xor i1 %22, true
  %24 = zext i1 %23 to i32
  %25 = call i32 @rt2x00_set_field8(i32* %6, i32 %19, i32 %24)
  %26 = load %struct.antenna_setup*, %struct.antenna_setup** %4, align 8
  %27 = getelementptr inbounds %struct.antenna_setup, %struct.antenna_setup* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  switch i32 %28, label %38 [
    i32 128, label %29
    i32 130, label %32
    i32 129, label %37
  ]

29:                                               ; preds = %2
  %30 = load i32, i32* @BBP_R4_RX_ANTENNA_CONTROL, align 4
  %31 = call i32 @rt2x00_set_field8(i32* %6, i32 %30, i32 2)
  br label %43

32:                                               ; preds = %2
  %33 = load i32, i32* @BBP_R4_RX_ANTENNA_CONTROL, align 4
  %34 = call i32 @rt2x00_set_field8(i32* %6, i32 %33, i32 1)
  %35 = load i32, i32* @BBP_R77_RX_ANTENNA, align 4
  %36 = call i32 @rt2x00_set_field8(i32* %7, i32 %35, i32 3)
  br label %43

37:                                               ; preds = %2
  br label %38

38:                                               ; preds = %2, %37
  %39 = load i32, i32* @BBP_R4_RX_ANTENNA_CONTROL, align 4
  %40 = call i32 @rt2x00_set_field8(i32* %6, i32 %39, i32 1)
  %41 = load i32, i32* @BBP_R77_RX_ANTENNA, align 4
  %42 = call i32 @rt2x00_set_field8(i32* %7, i32 %41, i32 0)
  br label %43

43:                                               ; preds = %38, %32, %29
  %44 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %45 = load i32, i32* %7, align 4
  %46 = call i32 @rt61pci_bbp_write(%struct.rt2x00_dev* %44, i32 77, i32 %45)
  %47 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %48 = load i32, i32* %5, align 4
  %49 = call i32 @rt61pci_bbp_write(%struct.rt2x00_dev* %47, i32 3, i32 %48)
  %50 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %51 = load i32, i32* %6, align 4
  %52 = call i32 @rt61pci_bbp_write(%struct.rt2x00_dev* %50, i32 4, i32 %51)
  ret void
}

declare dso_local i32 @rt61pci_bbp_read(%struct.rt2x00_dev*, i32) #1

declare dso_local i32 @rt2x00_set_field8(i32*, i32, i32) #1

declare dso_local i32 @rt2x00_rf(%struct.rt2x00_dev*, i32) #1

declare dso_local i32 @rt2x00_has_cap_frame_type(%struct.rt2x00_dev*) #1

declare dso_local i32 @rt61pci_bbp_write(%struct.rt2x00_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
