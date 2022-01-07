; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtl8xxxu/extr_rtl8xxxu_core.c_rtl8xxxu_init_phy_bb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtl8xxxu/extr_rtl8xxxu_core.c_rtl8xxxu_init_phy_bb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtl8xxxu_priv = type { i32, i32, i32, i64, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { {}* }

@REG_FPGA0_TX_INFO = common dso_local global i32 0, align 4
@REG_FPGA1_TX_INFO = common dso_local global i32 0, align 4
@REG_CCK0_AFE_SETTING = common dso_local global i32 0, align 4
@CCK0_AFE_RX_MASK = common dso_local global i32 0, align 4
@CCK0_AFE_RX_ANT_B = common dso_local global i32 0, align 4
@REG_OFDM0_TRX_PATH_ENABLE = common dso_local global i32 0, align 4
@OFDM_RF_PATH_RX_MASK = common dso_local global i32 0, align 4
@OFDM_RF_PATH_TX_MASK = common dso_local global i32 0, align 4
@OFDM_RF_PATH_RX_A = common dso_local global i32 0, align 4
@OFDM_RF_PATH_RX_B = common dso_local global i32 0, align 4
@OFDM_RF_PATH_TX_B = common dso_local global i32 0, align 4
@REG_OFDM0_AGC_PARM1 = common dso_local global i32 0, align 4
@REG_TX_CCK_RFON = common dso_local global i32 0, align 4
@REG_TX_CCK_BBON = common dso_local global i32 0, align 4
@REG_TX_OFDM_RFON = common dso_local global i32 0, align 4
@REG_TX_OFDM_BBON = common dso_local global i32 0, align 4
@REG_TX_TO_TX = common dso_local global i32 0, align 4
@REG_MAC_PHY_CTRL = common dso_local global i32 0, align 4
@RTL8192E = common dso_local global i64 0, align 8
@REG_AFE_XTAL_CTRL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rtl8xxxu_priv*)* @rtl8xxxu_init_phy_bb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtl8xxxu_init_phy_bb(%struct.rtl8xxxu_priv* %0) #0 {
  %2 = alloca %struct.rtl8xxxu_priv*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.rtl8xxxu_priv* %0, %struct.rtl8xxxu_priv** %2, align 8
  %5 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %2, align 8
  %6 = getelementptr inbounds %struct.rtl8xxxu_priv, %struct.rtl8xxxu_priv* %5, i32 0, i32 5
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = bitcast {}** %8 to i32 (%struct.rtl8xxxu_priv*)**
  %10 = load i32 (%struct.rtl8xxxu_priv*)*, i32 (%struct.rtl8xxxu_priv*)** %9, align 8
  %11 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %2, align 8
  %12 = call i32 %10(%struct.rtl8xxxu_priv* %11)
  %13 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %2, align 8
  %14 = getelementptr inbounds %struct.rtl8xxxu_priv, %struct.rtl8xxxu_priv* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp eq i32 %15, 1
  br i1 %16, label %17, label %184

17:                                               ; preds = %1
  %18 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %2, align 8
  %19 = getelementptr inbounds %struct.rtl8xxxu_priv, %struct.rtl8xxxu_priv* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = icmp eq i32 %20, 2
  br i1 %21, label %22, label %184

22:                                               ; preds = %17
  %23 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %2, align 8
  %24 = load i32, i32* @REG_FPGA0_TX_INFO, align 4
  %25 = call i32 @rtl8xxxu_read32(%struct.rtl8xxxu_priv* %23, i32 %24)
  store i32 %25, i32* %4, align 4
  %26 = call i32 @BIT(i32 0)
  %27 = call i32 @BIT(i32 1)
  %28 = or i32 %26, %27
  %29 = xor i32 %28, -1
  %30 = load i32, i32* %4, align 4
  %31 = and i32 %30, %29
  store i32 %31, i32* %4, align 4
  %32 = call i32 @BIT(i32 1)
  %33 = load i32, i32* %4, align 4
  %34 = or i32 %33, %32
  store i32 %34, i32* %4, align 4
  %35 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %2, align 8
  %36 = load i32, i32* @REG_FPGA0_TX_INFO, align 4
  %37 = load i32, i32* %4, align 4
  %38 = call i32 @rtl8xxxu_write32(%struct.rtl8xxxu_priv* %35, i32 %36, i32 %37)
  %39 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %2, align 8
  %40 = load i32, i32* @REG_FPGA1_TX_INFO, align 4
  %41 = call i32 @rtl8xxxu_read32(%struct.rtl8xxxu_priv* %39, i32 %40)
  store i32 %41, i32* %4, align 4
  %42 = load i32, i32* %4, align 4
  %43 = and i32 %42, -3145780
  store i32 %43, i32* %4, align 4
  %44 = load i32, i32* %4, align 4
  %45 = or i32 %44, 2097186
  store i32 %45, i32* %4, align 4
  %46 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %2, align 8
  %47 = load i32, i32* @REG_FPGA1_TX_INFO, align 4
  %48 = load i32, i32* %4, align 4
  %49 = call i32 @rtl8xxxu_write32(%struct.rtl8xxxu_priv* %46, i32 %47, i32 %48)
  %50 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %2, align 8
  %51 = load i32, i32* @REG_CCK0_AFE_SETTING, align 4
  %52 = call i32 @rtl8xxxu_read32(%struct.rtl8xxxu_priv* %50, i32 %51)
  store i32 %52, i32* %4, align 4
  %53 = load i32, i32* @CCK0_AFE_RX_MASK, align 4
  %54 = xor i32 %53, -1
  %55 = load i32, i32* %4, align 4
  %56 = and i32 %55, %54
  store i32 %56, i32* %4, align 4
  %57 = load i32, i32* %4, align 4
  %58 = and i32 %57, 16777215
  store i32 %58, i32* %4, align 4
  %59 = load i32, i32* %4, align 4
  %60 = or i32 %59, 1073741824
  store i32 %60, i32* %4, align 4
  %61 = load i32, i32* @CCK0_AFE_RX_ANT_B, align 4
  %62 = load i32, i32* %4, align 4
  %63 = or i32 %62, %61
  store i32 %63, i32* %4, align 4
  %64 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %2, align 8
  %65 = load i32, i32* @REG_CCK0_AFE_SETTING, align 4
  %66 = load i32, i32* %4, align 4
  %67 = call i32 @rtl8xxxu_write32(%struct.rtl8xxxu_priv* %64, i32 %65, i32 %66)
  %68 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %2, align 8
  %69 = load i32, i32* @REG_OFDM0_TRX_PATH_ENABLE, align 4
  %70 = call i32 @rtl8xxxu_read32(%struct.rtl8xxxu_priv* %68, i32 %69)
  store i32 %70, i32* %4, align 4
  %71 = load i32, i32* @OFDM_RF_PATH_RX_MASK, align 4
  %72 = load i32, i32* @OFDM_RF_PATH_TX_MASK, align 4
  %73 = or i32 %71, %72
  %74 = xor i32 %73, -1
  %75 = load i32, i32* %4, align 4
  %76 = and i32 %75, %74
  store i32 %76, i32* %4, align 4
  %77 = load i32, i32* @OFDM_RF_PATH_RX_A, align 4
  %78 = load i32, i32* @OFDM_RF_PATH_RX_B, align 4
  %79 = or i32 %77, %78
  %80 = load i32, i32* @OFDM_RF_PATH_TX_B, align 4
  %81 = or i32 %79, %80
  %82 = load i32, i32* %4, align 4
  %83 = or i32 %82, %81
  store i32 %83, i32* %4, align 4
  %84 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %2, align 8
  %85 = load i32, i32* @REG_OFDM0_TRX_PATH_ENABLE, align 4
  %86 = load i32, i32* %4, align 4
  %87 = call i32 @rtl8xxxu_write32(%struct.rtl8xxxu_priv* %84, i32 %85, i32 %86)
  %88 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %2, align 8
  %89 = load i32, i32* @REG_OFDM0_AGC_PARM1, align 4
  %90 = call i32 @rtl8xxxu_read32(%struct.rtl8xxxu_priv* %88, i32 %89)
  store i32 %90, i32* %4, align 4
  %91 = call i32 @BIT(i32 4)
  %92 = call i32 @BIT(i32 5)
  %93 = or i32 %91, %92
  %94 = xor i32 %93, -1
  %95 = load i32, i32* %4, align 4
  %96 = and i32 %95, %94
  store i32 %96, i32* %4, align 4
  %97 = call i32 @BIT(i32 4)
  %98 = load i32, i32* %4, align 4
  %99 = or i32 %98, %97
  store i32 %99, i32* %4, align 4
  %100 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %2, align 8
  %101 = load i32, i32* @REG_OFDM0_AGC_PARM1, align 4
  %102 = load i32, i32* %4, align 4
  %103 = call i32 @rtl8xxxu_write32(%struct.rtl8xxxu_priv* %100, i32 %101, i32 %102)
  %104 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %2, align 8
  %105 = load i32, i32* @REG_TX_CCK_RFON, align 4
  %106 = call i32 @rtl8xxxu_read32(%struct.rtl8xxxu_priv* %104, i32 %105)
  store i32 %106, i32* %4, align 4
  %107 = call i32 @BIT(i32 27)
  %108 = call i32 @BIT(i32 26)
  %109 = or i32 %107, %108
  %110 = xor i32 %109, -1
  %111 = load i32, i32* %4, align 4
  %112 = and i32 %111, %110
  store i32 %112, i32* %4, align 4
  %113 = call i32 @BIT(i32 27)
  %114 = load i32, i32* %4, align 4
  %115 = or i32 %114, %113
  store i32 %115, i32* %4, align 4
  %116 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %2, align 8
  %117 = load i32, i32* @REG_TX_CCK_RFON, align 4
  %118 = load i32, i32* %4, align 4
  %119 = call i32 @rtl8xxxu_write32(%struct.rtl8xxxu_priv* %116, i32 %117, i32 %118)
  %120 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %2, align 8
  %121 = load i32, i32* @REG_TX_CCK_BBON, align 4
  %122 = call i32 @rtl8xxxu_read32(%struct.rtl8xxxu_priv* %120, i32 %121)
  store i32 %122, i32* %4, align 4
  %123 = call i32 @BIT(i32 27)
  %124 = call i32 @BIT(i32 26)
  %125 = or i32 %123, %124
  %126 = xor i32 %125, -1
  %127 = load i32, i32* %4, align 4
  %128 = and i32 %127, %126
  store i32 %128, i32* %4, align 4
  %129 = call i32 @BIT(i32 27)
  %130 = load i32, i32* %4, align 4
  %131 = or i32 %130, %129
  store i32 %131, i32* %4, align 4
  %132 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %2, align 8
  %133 = load i32, i32* @REG_TX_CCK_BBON, align 4
  %134 = load i32, i32* %4, align 4
  %135 = call i32 @rtl8xxxu_write32(%struct.rtl8xxxu_priv* %132, i32 %133, i32 %134)
  %136 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %2, align 8
  %137 = load i32, i32* @REG_TX_OFDM_RFON, align 4
  %138 = call i32 @rtl8xxxu_read32(%struct.rtl8xxxu_priv* %136, i32 %137)
  store i32 %138, i32* %4, align 4
  %139 = call i32 @BIT(i32 27)
  %140 = call i32 @BIT(i32 26)
  %141 = or i32 %139, %140
  %142 = xor i32 %141, -1
  %143 = load i32, i32* %4, align 4
  %144 = and i32 %143, %142
  store i32 %144, i32* %4, align 4
  %145 = call i32 @BIT(i32 27)
  %146 = load i32, i32* %4, align 4
  %147 = or i32 %146, %145
  store i32 %147, i32* %4, align 4
  %148 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %2, align 8
  %149 = load i32, i32* @REG_TX_OFDM_RFON, align 4
  %150 = load i32, i32* %4, align 4
  %151 = call i32 @rtl8xxxu_write32(%struct.rtl8xxxu_priv* %148, i32 %149, i32 %150)
  %152 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %2, align 8
  %153 = load i32, i32* @REG_TX_OFDM_BBON, align 4
  %154 = call i32 @rtl8xxxu_read32(%struct.rtl8xxxu_priv* %152, i32 %153)
  store i32 %154, i32* %4, align 4
  %155 = call i32 @BIT(i32 27)
  %156 = call i32 @BIT(i32 26)
  %157 = or i32 %155, %156
  %158 = xor i32 %157, -1
  %159 = load i32, i32* %4, align 4
  %160 = and i32 %159, %158
  store i32 %160, i32* %4, align 4
  %161 = call i32 @BIT(i32 27)
  %162 = load i32, i32* %4, align 4
  %163 = or i32 %162, %161
  store i32 %163, i32* %4, align 4
  %164 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %2, align 8
  %165 = load i32, i32* @REG_TX_OFDM_BBON, align 4
  %166 = load i32, i32* %4, align 4
  %167 = call i32 @rtl8xxxu_write32(%struct.rtl8xxxu_priv* %164, i32 %165, i32 %166)
  %168 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %2, align 8
  %169 = load i32, i32* @REG_TX_TO_TX, align 4
  %170 = call i32 @rtl8xxxu_read32(%struct.rtl8xxxu_priv* %168, i32 %169)
  store i32 %170, i32* %4, align 4
  %171 = call i32 @BIT(i32 27)
  %172 = call i32 @BIT(i32 26)
  %173 = or i32 %171, %172
  %174 = xor i32 %173, -1
  %175 = load i32, i32* %4, align 4
  %176 = and i32 %175, %174
  store i32 %176, i32* %4, align 4
  %177 = call i32 @BIT(i32 27)
  %178 = load i32, i32* %4, align 4
  %179 = or i32 %178, %177
  store i32 %179, i32* %4, align 4
  %180 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %2, align 8
  %181 = load i32, i32* @REG_TX_TO_TX, align 4
  %182 = load i32, i32* %4, align 4
  %183 = call i32 @rtl8xxxu_write32(%struct.rtl8xxxu_priv* %180, i32 %181, i32 %182)
  br label %184

184:                                              ; preds = %22, %17, %1
  %185 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %2, align 8
  %186 = getelementptr inbounds %struct.rtl8xxxu_priv, %struct.rtl8xxxu_priv* %185, i32 0, i32 4
  %187 = load i64, i64* %186, align 8
  %188 = icmp ne i64 %187, 0
  br i1 %188, label %189, label %209

189:                                              ; preds = %184
  %190 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %2, align 8
  %191 = load i32, i32* @REG_MAC_PHY_CTRL, align 4
  %192 = call i32 @rtl8xxxu_read32(%struct.rtl8xxxu_priv* %190, i32 %191)
  store i32 %192, i32* %4, align 4
  %193 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %2, align 8
  %194 = getelementptr inbounds %struct.rtl8xxxu_priv, %struct.rtl8xxxu_priv* %193, i32 0, i32 2
  %195 = load i32, i32* %194, align 8
  store i32 %195, i32* %3, align 4
  %196 = load i32, i32* %4, align 4
  %197 = and i32 %196, -16773121
  store i32 %197, i32* %4, align 4
  %198 = load i32, i32* %3, align 4
  %199 = load i32, i32* %3, align 4
  %200 = shl i32 %199, 6
  %201 = or i32 %198, %200
  %202 = shl i32 %201, 12
  %203 = load i32, i32* %4, align 4
  %204 = or i32 %203, %202
  store i32 %204, i32* %4, align 4
  %205 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %2, align 8
  %206 = load i32, i32* @REG_MAC_PHY_CTRL, align 4
  %207 = load i32, i32* %4, align 4
  %208 = call i32 @rtl8xxxu_write32(%struct.rtl8xxxu_priv* %205, i32 %206, i32 %207)
  br label %209

209:                                              ; preds = %189, %184
  %210 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %2, align 8
  %211 = getelementptr inbounds %struct.rtl8xxxu_priv, %struct.rtl8xxxu_priv* %210, i32 0, i32 3
  %212 = load i64, i64* %211, align 8
  %213 = load i64, i64* @RTL8192E, align 8
  %214 = icmp eq i64 %212, %213
  br i1 %214, label %215, label %219

215:                                              ; preds = %209
  %216 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %2, align 8
  %217 = load i32, i32* @REG_AFE_XTAL_CTRL, align 4
  %218 = call i32 @rtl8xxxu_write32(%struct.rtl8xxxu_priv* %216, i32 %217, i32 1016315)
  br label %219

219:                                              ; preds = %215, %209
  ret i32 0
}

declare dso_local i32 @rtl8xxxu_read32(%struct.rtl8xxxu_priv*, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @rtl8xxxu_write32(%struct.rtl8xxxu_priv*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
