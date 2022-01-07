; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ralink/rt2x00/extr_rt2500usb.c_rt2500usb_config_ant.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ralink/rt2x00/extr_rt2500usb.c_rt2500usb_config_ant.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt2x00_dev = type { i32 }
%struct.antenna_setup = type { i32, i32 }

@ANTENNA_SW_DIVERSITY = common dso_local global i32 0, align 4
@PHY_CSR5 = common dso_local global i32 0, align 4
@PHY_CSR6 = common dso_local global i32 0, align 4
@BBP_R2_TX_ANTENNA = common dso_local global i32 0, align 4
@PHY_CSR5_CCK = common dso_local global i32 0, align 4
@PHY_CSR6_OFDM = common dso_local global i32 0, align 4
@BBP_R14_RX_ANTENNA = common dso_local global i32 0, align 4
@RF2525E = common dso_local global i32 0, align 4
@RF5222 = common dso_local global i32 0, align 4
@BBP_R2_TX_IQ_FLIP = common dso_local global i32 0, align 4
@PHY_CSR5_CCK_FLIP = common dso_local global i32 0, align 4
@PHY_CSR6_OFDM_FLIP = common dso_local global i32 0, align 4
@BBP_R14_RX_IQ_FLIP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rt2x00_dev*, %struct.antenna_setup*)* @rt2500usb_config_ant to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rt2500usb_config_ant(%struct.rt2x00_dev* %0, %struct.antenna_setup* %1) #0 {
  %3 = alloca %struct.rt2x00_dev*, align 8
  %4 = alloca %struct.antenna_setup*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.rt2x00_dev* %0, %struct.rt2x00_dev** %3, align 8
  store %struct.antenna_setup* %1, %struct.antenna_setup** %4, align 8
  %9 = load %struct.antenna_setup*, %struct.antenna_setup** %4, align 8
  %10 = getelementptr inbounds %struct.antenna_setup, %struct.antenna_setup* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @ANTENNA_SW_DIVERSITY, align 4
  %13 = icmp eq i32 %11, %12
  br i1 %13, label %20, label %14

14:                                               ; preds = %2
  %15 = load %struct.antenna_setup*, %struct.antenna_setup** %4, align 8
  %16 = getelementptr inbounds %struct.antenna_setup, %struct.antenna_setup* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @ANTENNA_SW_DIVERSITY, align 4
  %19 = icmp eq i32 %17, %18
  br label %20

20:                                               ; preds = %14, %2
  %21 = phi i1 [ true, %2 ], [ %19, %14 ]
  %22 = zext i1 %21 to i32
  %23 = call i32 @BUG_ON(i32 %22)
  %24 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %25 = call i32 @rt2500usb_bbp_read(%struct.rt2x00_dev* %24, i32 2)
  store i32 %25, i32* %5, align 4
  %26 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %27 = call i32 @rt2500usb_bbp_read(%struct.rt2x00_dev* %26, i32 14)
  store i32 %27, i32* %6, align 4
  %28 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %29 = load i32, i32* @PHY_CSR5, align 4
  %30 = call i32 @rt2500usb_register_read(%struct.rt2x00_dev* %28, i32 %29)
  store i32 %30, i32* %7, align 4
  %31 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %32 = load i32, i32* @PHY_CSR6, align 4
  %33 = call i32 @rt2500usb_register_read(%struct.rt2x00_dev* %31, i32 %32)
  store i32 %33, i32* %8, align 4
  %34 = load %struct.antenna_setup*, %struct.antenna_setup** %4, align 8
  %35 = getelementptr inbounds %struct.antenna_setup, %struct.antenna_setup* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  switch i32 %36, label %52 [
    i32 128, label %37
    i32 130, label %44
    i32 129, label %51
  ]

37:                                               ; preds = %20
  %38 = load i32, i32* @BBP_R2_TX_ANTENNA, align 4
  %39 = call i32 @rt2x00_set_field8(i32* %5, i32 %38, i32 1)
  %40 = load i32, i32* @PHY_CSR5_CCK, align 4
  %41 = call i32 @rt2x00_set_field16(i32* %7, i32 %40, i32 1)
  %42 = load i32, i32* @PHY_CSR6_OFDM, align 4
  %43 = call i32 @rt2x00_set_field16(i32* %8, i32 %42, i32 1)
  br label %59

44:                                               ; preds = %20
  %45 = load i32, i32* @BBP_R2_TX_ANTENNA, align 4
  %46 = call i32 @rt2x00_set_field8(i32* %5, i32 %45, i32 0)
  %47 = load i32, i32* @PHY_CSR5_CCK, align 4
  %48 = call i32 @rt2x00_set_field16(i32* %7, i32 %47, i32 0)
  %49 = load i32, i32* @PHY_CSR6_OFDM, align 4
  %50 = call i32 @rt2x00_set_field16(i32* %8, i32 %49, i32 0)
  br label %59

51:                                               ; preds = %20
  br label %52

52:                                               ; preds = %20, %51
  %53 = load i32, i32* @BBP_R2_TX_ANTENNA, align 4
  %54 = call i32 @rt2x00_set_field8(i32* %5, i32 %53, i32 2)
  %55 = load i32, i32* @PHY_CSR5_CCK, align 4
  %56 = call i32 @rt2x00_set_field16(i32* %7, i32 %55, i32 2)
  %57 = load i32, i32* @PHY_CSR6_OFDM, align 4
  %58 = call i32 @rt2x00_set_field16(i32* %8, i32 %57, i32 2)
  br label %59

59:                                               ; preds = %52, %44, %37
  %60 = load %struct.antenna_setup*, %struct.antenna_setup** %4, align 8
  %61 = getelementptr inbounds %struct.antenna_setup, %struct.antenna_setup* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  switch i32 %62, label %70 [
    i32 128, label %63
    i32 130, label %66
    i32 129, label %69
  ]

63:                                               ; preds = %59
  %64 = load i32, i32* @BBP_R14_RX_ANTENNA, align 4
  %65 = call i32 @rt2x00_set_field8(i32* %6, i32 %64, i32 1)
  br label %73

66:                                               ; preds = %59
  %67 = load i32, i32* @BBP_R14_RX_ANTENNA, align 4
  %68 = call i32 @rt2x00_set_field8(i32* %6, i32 %67, i32 0)
  br label %73

69:                                               ; preds = %59
  br label %70

70:                                               ; preds = %59, %69
  %71 = load i32, i32* @BBP_R14_RX_ANTENNA, align 4
  %72 = call i32 @rt2x00_set_field8(i32* %6, i32 %71, i32 2)
  br label %73

73:                                               ; preds = %70, %66, %63
  %74 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %75 = load i32, i32* @RF2525E, align 4
  %76 = call i64 @rt2x00_rf(%struct.rt2x00_dev* %74, i32 %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %83, label %78

78:                                               ; preds = %73
  %79 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %80 = load i32, i32* @RF5222, align 4
  %81 = call i64 @rt2x00_rf(%struct.rt2x00_dev* %79, i32 %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %98

83:                                               ; preds = %78, %73
  %84 = load i32, i32* @BBP_R2_TX_IQ_FLIP, align 4
  %85 = call i32 @rt2x00_set_field8(i32* %5, i32 %84, i32 1)
  %86 = load i32, i32* @PHY_CSR5_CCK_FLIP, align 4
  %87 = call i32 @rt2x00_set_field16(i32* %7, i32 %86, i32 1)
  %88 = load i32, i32* @PHY_CSR6_OFDM_FLIP, align 4
  %89 = call i32 @rt2x00_set_field16(i32* %8, i32 %88, i32 1)
  %90 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %91 = load i32, i32* @RF2525E, align 4
  %92 = call i64 @rt2x00_rf(%struct.rt2x00_dev* %90, i32 %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %97

94:                                               ; preds = %83
  %95 = load i32, i32* @BBP_R14_RX_IQ_FLIP, align 4
  %96 = call i32 @rt2x00_set_field8(i32* %6, i32 %95, i32 0)
  br label %97

97:                                               ; preds = %94, %83
  br label %103

98:                                               ; preds = %78
  %99 = load i32, i32* @PHY_CSR5_CCK_FLIP, align 4
  %100 = call i32 @rt2x00_set_field16(i32* %7, i32 %99, i32 0)
  %101 = load i32, i32* @PHY_CSR6_OFDM_FLIP, align 4
  %102 = call i32 @rt2x00_set_field16(i32* %8, i32 %101, i32 0)
  br label %103

103:                                              ; preds = %98, %97
  %104 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %105 = load i32, i32* %5, align 4
  %106 = call i32 @rt2500usb_bbp_write(%struct.rt2x00_dev* %104, i32 2, i32 %105)
  %107 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %108 = load i32, i32* %6, align 4
  %109 = call i32 @rt2500usb_bbp_write(%struct.rt2x00_dev* %107, i32 14, i32 %108)
  %110 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %111 = load i32, i32* @PHY_CSR5, align 4
  %112 = load i32, i32* %7, align 4
  %113 = call i32 @rt2500usb_register_write(%struct.rt2x00_dev* %110, i32 %111, i32 %112)
  %114 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %115 = load i32, i32* @PHY_CSR6, align 4
  %116 = load i32, i32* %8, align 4
  %117 = call i32 @rt2500usb_register_write(%struct.rt2x00_dev* %114, i32 %115, i32 %116)
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @rt2500usb_bbp_read(%struct.rt2x00_dev*, i32) #1

declare dso_local i32 @rt2500usb_register_read(%struct.rt2x00_dev*, i32) #1

declare dso_local i32 @rt2x00_set_field8(i32*, i32, i32) #1

declare dso_local i32 @rt2x00_set_field16(i32*, i32, i32) #1

declare dso_local i64 @rt2x00_rf(%struct.rt2x00_dev*, i32) #1

declare dso_local i32 @rt2500usb_bbp_write(%struct.rt2x00_dev*, i32, i32) #1

declare dso_local i32 @rt2500usb_register_write(%struct.rt2x00_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
