; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ralink/rt2x00/extr_rt2500pci.c_rt2500pci_config_ant.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ralink/rt2x00/extr_rt2500pci.c_rt2500pci_config_ant.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt2x00_dev = type { i32 }
%struct.antenna_setup = type { i32, i32 }

@ANTENNA_SW_DIVERSITY = common dso_local global i32 0, align 4
@BBPCSR1 = common dso_local global i32 0, align 4
@BBP_R2_TX_ANTENNA = common dso_local global i32 0, align 4
@BBPCSR1_CCK = common dso_local global i32 0, align 4
@BBPCSR1_OFDM = common dso_local global i32 0, align 4
@BBP_R14_RX_ANTENNA = common dso_local global i32 0, align 4
@RF2525E = common dso_local global i32 0, align 4
@RF5222 = common dso_local global i32 0, align 4
@BBP_R2_TX_IQ_FLIP = common dso_local global i32 0, align 4
@BBPCSR1_CCK_FLIP = common dso_local global i32 0, align 4
@BBPCSR1_OFDM_FLIP = common dso_local global i32 0, align 4
@BBP_R14_RX_IQ_FLIP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rt2x00_dev*, %struct.antenna_setup*)* @rt2500pci_config_ant to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rt2500pci_config_ant(%struct.rt2x00_dev* %0, %struct.antenna_setup* %1) #0 {
  %3 = alloca %struct.rt2x00_dev*, align 8
  %4 = alloca %struct.antenna_setup*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.rt2x00_dev* %0, %struct.rt2x00_dev** %3, align 8
  store %struct.antenna_setup* %1, %struct.antenna_setup** %4, align 8
  %8 = load %struct.antenna_setup*, %struct.antenna_setup** %4, align 8
  %9 = getelementptr inbounds %struct.antenna_setup, %struct.antenna_setup* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @ANTENNA_SW_DIVERSITY, align 4
  %12 = icmp eq i32 %10, %11
  br i1 %12, label %19, label %13

13:                                               ; preds = %2
  %14 = load %struct.antenna_setup*, %struct.antenna_setup** %4, align 8
  %15 = getelementptr inbounds %struct.antenna_setup, %struct.antenna_setup* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @ANTENNA_SW_DIVERSITY, align 4
  %18 = icmp eq i32 %16, %17
  br label %19

19:                                               ; preds = %13, %2
  %20 = phi i1 [ true, %2 ], [ %18, %13 ]
  %21 = zext i1 %20 to i32
  %22 = call i32 @BUG_ON(i32 %21)
  %23 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %24 = load i32, i32* @BBPCSR1, align 4
  %25 = call i32 @rt2x00mmio_register_read(%struct.rt2x00_dev* %23, i32 %24)
  store i32 %25, i32* %5, align 4
  %26 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %27 = call i32 @rt2500pci_bbp_read(%struct.rt2x00_dev* %26, i32 14)
  store i32 %27, i32* %6, align 4
  %28 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %29 = call i32 @rt2500pci_bbp_read(%struct.rt2x00_dev* %28, i32 2)
  store i32 %29, i32* %7, align 4
  %30 = load %struct.antenna_setup*, %struct.antenna_setup** %4, align 8
  %31 = getelementptr inbounds %struct.antenna_setup, %struct.antenna_setup* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  switch i32 %32, label %41 [
    i32 129, label %33
    i32 128, label %40
  ]

33:                                               ; preds = %19
  %34 = load i32, i32* @BBP_R2_TX_ANTENNA, align 4
  %35 = call i32 @rt2x00_set_field8(i32* %7, i32 %34, i32 0)
  %36 = load i32, i32* @BBPCSR1_CCK, align 4
  %37 = call i32 @rt2x00_set_field32(i32* %5, i32 %36, i32 0)
  %38 = load i32, i32* @BBPCSR1_OFDM, align 4
  %39 = call i32 @rt2x00_set_field32(i32* %5, i32 %38, i32 0)
  br label %48

40:                                               ; preds = %19
  br label %41

41:                                               ; preds = %19, %40
  %42 = load i32, i32* @BBP_R2_TX_ANTENNA, align 4
  %43 = call i32 @rt2x00_set_field8(i32* %7, i32 %42, i32 2)
  %44 = load i32, i32* @BBPCSR1_CCK, align 4
  %45 = call i32 @rt2x00_set_field32(i32* %5, i32 %44, i32 2)
  %46 = load i32, i32* @BBPCSR1_OFDM, align 4
  %47 = call i32 @rt2x00_set_field32(i32* %5, i32 %46, i32 2)
  br label %48

48:                                               ; preds = %41, %33
  %49 = load %struct.antenna_setup*, %struct.antenna_setup** %4, align 8
  %50 = getelementptr inbounds %struct.antenna_setup, %struct.antenna_setup* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  switch i32 %51, label %56 [
    i32 129, label %52
    i32 128, label %55
  ]

52:                                               ; preds = %48
  %53 = load i32, i32* @BBP_R14_RX_ANTENNA, align 4
  %54 = call i32 @rt2x00_set_field8(i32* %6, i32 %53, i32 0)
  br label %59

55:                                               ; preds = %48
  br label %56

56:                                               ; preds = %48, %55
  %57 = load i32, i32* @BBP_R14_RX_ANTENNA, align 4
  %58 = call i32 @rt2x00_set_field8(i32* %6, i32 %57, i32 2)
  br label %59

59:                                               ; preds = %56, %52
  %60 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %61 = load i32, i32* @RF2525E, align 4
  %62 = call i64 @rt2x00_rf(%struct.rt2x00_dev* %60, i32 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %69, label %64

64:                                               ; preds = %59
  %65 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %66 = load i32, i32* @RF5222, align 4
  %67 = call i64 @rt2x00_rf(%struct.rt2x00_dev* %65, i32 %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %84

69:                                               ; preds = %64, %59
  %70 = load i32, i32* @BBP_R2_TX_IQ_FLIP, align 4
  %71 = call i32 @rt2x00_set_field8(i32* %7, i32 %70, i32 1)
  %72 = load i32, i32* @BBPCSR1_CCK_FLIP, align 4
  %73 = call i32 @rt2x00_set_field32(i32* %5, i32 %72, i32 1)
  %74 = load i32, i32* @BBPCSR1_OFDM_FLIP, align 4
  %75 = call i32 @rt2x00_set_field32(i32* %5, i32 %74, i32 1)
  %76 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %77 = load i32, i32* @RF2525E, align 4
  %78 = call i64 @rt2x00_rf(%struct.rt2x00_dev* %76, i32 %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %69
  %81 = load i32, i32* @BBP_R14_RX_IQ_FLIP, align 4
  %82 = call i32 @rt2x00_set_field8(i32* %6, i32 %81, i32 0)
  br label %83

83:                                               ; preds = %80, %69
  br label %89

84:                                               ; preds = %64
  %85 = load i32, i32* @BBPCSR1_CCK_FLIP, align 4
  %86 = call i32 @rt2x00_set_field32(i32* %5, i32 %85, i32 0)
  %87 = load i32, i32* @BBPCSR1_OFDM_FLIP, align 4
  %88 = call i32 @rt2x00_set_field32(i32* %5, i32 %87, i32 0)
  br label %89

89:                                               ; preds = %84, %83
  %90 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %91 = load i32, i32* @BBPCSR1, align 4
  %92 = load i32, i32* %5, align 4
  %93 = call i32 @rt2x00mmio_register_write(%struct.rt2x00_dev* %90, i32 %91, i32 %92)
  %94 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %95 = load i32, i32* %6, align 4
  %96 = call i32 @rt2500pci_bbp_write(%struct.rt2x00_dev* %94, i32 14, i32 %95)
  %97 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %98 = load i32, i32* %7, align 4
  %99 = call i32 @rt2500pci_bbp_write(%struct.rt2x00_dev* %97, i32 2, i32 %98)
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @rt2x00mmio_register_read(%struct.rt2x00_dev*, i32) #1

declare dso_local i32 @rt2500pci_bbp_read(%struct.rt2x00_dev*, i32) #1

declare dso_local i32 @rt2x00_set_field8(i32*, i32, i32) #1

declare dso_local i32 @rt2x00_set_field32(i32*, i32, i32) #1

declare dso_local i64 @rt2x00_rf(%struct.rt2x00_dev*, i32) #1

declare dso_local i32 @rt2x00mmio_register_write(%struct.rt2x00_dev*, i32, i32) #1

declare dso_local i32 @rt2500pci_bbp_write(%struct.rt2x00_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
