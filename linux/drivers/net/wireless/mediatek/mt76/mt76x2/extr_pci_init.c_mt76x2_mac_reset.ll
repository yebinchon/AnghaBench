; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/mt76x2/extr_pci_init.c_mt76x2_mac_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/mt76x2/extr_pci_init.c_mt76x2_mac_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mt76x02_dev = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32* }

@ETIMEDOUT = common dso_local global i32 0, align 4
@MT_WPDMA_GLO_CFG = common dso_local global i64 0, align 8
@MT_WPDMA_GLO_CFG_TX_DMA_EN = common dso_local global i32 0, align 4
@MT_WPDMA_GLO_CFG_TX_DMA_BUSY = common dso_local global i32 0, align 4
@MT_WPDMA_GLO_CFG_RX_DMA_EN = common dso_local global i32 0, align 4
@MT_WPDMA_GLO_CFG_RX_DMA_BUSY = common dso_local global i32 0, align 4
@MT_WPDMA_GLO_CFG_DMA_BURST_SIZE = common dso_local global i32 0, align 4
@MT_MAC_SYS_CTRL = common dso_local global i32 0, align 4
@MT_MAC_SYS_CTRL_RESET_CSR = common dso_local global i32 0, align 4
@MT_MAC_SYS_CTRL_RESET_BBP = common dso_local global i32 0, align 4
@MT_COEXCFG0 = common dso_local global i32 0, align 4
@MT_COEXCFG0_COEX_EN = common dso_local global i32 0, align 4
@MT_EXT_CCA_CFG = common dso_local global i32 0, align 4
@MT_TX_ALC_CFG_4 = common dso_local global i32 0, align 4
@MT_RF_BYPASS_0 = common dso_local global i64 0, align 8
@MT_RF_SETTING_0 = common dso_local global i64 0, align 8
@MT_MCU_CLOCK_CTL = common dso_local global i64 0, align 8
@MT_FCE_L2_STUFF = common dso_local global i32 0, align 4
@MT_FCE_L2_STUFF_WR_MPDU_LEN_EN = common dso_local global i32 0, align 4
@MT_WCID_DROP_BASE = common dso_local global i64 0, align 8
@MT_MAX_VIFS = common dso_local global i32 0, align 4
@MT_TX_STAT_FIFO = common dso_local global i64 0, align 8
@MT_CH_TIME_CFG = common dso_local global i64 0, align 8
@MT_CH_TIME_CFG_TIMER_EN = common dso_local global i32 0, align 4
@MT_CH_TIME_CFG_TX_AS_BUSY = common dso_local global i32 0, align 4
@MT_CH_TIME_CFG_RX_AS_BUSY = common dso_local global i32 0, align 4
@MT_CH_TIME_CFG_NAV_AS_BUSY = common dso_local global i32 0, align 4
@MT_CH_TIME_CFG_EIFS_AS_BUSY = common dso_local global i32 0, align 4
@MT_CH_CCA_RC_EN = common dso_local global i32 0, align 4
@MT_CH_TIME_CFG_CH_TIMER_CLR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mt76x2_mac_reset(%struct.mt76x02_dev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mt76x02_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.mt76x02_dev* %0, %struct.mt76x02_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %4, align 8
  %11 = getelementptr inbounds %struct.mt76x02_dev, %struct.mt76x02_dev* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32*, i32** %12, align 8
  store i32* %13, i32** %6, align 8
  %14 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %4, align 8
  %15 = getelementptr inbounds %struct.mt76x02_dev, %struct.mt76x02_dev* %14, i32 0, i32 0
  %16 = call i32 @mt76x02_wait_for_mac(%struct.TYPE_2__* %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %2
  %19 = load i32, i32* @ETIMEDOUT, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %198

21:                                               ; preds = %2
  %22 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %4, align 8
  %23 = load i64, i64* @MT_WPDMA_GLO_CFG, align 8
  %24 = call i32 @mt76_rr(%struct.mt76x02_dev* %22, i64 %23)
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* @MT_WPDMA_GLO_CFG_TX_DMA_EN, align 4
  %26 = load i32, i32* @MT_WPDMA_GLO_CFG_TX_DMA_BUSY, align 4
  %27 = or i32 %25, %26
  %28 = load i32, i32* @MT_WPDMA_GLO_CFG_RX_DMA_EN, align 4
  %29 = or i32 %27, %28
  %30 = load i32, i32* @MT_WPDMA_GLO_CFG_RX_DMA_BUSY, align 4
  %31 = or i32 %29, %30
  %32 = load i32, i32* @MT_WPDMA_GLO_CFG_DMA_BURST_SIZE, align 4
  %33 = or i32 %31, %32
  %34 = xor i32 %33, -1
  %35 = load i32, i32* %7, align 4
  %36 = and i32 %35, %34
  store i32 %36, i32* %7, align 4
  %37 = load i32, i32* @MT_WPDMA_GLO_CFG_DMA_BURST_SIZE, align 4
  %38 = call i32 @FIELD_PREP(i32 %37, i32 3)
  %39 = load i32, i32* %7, align 4
  %40 = or i32 %39, %38
  store i32 %40, i32* %7, align 4
  %41 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %4, align 8
  %42 = load i64, i64* @MT_WPDMA_GLO_CFG, align 8
  %43 = load i32, i32* %7, align 4
  %44 = call i32 @mt76_wr(%struct.mt76x02_dev* %41, i64 %42, i32 %43)
  %45 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %4, align 8
  %46 = call i32 @mt76x2_mac_pbf_init(%struct.mt76x02_dev* %45)
  %47 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %4, align 8
  %48 = call i32 @mt76_write_mac_initvals(%struct.mt76x02_dev* %47)
  %49 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %4, align 8
  %50 = call i32 @mt76x2_fixup_xtal(%struct.mt76x02_dev* %49)
  %51 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %4, align 8
  %52 = load i32, i32* @MT_MAC_SYS_CTRL, align 4
  %53 = load i32, i32* @MT_MAC_SYS_CTRL_RESET_CSR, align 4
  %54 = load i32, i32* @MT_MAC_SYS_CTRL_RESET_BBP, align 4
  %55 = or i32 %53, %54
  %56 = call i32 @mt76_clear(%struct.mt76x02_dev* %51, i32 %52, i32 %55)
  %57 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %4, align 8
  %58 = call i64 @is_mt7612(%struct.mt76x02_dev* %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %65

60:                                               ; preds = %21
  %61 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %4, align 8
  %62 = load i32, i32* @MT_COEXCFG0, align 4
  %63 = load i32, i32* @MT_COEXCFG0_COEX_EN, align 4
  %64 = call i32 @mt76_clear(%struct.mt76x02_dev* %61, i32 %62, i32 %63)
  br label %65

65:                                               ; preds = %60, %21
  %66 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %4, align 8
  %67 = load i32, i32* @MT_EXT_CCA_CFG, align 4
  %68 = call i32 @mt76_set(%struct.mt76x02_dev* %66, i32 %67, i32 61440)
  %69 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %4, align 8
  %70 = load i32, i32* @MT_TX_ALC_CFG_4, align 4
  %71 = call i32 @BIT(i32 31)
  %72 = call i32 @mt76_clear(%struct.mt76x02_dev* %69, i32 %70, i32 %71)
  %73 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %4, align 8
  %74 = load i64, i64* @MT_RF_BYPASS_0, align 8
  %75 = call i32 @mt76_wr(%struct.mt76x02_dev* %73, i64 %74, i32 100663296)
  %76 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %4, align 8
  %77 = load i64, i64* @MT_RF_SETTING_0, align 8
  %78 = call i32 @mt76_wr(%struct.mt76x02_dev* %76, i64 %77, i32 142606336)
  %79 = call i32 @usleep_range(i32 5000, i32 10000)
  %80 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %4, align 8
  %81 = load i64, i64* @MT_RF_BYPASS_0, align 8
  %82 = call i32 @mt76_wr(%struct.mt76x02_dev* %80, i64 %81, i32 0)
  %83 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %4, align 8
  %84 = load i64, i64* @MT_MCU_CLOCK_CTL, align 8
  %85 = call i32 @mt76_wr(%struct.mt76x02_dev* %83, i64 %84, i32 5121)
  %86 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %4, align 8
  %87 = load i32, i32* @MT_FCE_L2_STUFF, align 4
  %88 = load i32, i32* @MT_FCE_L2_STUFF_WR_MPDU_LEN_EN, align 4
  %89 = call i32 @mt76_clear(%struct.mt76x02_dev* %86, i32 %87, i32 %88)
  %90 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %4, align 8
  %91 = load i32*, i32** %6, align 8
  %92 = call i32 @mt76x02_mac_setaddr(%struct.mt76x02_dev* %90, i32* %91)
  %93 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %4, align 8
  %94 = call i32 @mt76x02e_init_beacon_config(%struct.mt76x02_dev* %93)
  %95 = load i32, i32* %5, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %98, label %97

97:                                               ; preds = %65
  store i32 0, i32* %3, align 4
  br label %198

98:                                               ; preds = %65
  store i32 0, i32* %8, align 4
  br label %99

99:                                               ; preds = %110, %98
  %100 = load i32, i32* %8, align 4
  %101 = icmp slt i32 %100, 8
  br i1 %101, label %102, label %113

102:                                              ; preds = %99
  %103 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %4, align 8
  %104 = load i64, i64* @MT_WCID_DROP_BASE, align 8
  %105 = load i32, i32* %8, align 4
  %106 = mul nsw i32 %105, 4
  %107 = sext i32 %106 to i64
  %108 = add nsw i64 %104, %107
  %109 = call i32 @mt76_wr(%struct.mt76x02_dev* %103, i64 %108, i32 0)
  br label %110

110:                                              ; preds = %102
  %111 = load i32, i32* %8, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %8, align 4
  br label %99

113:                                              ; preds = %99
  store i32 0, i32* %8, align 4
  br label %114

114:                                              ; preds = %130, %113
  %115 = load i32, i32* %8, align 4
  %116 = icmp slt i32 %115, 256
  br i1 %116, label %117, label %133

117:                                              ; preds = %114
  %118 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %4, align 8
  %119 = load i32, i32* %8, align 4
  %120 = call i32 @mt76x02_mac_wcid_setup(%struct.mt76x02_dev* %118, i32 %119, i32 0, i32* null)
  %121 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %4, align 8
  %122 = load i32, i32* %8, align 4
  %123 = call i64 @MT_WCID_TX_RATE(i32 %122)
  %124 = call i32 @mt76_wr(%struct.mt76x02_dev* %121, i64 %123, i32 0)
  %125 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %4, align 8
  %126 = load i32, i32* %8, align 4
  %127 = call i64 @MT_WCID_TX_RATE(i32 %126)
  %128 = add nsw i64 %127, 4
  %129 = call i32 @mt76_wr(%struct.mt76x02_dev* %125, i64 %128, i32 0)
  br label %130

130:                                              ; preds = %117
  %131 = load i32, i32* %8, align 4
  %132 = add nsw i32 %131, 1
  store i32 %132, i32* %8, align 4
  br label %114

133:                                              ; preds = %114
  store i32 0, i32* %8, align 4
  br label %134

134:                                              ; preds = %144, %133
  %135 = load i32, i32* %8, align 4
  %136 = load i32, i32* @MT_MAX_VIFS, align 4
  %137 = icmp slt i32 %135, %136
  br i1 %137, label %138, label %147

138:                                              ; preds = %134
  %139 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %4, align 8
  %140 = load i32, i32* %8, align 4
  %141 = call i32 @MT_VIF_WCID(i32 %140)
  %142 = load i32, i32* %8, align 4
  %143 = call i32 @mt76x02_mac_wcid_setup(%struct.mt76x02_dev* %139, i32 %141, i32 %142, i32* null)
  br label %144

144:                                              ; preds = %138
  %145 = load i32, i32* %8, align 4
  %146 = add nsw i32 %145, 1
  store i32 %146, i32* %8, align 4
  br label %134

147:                                              ; preds = %134
  store i32 0, i32* %8, align 4
  br label %148

148:                                              ; preds = %164, %147
  %149 = load i32, i32* %8, align 4
  %150 = icmp slt i32 %149, 16
  br i1 %150, label %151, label %167

151:                                              ; preds = %148
  store i32 0, i32* %9, align 4
  br label %152

152:                                              ; preds = %160, %151
  %153 = load i32, i32* %9, align 4
  %154 = icmp slt i32 %153, 4
  br i1 %154, label %155, label %163

155:                                              ; preds = %152
  %156 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %4, align 8
  %157 = load i32, i32* %8, align 4
  %158 = load i32, i32* %9, align 4
  %159 = call i32 @mt76x02_mac_shared_key_setup(%struct.mt76x02_dev* %156, i32 %157, i32 %158, i32* null)
  br label %160

160:                                              ; preds = %155
  %161 = load i32, i32* %9, align 4
  %162 = add nsw i32 %161, 1
  store i32 %162, i32* %9, align 4
  br label %152

163:                                              ; preds = %152
  br label %164

164:                                              ; preds = %163
  %165 = load i32, i32* %8, align 4
  %166 = add nsw i32 %165, 1
  store i32 %166, i32* %8, align 4
  br label %148

167:                                              ; preds = %148
  store i32 0, i32* %8, align 4
  br label %168

168:                                              ; preds = %175, %167
  %169 = load i32, i32* %8, align 4
  %170 = icmp slt i32 %169, 16
  br i1 %170, label %171, label %178

171:                                              ; preds = %168
  %172 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %4, align 8
  %173 = load i64, i64* @MT_TX_STAT_FIFO, align 8
  %174 = call i32 @mt76_rr(%struct.mt76x02_dev* %172, i64 %173)
  br label %175

175:                                              ; preds = %171
  %176 = load i32, i32* %8, align 4
  %177 = add nsw i32 %176, 1
  store i32 %177, i32* %8, align 4
  br label %168

178:                                              ; preds = %168
  %179 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %4, align 8
  %180 = load i64, i64* @MT_CH_TIME_CFG, align 8
  %181 = load i32, i32* @MT_CH_TIME_CFG_TIMER_EN, align 4
  %182 = load i32, i32* @MT_CH_TIME_CFG_TX_AS_BUSY, align 4
  %183 = or i32 %181, %182
  %184 = load i32, i32* @MT_CH_TIME_CFG_RX_AS_BUSY, align 4
  %185 = or i32 %183, %184
  %186 = load i32, i32* @MT_CH_TIME_CFG_NAV_AS_BUSY, align 4
  %187 = or i32 %185, %186
  %188 = load i32, i32* @MT_CH_TIME_CFG_EIFS_AS_BUSY, align 4
  %189 = or i32 %187, %188
  %190 = load i32, i32* @MT_CH_CCA_RC_EN, align 4
  %191 = or i32 %189, %190
  %192 = load i32, i32* @MT_CH_TIME_CFG_CH_TIMER_CLR, align 4
  %193 = call i32 @FIELD_PREP(i32 %192, i32 1)
  %194 = or i32 %191, %193
  %195 = call i32 @mt76_wr(%struct.mt76x02_dev* %179, i64 %180, i32 %194)
  %196 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %4, align 8
  %197 = call i32 @mt76x02_set_tx_ackto(%struct.mt76x02_dev* %196)
  store i32 0, i32* %3, align 4
  br label %198

198:                                              ; preds = %178, %97, %18
  %199 = load i32, i32* %3, align 4
  ret i32 %199
}

declare dso_local i32 @mt76x02_wait_for_mac(%struct.TYPE_2__*) #1

declare dso_local i32 @mt76_rr(%struct.mt76x02_dev*, i64) #1

declare dso_local i32 @FIELD_PREP(i32, i32) #1

declare dso_local i32 @mt76_wr(%struct.mt76x02_dev*, i64, i32) #1

declare dso_local i32 @mt76x2_mac_pbf_init(%struct.mt76x02_dev*) #1

declare dso_local i32 @mt76_write_mac_initvals(%struct.mt76x02_dev*) #1

declare dso_local i32 @mt76x2_fixup_xtal(%struct.mt76x02_dev*) #1

declare dso_local i32 @mt76_clear(%struct.mt76x02_dev*, i32, i32) #1

declare dso_local i64 @is_mt7612(%struct.mt76x02_dev*) #1

declare dso_local i32 @mt76_set(%struct.mt76x02_dev*, i32, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @mt76x02_mac_setaddr(%struct.mt76x02_dev*, i32*) #1

declare dso_local i32 @mt76x02e_init_beacon_config(%struct.mt76x02_dev*) #1

declare dso_local i32 @mt76x02_mac_wcid_setup(%struct.mt76x02_dev*, i32, i32, i32*) #1

declare dso_local i64 @MT_WCID_TX_RATE(i32) #1

declare dso_local i32 @MT_VIF_WCID(i32) #1

declare dso_local i32 @mt76x02_mac_shared_key_setup(%struct.mt76x02_dev*, i32, i32, i32*) #1

declare dso_local i32 @mt76x02_set_tx_ackto(%struct.mt76x02_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
