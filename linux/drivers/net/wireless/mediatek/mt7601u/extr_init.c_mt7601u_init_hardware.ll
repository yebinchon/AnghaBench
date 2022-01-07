; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt7601u/extr_init.c_mt7601u_init_hardware.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt7601u/extr_init.c_mt7601u_init_hardware.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mt7601u_dev = type { i32* }

@mt7601u_init_hardware.beacon_offsets = internal constant [16 x i32] [i32 49152, i32 49664, i32 50176, i32 50688, i32 51200, i32 51712, i32 52224, i32 52736, i32 53248, i32 53760, i32 54272, i32 54784, i32 55296, i32 55808, i32 56320, i32 56832], align 16
@MT_WPDMA_GLO_CFG = common dso_local global i32 0, align 4
@MT_WPDMA_GLO_CFG_TX_DMA_BUSY = common dso_local global i32 0, align 4
@MT_WPDMA_GLO_CFG_RX_DMA_BUSY = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@MT_MAC_STATUS = common dso_local global i32 0, align 4
@MT_MAC_STATUS_TX = common dso_local global i32 0, align 4
@MT_MAC_STATUS_RX = common dso_local global i32 0, align 4
@MT_BEACON_TIME_CFG = common dso_local global i32 0, align 4
@MT_BEACON_TIME_CFG_TIMER_EN = common dso_local global i32 0, align 4
@MT_BEACON_TIME_CFG_SYNC_MODE = common dso_local global i32 0, align 4
@MT_BEACON_TIME_CFG_TBTT_EN = common dso_local global i32 0, align 4
@MT_BEACON_TIME_CFG_BEACON_TX = common dso_local global i32 0, align 4
@MT_US_CYC_CFG = common dso_local global i32 0, align 4
@MT_US_CYC_CNT = common dso_local global i32 0, align 4
@MT_TXOP_CTRL_CFG = common dso_local global i32 0, align 4
@MT_TXOP_TRUN_EN = common dso_local global i32 0, align 4
@MT_TXOP_EXT_CCA_DLY = common dso_local global i32 0, align 4
@MT_BW_20 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mt7601u_init_hardware(%struct.mt7601u_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mt7601u_dev*, align 8
  %4 = alloca i32, align 4
  store %struct.mt7601u_dev* %0, %struct.mt7601u_dev** %3, align 8
  %5 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %3, align 8
  %6 = getelementptr inbounds %struct.mt7601u_dev, %struct.mt7601u_dev* %5, i32 0, i32 0
  store i32* getelementptr inbounds ([16 x i32], [16 x i32]* @mt7601u_init_hardware.beacon_offsets, i64 0, i64 0), i32** %6, align 8
  %7 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %3, align 8
  %8 = call i32 @mt7601u_chip_onoff(%struct.mt7601u_dev* %7, i32 1, i32 0)
  %9 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %3, align 8
  %10 = call i32 @mt7601u_wait_asic_ready(%struct.mt7601u_dev* %9)
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* %4, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  br label %148

14:                                               ; preds = %1
  %15 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %3, align 8
  %16 = call i32 @mt7601u_mcu_init(%struct.mt7601u_dev* %15)
  store i32 %16, i32* %4, align 4
  %17 = load i32, i32* %4, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %14
  br label %148

20:                                               ; preds = %14
  %21 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %3, align 8
  %22 = load i32, i32* @MT_WPDMA_GLO_CFG, align 4
  %23 = load i32, i32* @MT_WPDMA_GLO_CFG_TX_DMA_BUSY, align 4
  %24 = load i32, i32* @MT_WPDMA_GLO_CFG_RX_DMA_BUSY, align 4
  %25 = or i32 %23, %24
  %26 = call i32 @mt76_poll_msec(%struct.mt7601u_dev* %21, i32 %22, i32 %25, i32 0, i32 100)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %20
  %29 = load i32, i32* @EIO, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %4, align 4
  br label %148

31:                                               ; preds = %20
  %32 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %3, align 8
  %33 = call i32 @mt7601u_wait_asic_ready(%struct.mt7601u_dev* %32)
  store i32 %33, i32* %4, align 4
  %34 = load i32, i32* %4, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %31
  br label %148

37:                                               ; preds = %31
  %38 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %3, align 8
  %39 = call i32 @mt7601u_reset_csr_bbp(%struct.mt7601u_dev* %38)
  %40 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %3, align 8
  %41 = call i32 @mt7601u_init_usb_dma(%struct.mt7601u_dev* %40)
  %42 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %3, align 8
  %43 = call i32 @mt7601u_mcu_cmd_init(%struct.mt7601u_dev* %42)
  store i32 %43, i32* %4, align 4
  %44 = load i32, i32* %4, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %37
  br label %148

47:                                               ; preds = %37
  %48 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %3, align 8
  %49 = call i32 @mt7601u_dma_init(%struct.mt7601u_dev* %48)
  store i32 %49, i32* %4, align 4
  %50 = load i32, i32* %4, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %47
  br label %145

53:                                               ; preds = %47
  %54 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %3, align 8
  %55 = call i32 @mt7601u_write_mac_initvals(%struct.mt7601u_dev* %54)
  store i32 %55, i32* %4, align 4
  %56 = load i32, i32* %4, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %53
  br label %142

59:                                               ; preds = %53
  %60 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %3, align 8
  %61 = load i32, i32* @MT_MAC_STATUS, align 4
  %62 = load i32, i32* @MT_MAC_STATUS_TX, align 4
  %63 = load i32, i32* @MT_MAC_STATUS_RX, align 4
  %64 = or i32 %62, %63
  %65 = call i32 @mt76_poll_msec(%struct.mt7601u_dev* %60, i32 %61, i32 %64, i32 0, i32 100)
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %70, label %67

67:                                               ; preds = %59
  %68 = load i32, i32* @EIO, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %4, align 4
  br label %142

70:                                               ; preds = %59
  %71 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %3, align 8
  %72 = call i32 @mt7601u_init_bbp(%struct.mt7601u_dev* %71)
  store i32 %72, i32* %4, align 4
  %73 = load i32, i32* %4, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %70
  br label %142

76:                                               ; preds = %70
  %77 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %3, align 8
  %78 = call i32 @mt7601u_init_wcid_mem(%struct.mt7601u_dev* %77)
  store i32 %78, i32* %4, align 4
  %79 = load i32, i32* %4, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %76
  br label %142

82:                                               ; preds = %76
  %83 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %3, align 8
  %84 = call i32 @mt7601u_init_key_mem(%struct.mt7601u_dev* %83)
  store i32 %84, i32* %4, align 4
  %85 = load i32, i32* %4, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %82
  br label %142

88:                                               ; preds = %82
  %89 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %3, align 8
  %90 = call i32 @mt7601u_init_wcid_attr_mem(%struct.mt7601u_dev* %89)
  store i32 %90, i32* %4, align 4
  %91 = load i32, i32* %4, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %94

93:                                               ; preds = %88
  br label %142

94:                                               ; preds = %88
  %95 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %3, align 8
  %96 = load i32, i32* @MT_BEACON_TIME_CFG, align 4
  %97 = load i32, i32* @MT_BEACON_TIME_CFG_TIMER_EN, align 4
  %98 = load i32, i32* @MT_BEACON_TIME_CFG_SYNC_MODE, align 4
  %99 = or i32 %97, %98
  %100 = load i32, i32* @MT_BEACON_TIME_CFG_TBTT_EN, align 4
  %101 = or i32 %99, %100
  %102 = load i32, i32* @MT_BEACON_TIME_CFG_BEACON_TX, align 4
  %103 = or i32 %101, %102
  %104 = call i32 @mt76_clear(%struct.mt7601u_dev* %95, i32 %96, i32 %103)
  %105 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %3, align 8
  %106 = call i32 @mt7601u_reset_counters(%struct.mt7601u_dev* %105)
  %107 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %3, align 8
  %108 = load i32, i32* @MT_US_CYC_CFG, align 4
  %109 = load i32, i32* @MT_US_CYC_CNT, align 4
  %110 = call i32 @mt7601u_rmw(%struct.mt7601u_dev* %107, i32 %108, i32 %109, i32 30)
  %111 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %3, align 8
  %112 = load i32, i32* @MT_TXOP_CTRL_CFG, align 4
  %113 = load i32, i32* @MT_TXOP_TRUN_EN, align 4
  %114 = call i32 @FIELD_PREP(i32 %113, i32 63)
  %115 = load i32, i32* @MT_TXOP_EXT_CCA_DLY, align 4
  %116 = call i32 @FIELD_PREP(i32 %115, i32 88)
  %117 = or i32 %114, %116
  %118 = call i32 @mt7601u_wr(%struct.mt7601u_dev* %111, i32 %112, i32 %117)
  %119 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %3, align 8
  %120 = call i32 @mt7601u_eeprom_init(%struct.mt7601u_dev* %119)
  store i32 %120, i32* %4, align 4
  %121 = load i32, i32* %4, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %124

123:                                              ; preds = %94
  br label %142

124:                                              ; preds = %94
  %125 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %3, align 8
  %126 = call i32 @mt7601u_phy_init(%struct.mt7601u_dev* %125)
  store i32 %126, i32* %4, align 4
  %127 = load i32, i32* %4, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %130

129:                                              ; preds = %124
  br label %142

130:                                              ; preds = %124
  %131 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %3, align 8
  %132 = call i32 @mt7601u_set_rx_path(%struct.mt7601u_dev* %131, i32 0)
  %133 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %3, align 8
  %134 = call i32 @mt7601u_set_tx_dac(%struct.mt7601u_dev* %133, i32 0)
  %135 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %3, align 8
  %136 = call i32 @mt7601u_mac_set_ctrlch(%struct.mt7601u_dev* %135, i32 0)
  %137 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %3, align 8
  %138 = call i32 @mt7601u_bbp_set_ctrlch(%struct.mt7601u_dev* %137, i32 0)
  %139 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %3, align 8
  %140 = load i32, i32* @MT_BW_20, align 4
  %141 = call i32 @mt7601u_bbp_set_bw(%struct.mt7601u_dev* %139, i32 %140)
  store i32 0, i32* %2, align 4
  br label %152

142:                                              ; preds = %129, %123, %93, %87, %81, %75, %67, %58
  %143 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %3, align 8
  %144 = call i32 @mt7601u_dma_cleanup(%struct.mt7601u_dev* %143)
  br label %145

145:                                              ; preds = %142, %52
  %146 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %3, align 8
  %147 = call i32 @mt7601u_mcu_cmd_deinit(%struct.mt7601u_dev* %146)
  br label %148

148:                                              ; preds = %145, %46, %36, %28, %19, %13
  %149 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %3, align 8
  %150 = call i32 @mt7601u_chip_onoff(%struct.mt7601u_dev* %149, i32 0, i32 0)
  %151 = load i32, i32* %4, align 4
  store i32 %151, i32* %2, align 4
  br label %152

152:                                              ; preds = %148, %130
  %153 = load i32, i32* %2, align 4
  ret i32 %153
}

declare dso_local i32 @mt7601u_chip_onoff(%struct.mt7601u_dev*, i32, i32) #1

declare dso_local i32 @mt7601u_wait_asic_ready(%struct.mt7601u_dev*) #1

declare dso_local i32 @mt7601u_mcu_init(%struct.mt7601u_dev*) #1

declare dso_local i32 @mt76_poll_msec(%struct.mt7601u_dev*, i32, i32, i32, i32) #1

declare dso_local i32 @mt7601u_reset_csr_bbp(%struct.mt7601u_dev*) #1

declare dso_local i32 @mt7601u_init_usb_dma(%struct.mt7601u_dev*) #1

declare dso_local i32 @mt7601u_mcu_cmd_init(%struct.mt7601u_dev*) #1

declare dso_local i32 @mt7601u_dma_init(%struct.mt7601u_dev*) #1

declare dso_local i32 @mt7601u_write_mac_initvals(%struct.mt7601u_dev*) #1

declare dso_local i32 @mt7601u_init_bbp(%struct.mt7601u_dev*) #1

declare dso_local i32 @mt7601u_init_wcid_mem(%struct.mt7601u_dev*) #1

declare dso_local i32 @mt7601u_init_key_mem(%struct.mt7601u_dev*) #1

declare dso_local i32 @mt7601u_init_wcid_attr_mem(%struct.mt7601u_dev*) #1

declare dso_local i32 @mt76_clear(%struct.mt7601u_dev*, i32, i32) #1

declare dso_local i32 @mt7601u_reset_counters(%struct.mt7601u_dev*) #1

declare dso_local i32 @mt7601u_rmw(%struct.mt7601u_dev*, i32, i32, i32) #1

declare dso_local i32 @mt7601u_wr(%struct.mt7601u_dev*, i32, i32) #1

declare dso_local i32 @FIELD_PREP(i32, i32) #1

declare dso_local i32 @mt7601u_eeprom_init(%struct.mt7601u_dev*) #1

declare dso_local i32 @mt7601u_phy_init(%struct.mt7601u_dev*) #1

declare dso_local i32 @mt7601u_set_rx_path(%struct.mt7601u_dev*, i32) #1

declare dso_local i32 @mt7601u_set_tx_dac(%struct.mt7601u_dev*, i32) #1

declare dso_local i32 @mt7601u_mac_set_ctrlch(%struct.mt7601u_dev*, i32) #1

declare dso_local i32 @mt7601u_bbp_set_ctrlch(%struct.mt7601u_dev*, i32) #1

declare dso_local i32 @mt7601u_bbp_set_bw(%struct.mt7601u_dev*, i32) #1

declare dso_local i32 @mt7601u_dma_cleanup(%struct.mt7601u_dev*) #1

declare dso_local i32 @mt7601u_mcu_cmd_deinit(%struct.mt7601u_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
