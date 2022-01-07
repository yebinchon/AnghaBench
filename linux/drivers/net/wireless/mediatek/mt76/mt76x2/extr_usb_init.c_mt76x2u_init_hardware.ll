; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/mt76x2/extr_usb_init.c_mt76x2u_init_hardware.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/mt76x2/extr_usb_init.c_mt76x2u_init_hardware.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mt76x02_dev = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }

@ETIMEDOUT = common dso_local global i32 0, align 4
@MT_WPDMA_GLO_CFG = common dso_local global i32 0, align 4
@MT_WPDMA_GLO_CFG_TX_DMA_BUSY = common dso_local global i32 0, align 4
@MT_WPDMA_GLO_CFG_RX_DMA_BUSY = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@MT_EE_MAC_ADDR = common dso_local global i64 0, align 8
@MT_RX_FILTR_CFG = common dso_local global i32 0, align 4
@MT_US_CYC_CFG = common dso_local global i32 0, align 4
@MT_US_CYC_CNT = common dso_local global i32 0, align 4
@MT_TXOP_CTRL_CFG = common dso_local global i32 0, align 4
@MT_RF_BBP_CR = common dso_local global i32 0, align 4
@MT_CH_TIME_CFG = common dso_local global i32 0, align 4
@MT_CH_TIME_CFG_TIMER_EN = common dso_local global i32 0, align 4
@MT_CH_TIME_CFG_TX_AS_BUSY = common dso_local global i32 0, align 4
@MT_CH_TIME_CFG_RX_AS_BUSY = common dso_local global i32 0, align 4
@MT_CH_TIME_CFG_NAV_AS_BUSY = common dso_local global i32 0, align 4
@MT_CH_TIME_CFG_EIFS_AS_BUSY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mt76x2u_init_hardware(%struct.mt76x02_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mt76x02_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.mt76x02_dev* %0, %struct.mt76x02_dev** %3, align 8
  %7 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %8 = call i32 @mt76x2_reset_wlan(%struct.mt76x02_dev* %7, i32 1)
  %9 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %10 = call i32 @mt76x2u_power_on(%struct.mt76x02_dev* %9)
  %11 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %12 = getelementptr inbounds %struct.mt76x02_dev, %struct.mt76x02_dev* %11, i32 0, i32 0
  %13 = call i32 @mt76x02_wait_for_mac(%struct.TYPE_5__* %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %1
  %16 = load i32, i32* @ETIMEDOUT, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %150

18:                                               ; preds = %1
  %19 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %20 = call i32 @mt76x2u_mcu_fw_init(%struct.mt76x02_dev* %19)
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* %6, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %18
  %24 = load i32, i32* %6, align 4
  store i32 %24, i32* %2, align 4
  br label %150

25:                                               ; preds = %18
  %26 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %27 = load i32, i32* @MT_WPDMA_GLO_CFG, align 4
  %28 = load i32, i32* @MT_WPDMA_GLO_CFG_TX_DMA_BUSY, align 4
  %29 = load i32, i32* @MT_WPDMA_GLO_CFG_RX_DMA_BUSY, align 4
  %30 = or i32 %28, %29
  %31 = call i32 @mt76_poll_msec(%struct.mt76x02_dev* %26, i32 %27, i32 %30, i32 0, i32 100)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %36, label %33

33:                                               ; preds = %25
  %34 = load i32, i32* @EIO, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %2, align 4
  br label %150

36:                                               ; preds = %25
  %37 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %38 = getelementptr inbounds %struct.mt76x02_dev, %struct.mt76x02_dev* %37, i32 0, i32 0
  %39 = call i32 @mt76x02_wait_for_mac(%struct.TYPE_5__* %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %44, label %41

41:                                               ; preds = %36
  %42 = load i32, i32* @ETIMEDOUT, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %2, align 4
  br label %150

44:                                               ; preds = %36
  %45 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %46 = call i32 @mt76x2u_init_dma(%struct.mt76x02_dev* %45)
  %47 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %48 = call i32 @mt76x2u_mcu_init(%struct.mt76x02_dev* %47)
  store i32 %48, i32* %6, align 4
  %49 = load i32, i32* %6, align 4
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %44
  %52 = load i32, i32* %6, align 4
  store i32 %52, i32* %2, align 4
  br label %150

53:                                               ; preds = %44
  %54 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %55 = call i32 @mt76x2u_mac_reset(%struct.mt76x02_dev* %54)
  store i32 %55, i32* %6, align 4
  %56 = load i32, i32* %6, align 4
  %57 = icmp slt i32 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %53
  %59 = load i32, i32* %6, align 4
  store i32 %59, i32* %2, align 4
  br label %150

60:                                               ; preds = %53
  %61 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %62 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %63 = getelementptr inbounds %struct.mt76x02_dev, %struct.mt76x02_dev* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @MT_EE_MAC_ADDR, align 8
  %68 = add nsw i64 %66, %67
  %69 = call i32 @mt76x02_mac_setaddr(%struct.mt76x02_dev* %61, i64 %68)
  %70 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %71 = load i32, i32* @MT_RX_FILTR_CFG, align 4
  %72 = call i32 @mt76_rr(%struct.mt76x02_dev* %70, i32 %71)
  %73 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %74 = getelementptr inbounds %struct.mt76x02_dev, %struct.mt76x02_dev* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 0
  store i32 %72, i32* %75, align 8
  %76 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %77 = getelementptr inbounds %struct.mt76x02_dev, %struct.mt76x02_dev* %76, i32 0, i32 0
  %78 = call i32 @mt76x02_wait_for_txrx_idle(%struct.TYPE_5__* %77)
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %83, label %80

80:                                               ; preds = %60
  %81 = load i32, i32* @ETIMEDOUT, align 4
  %82 = sub nsw i32 0, %81
  store i32 %82, i32* %2, align 4
  br label %150

83:                                               ; preds = %60
  store i32 0, i32* %4, align 4
  br label %84

84:                                               ; preds = %91, %83
  %85 = load i32, i32* %4, align 4
  %86 = icmp slt i32 %85, 256
  br i1 %86, label %87, label %94

87:                                               ; preds = %84
  %88 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %89 = load i32, i32* %4, align 4
  %90 = call i32 @mt76x02_mac_wcid_setup(%struct.mt76x02_dev* %88, i32 %89, i32 0, i32* null)
  br label %91

91:                                               ; preds = %87
  %92 = load i32, i32* %4, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %4, align 4
  br label %84

94:                                               ; preds = %84
  store i32 0, i32* %4, align 4
  br label %95

95:                                               ; preds = %111, %94
  %96 = load i32, i32* %4, align 4
  %97 = icmp slt i32 %96, 16
  br i1 %97, label %98, label %114

98:                                               ; preds = %95
  store i32 0, i32* %5, align 4
  br label %99

99:                                               ; preds = %107, %98
  %100 = load i32, i32* %5, align 4
  %101 = icmp slt i32 %100, 4
  br i1 %101, label %102, label %110

102:                                              ; preds = %99
  %103 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %104 = load i32, i32* %4, align 4
  %105 = load i32, i32* %5, align 4
  %106 = call i32 @mt76x02_mac_shared_key_setup(%struct.mt76x02_dev* %103, i32 %104, i32 %105, i32* null)
  br label %107

107:                                              ; preds = %102
  %108 = load i32, i32* %5, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %5, align 4
  br label %99

110:                                              ; preds = %99
  br label %111

111:                                              ; preds = %110
  %112 = load i32, i32* %4, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %4, align 4
  br label %95

114:                                              ; preds = %95
  %115 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %116 = call i32 @mt76x02u_init_beacon_config(%struct.mt76x02_dev* %115)
  %117 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %118 = load i32, i32* @MT_US_CYC_CFG, align 4
  %119 = load i32, i32* @MT_US_CYC_CNT, align 4
  %120 = call i32 @mt76_rmw(%struct.mt76x02_dev* %117, i32 %118, i32 %119, i32 30)
  %121 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %122 = load i32, i32* @MT_TXOP_CTRL_CFG, align 4
  %123 = call i32 @mt76_wr(%struct.mt76x02_dev* %121, i32 %122, i32 22591)
  %124 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %125 = load i32, i32* @MT_RF_BBP_CR, align 4
  %126 = call i32 @mt76x2_mcu_load_cr(%struct.mt76x02_dev* %124, i32 %125, i32 0, i32 0)
  store i32 %126, i32* %6, align 4
  %127 = load i32, i32* %6, align 4
  %128 = icmp slt i32 %127, 0
  br i1 %128, label %129, label %131

129:                                              ; preds = %114
  %130 = load i32, i32* %6, align 4
  store i32 %130, i32* %2, align 4
  br label %150

131:                                              ; preds = %114
  %132 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %133 = call i32 @mt76x02_phy_set_rxpath(%struct.mt76x02_dev* %132)
  %134 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %135 = call i32 @mt76x02_phy_set_txdac(%struct.mt76x02_dev* %134)
  %136 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %137 = load i32, i32* @MT_CH_TIME_CFG, align 4
  %138 = load i32, i32* @MT_CH_TIME_CFG_TIMER_EN, align 4
  %139 = load i32, i32* @MT_CH_TIME_CFG_TX_AS_BUSY, align 4
  %140 = or i32 %138, %139
  %141 = load i32, i32* @MT_CH_TIME_CFG_RX_AS_BUSY, align 4
  %142 = or i32 %140, %141
  %143 = load i32, i32* @MT_CH_TIME_CFG_NAV_AS_BUSY, align 4
  %144 = or i32 %142, %143
  %145 = load i32, i32* @MT_CH_TIME_CFG_EIFS_AS_BUSY, align 4
  %146 = or i32 %144, %145
  %147 = call i32 @mt76_wr(%struct.mt76x02_dev* %136, i32 %137, i32 %146)
  %148 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %149 = call i32 @mt76x2u_mac_stop(%struct.mt76x02_dev* %148)
  store i32 %149, i32* %2, align 4
  br label %150

150:                                              ; preds = %131, %129, %80, %58, %51, %41, %33, %23, %15
  %151 = load i32, i32* %2, align 4
  ret i32 %151
}

declare dso_local i32 @mt76x2_reset_wlan(%struct.mt76x02_dev*, i32) #1

declare dso_local i32 @mt76x2u_power_on(%struct.mt76x02_dev*) #1

declare dso_local i32 @mt76x02_wait_for_mac(%struct.TYPE_5__*) #1

declare dso_local i32 @mt76x2u_mcu_fw_init(%struct.mt76x02_dev*) #1

declare dso_local i32 @mt76_poll_msec(%struct.mt76x02_dev*, i32, i32, i32, i32) #1

declare dso_local i32 @mt76x2u_init_dma(%struct.mt76x02_dev*) #1

declare dso_local i32 @mt76x2u_mcu_init(%struct.mt76x02_dev*) #1

declare dso_local i32 @mt76x2u_mac_reset(%struct.mt76x02_dev*) #1

declare dso_local i32 @mt76x02_mac_setaddr(%struct.mt76x02_dev*, i64) #1

declare dso_local i32 @mt76_rr(%struct.mt76x02_dev*, i32) #1

declare dso_local i32 @mt76x02_wait_for_txrx_idle(%struct.TYPE_5__*) #1

declare dso_local i32 @mt76x02_mac_wcid_setup(%struct.mt76x02_dev*, i32, i32, i32*) #1

declare dso_local i32 @mt76x02_mac_shared_key_setup(%struct.mt76x02_dev*, i32, i32, i32*) #1

declare dso_local i32 @mt76x02u_init_beacon_config(%struct.mt76x02_dev*) #1

declare dso_local i32 @mt76_rmw(%struct.mt76x02_dev*, i32, i32, i32) #1

declare dso_local i32 @mt76_wr(%struct.mt76x02_dev*, i32, i32) #1

declare dso_local i32 @mt76x2_mcu_load_cr(%struct.mt76x02_dev*, i32, i32, i32) #1

declare dso_local i32 @mt76x02_phy_set_rxpath(%struct.mt76x02_dev*) #1

declare dso_local i32 @mt76x02_phy_set_txdac(%struct.mt76x02_dev*) #1

declare dso_local i32 @mt76x2u_mac_stop(%struct.mt76x02_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
