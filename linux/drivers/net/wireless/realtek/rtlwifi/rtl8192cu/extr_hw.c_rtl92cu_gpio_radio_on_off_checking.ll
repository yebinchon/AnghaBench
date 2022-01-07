; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192cu/extr_hw.c_rtl92cu_gpio_radio_on_off_checking.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192cu/extr_hw.c_rtl92cu_gpio_radio_on_off_checking.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_priv = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.rtl_ps_ctl = type { i32, i32, i32, i32, i64, i64 }

@REG_HSISR = common dso_local global i32 0, align 4
@ERFOFF = common dso_local global i32 0, align 4
@ERFON = common dso_local global i32 0, align 4
@COMP_POWER = common dso_local global i32 0, align 4
@DBG_DMESG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"pwrdown, 0x5c(BIT7)=%02x\0A\00", align 1
@REG_MAC_PINMUX_CFG = common dso_local global i32 0, align 4
@REG_GPIO_IO_SEL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"GPIO_IN=%02x\0A\00", align 1
@DBG_LOUD = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [13 x i8] c"N-SS RF =%x\0A\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"GPIOChangeRF  - HW Radio ON, RF ON\0A\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"GPIOChangeRF  - HW Radio OFF\0A\00", align 1
@.str.5 = private unnamed_addr constant [108 x i8] c"pHalData->bHwRadioOff and eRfPowerStateToSet do not match: pHalData->bHwRadioOff %x, eRfPowerStateToSet %x\0A\00", align 1
@RT_RF_OFF_LEVL_ASPM = common dso_local global i32 0, align 4
@RT_RF_OFF_LEVL_PCI_D3 = common dso_local global i32 0, align 4
@REG_RSV_CTRL = common dso_local global i32 0, align 4
@REG_APS_FSMCO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rtl92cu_gpio_radio_on_off_checking(%struct.ieee80211_hw* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ieee80211_hw*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.rtl_priv*, align 8
  %7 = alloca %struct.rtl_ps_ctl*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %4, align 8
  store i32* %1, i32** %5, align 8
  %14 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %15 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %14)
  store %struct.rtl_priv* %15, %struct.rtl_priv** %6, align 8
  %16 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %17 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %16)
  %18 = call %struct.rtl_ps_ctl* @rtl_psc(%struct.rtl_priv* %17)
  store %struct.rtl_ps_ctl* %18, %struct.rtl_ps_ctl** %7, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i64 0, i64* %12, align 8
  store i32 0, i32* %13, align 4
  %19 = load %struct.rtl_ps_ctl*, %struct.rtl_ps_ctl** %7, align 8
  %20 = getelementptr inbounds %struct.rtl_ps_ctl, %struct.rtl_ps_ctl* %19, i32 0, i32 5
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %321

24:                                               ; preds = %2
  %25 = load %struct.rtl_priv*, %struct.rtl_priv** %6, align 8
  %26 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i64, i64* %12, align 8
  %29 = call i32 @spin_lock_irqsave(i32* %27, i64 %28)
  %30 = load %struct.rtl_ps_ctl*, %struct.rtl_ps_ctl** %7, align 8
  %31 = getelementptr inbounds %struct.rtl_ps_ctl, %struct.rtl_ps_ctl* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %40

34:                                               ; preds = %24
  %35 = load %struct.rtl_priv*, %struct.rtl_priv** %6, align 8
  %36 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i64, i64* %12, align 8
  %39 = call i32 @spin_unlock_irqrestore(i32* %37, i64 %38)
  store i32 0, i32* %3, align 4
  br label %321

40:                                               ; preds = %24
  %41 = load %struct.rtl_ps_ctl*, %struct.rtl_ps_ctl** %7, align 8
  %42 = getelementptr inbounds %struct.rtl_ps_ctl, %struct.rtl_ps_ctl* %41, i32 0, i32 0
  store i32 1, i32* %42, align 8
  %43 = load %struct.rtl_priv*, %struct.rtl_priv** %6, align 8
  %44 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i64, i64* %12, align 8
  %47 = call i32 @spin_unlock_irqrestore(i32* %45, i64 %46)
  br label %48

48:                                               ; preds = %40
  %49 = load %struct.rtl_ps_ctl*, %struct.rtl_ps_ctl** %7, align 8
  %50 = getelementptr inbounds %struct.rtl_ps_ctl, %struct.rtl_ps_ctl* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  store i32 %51, i32* %9, align 4
  %52 = load i32, i32* %13, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %48
  br label %113

55:                                               ; preds = %48
  %56 = load %struct.rtl_ps_ctl*, %struct.rtl_ps_ctl** %7, align 8
  %57 = getelementptr inbounds %struct.rtl_ps_ctl, %struct.rtl_ps_ctl* %56, i32 0, i32 4
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %79

60:                                               ; preds = %55
  %61 = load %struct.rtl_priv*, %struct.rtl_priv** %6, align 8
  %62 = load i32, i32* @REG_HSISR, align 4
  %63 = call i32 @rtl_read_byte(%struct.rtl_priv* %61, i32 %62)
  store i32 %63, i32* %10, align 4
  %64 = load i32, i32* %10, align 4
  %65 = call i32 @BIT(i32 7)
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %60
  %69 = load i32, i32* @ERFOFF, align 4
  br label %72

70:                                               ; preds = %60
  %71 = load i32, i32* @ERFON, align 4
  br label %72

72:                                               ; preds = %70, %68
  %73 = phi i32 [ %69, %68 ], [ %71, %70 ]
  store i32 %73, i32* %8, align 4
  %74 = load %struct.rtl_priv*, %struct.rtl_priv** %6, align 8
  %75 = load i32, i32* @COMP_POWER, align 4
  %76 = load i32, i32* @DBG_DMESG, align 4
  %77 = load i32, i32* %10, align 4
  %78 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %74, i32 %75, i32 %76, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %77)
  br label %107

79:                                               ; preds = %55
  %80 = load %struct.rtl_priv*, %struct.rtl_priv** %6, align 8
  %81 = load i32, i32* @REG_MAC_PINMUX_CFG, align 4
  %82 = load %struct.rtl_priv*, %struct.rtl_priv** %6, align 8
  %83 = load i32, i32* @REG_MAC_PINMUX_CFG, align 4
  %84 = call i32 @rtl_read_byte(%struct.rtl_priv* %82, i32 %83)
  %85 = call i32 @BIT(i32 3)
  %86 = xor i32 %85, -1
  %87 = and i32 %84, %86
  %88 = call i32 @rtl_write_byte(%struct.rtl_priv* %80, i32 %81, i32 %87)
  %89 = load %struct.rtl_priv*, %struct.rtl_priv** %6, align 8
  %90 = load i32, i32* @REG_GPIO_IO_SEL, align 4
  %91 = call i32 @rtl_read_byte(%struct.rtl_priv* %89, i32 %90)
  store i32 %91, i32* %10, align 4
  %92 = load i32, i32* %10, align 4
  %93 = call i32 @BIT(i32 3)
  %94 = and i32 %92, %93
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %98

96:                                               ; preds = %79
  %97 = load i32, i32* @ERFON, align 4
  br label %100

98:                                               ; preds = %79
  %99 = load i32, i32* @ERFOFF, align 4
  br label %100

100:                                              ; preds = %98, %96
  %101 = phi i32 [ %97, %96 ], [ %99, %98 ]
  store i32 %101, i32* %8, align 4
  %102 = load %struct.rtl_priv*, %struct.rtl_priv** %6, align 8
  %103 = load i32, i32* @COMP_POWER, align 4
  %104 = load i32, i32* @DBG_DMESG, align 4
  %105 = load i32, i32* %10, align 4
  %106 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %102, i32 %103, i32 %104, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 %105)
  br label %107

107:                                              ; preds = %100, %72
  %108 = load %struct.rtl_priv*, %struct.rtl_priv** %6, align 8
  %109 = load i32, i32* @COMP_POWER, align 4
  %110 = load i32, i32* @DBG_LOUD, align 4
  %111 = load i32, i32* %8, align 4
  %112 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %108, i32 %109, i32 %110, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 %111)
  br label %113

113:                                              ; preds = %107, %54
  %114 = load %struct.rtl_ps_ctl*, %struct.rtl_ps_ctl** %7, align 8
  %115 = getelementptr inbounds %struct.rtl_ps_ctl, %struct.rtl_ps_ctl* %114, i32 0, i32 2
  %116 = load i32, i32* %115, align 8
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %129

118:                                              ; preds = %113
  %119 = load i32, i32* %8, align 4
  %120 = load i32, i32* @ERFON, align 4
  %121 = icmp eq i32 %119, %120
  br i1 %121, label %122, label %129

122:                                              ; preds = %118
  %123 = load %struct.rtl_priv*, %struct.rtl_priv** %6, align 8
  %124 = load i32, i32* @COMP_POWER, align 4
  %125 = load i32, i32* @DBG_LOUD, align 4
  %126 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %123, i32 %124, i32 %125, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0))
  %127 = load %struct.rtl_ps_ctl*, %struct.rtl_ps_ctl** %7, align 8
  %128 = getelementptr inbounds %struct.rtl_ps_ctl, %struct.rtl_ps_ctl* %127, i32 0, i32 2
  store i32 0, i32* %128, align 8
  store i32 1, i32* %11, align 4
  br label %155

129:                                              ; preds = %118, %113
  %130 = load %struct.rtl_ps_ctl*, %struct.rtl_ps_ctl** %7, align 8
  %131 = getelementptr inbounds %struct.rtl_ps_ctl, %struct.rtl_ps_ctl* %130, i32 0, i32 2
  %132 = load i32, i32* %131, align 8
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %145, label %134

134:                                              ; preds = %129
  %135 = load i32, i32* %8, align 4
  %136 = load i32, i32* @ERFOFF, align 4
  %137 = icmp eq i32 %135, %136
  br i1 %137, label %138, label %145

138:                                              ; preds = %134
  %139 = load %struct.rtl_priv*, %struct.rtl_priv** %6, align 8
  %140 = load i32, i32* @COMP_POWER, align 4
  %141 = load i32, i32* @DBG_LOUD, align 4
  %142 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %139, i32 %140, i32 %141, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0))
  %143 = load %struct.rtl_ps_ctl*, %struct.rtl_ps_ctl** %7, align 8
  %144 = getelementptr inbounds %struct.rtl_ps_ctl, %struct.rtl_ps_ctl* %143, i32 0, i32 2
  store i32 1, i32* %144, align 8
  store i32 1, i32* %11, align 4
  br label %154

145:                                              ; preds = %134, %129
  %146 = load %struct.rtl_priv*, %struct.rtl_priv** %6, align 8
  %147 = load i32, i32* @COMP_POWER, align 4
  %148 = load i32, i32* @DBG_LOUD, align 4
  %149 = load %struct.rtl_ps_ctl*, %struct.rtl_ps_ctl** %7, align 8
  %150 = getelementptr inbounds %struct.rtl_ps_ctl, %struct.rtl_ps_ctl* %149, i32 0, i32 2
  %151 = load i32, i32* %150, align 8
  %152 = load i32, i32* %8, align 4
  %153 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %146, i32 %147, i32 %148, i8* getelementptr inbounds ([108 x i8], [108 x i8]* @.str.5, i64 0, i64 0), i32 %151, i32 %152)
  br label %154

154:                                              ; preds = %145, %138
  br label %155

155:                                              ; preds = %154, %122
  %156 = load i32, i32* %11, align 4
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %255

158:                                              ; preds = %155
  %159 = load %struct.rtl_ps_ctl*, %struct.rtl_ps_ctl** %7, align 8
  %160 = getelementptr inbounds %struct.rtl_ps_ctl, %struct.rtl_ps_ctl* %159, i32 0, i32 2
  store i32 1, i32* %160, align 8
  %161 = load i32, i32* %8, align 4
  %162 = load i32, i32* @ERFON, align 4
  %163 = icmp eq i32 %161, %162
  br i1 %163, label %164, label %198

164:                                              ; preds = %158
  %165 = load %struct.rtl_ps_ctl*, %struct.rtl_ps_ctl** %7, align 8
  %166 = getelementptr inbounds %struct.rtl_ps_ctl, %struct.rtl_ps_ctl* %165, i32 0, i32 3
  %167 = load i32, i32* %166, align 4
  %168 = load i32, i32* @RT_RF_OFF_LEVL_ASPM, align 4
  %169 = and i32 %167, %168
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %180

171:                                              ; preds = %164
  %172 = load %struct.rtl_ps_ctl*, %struct.rtl_ps_ctl** %7, align 8
  %173 = load i32, i32* @RT_RF_OFF_LEVL_ASPM, align 4
  %174 = call i64 @RT_IN_PS_LEVEL(%struct.rtl_ps_ctl* %172, i32 %173)
  %175 = icmp ne i64 %174, 0
  br i1 %175, label %176, label %180

176:                                              ; preds = %171
  %177 = load %struct.rtl_ps_ctl*, %struct.rtl_ps_ctl** %7, align 8
  %178 = load i32, i32* @RT_RF_OFF_LEVL_ASPM, align 4
  %179 = call i32 @RT_CLEAR_PS_LEVEL(%struct.rtl_ps_ctl* %177, i32 %178)
  br label %197

180:                                              ; preds = %171, %164
  %181 = load %struct.rtl_ps_ctl*, %struct.rtl_ps_ctl** %7, align 8
  %182 = getelementptr inbounds %struct.rtl_ps_ctl, %struct.rtl_ps_ctl* %181, i32 0, i32 3
  %183 = load i32, i32* %182, align 4
  %184 = load i32, i32* @RT_RF_OFF_LEVL_PCI_D3, align 4
  %185 = and i32 %183, %184
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %187, label %196

187:                                              ; preds = %180
  %188 = load %struct.rtl_ps_ctl*, %struct.rtl_ps_ctl** %7, align 8
  %189 = load i32, i32* @RT_RF_OFF_LEVL_PCI_D3, align 4
  %190 = call i64 @RT_IN_PS_LEVEL(%struct.rtl_ps_ctl* %188, i32 %189)
  %191 = icmp ne i64 %190, 0
  br i1 %191, label %192, label %196

192:                                              ; preds = %187
  %193 = load %struct.rtl_ps_ctl*, %struct.rtl_ps_ctl** %7, align 8
  %194 = load i32, i32* @RT_RF_OFF_LEVL_PCI_D3, align 4
  %195 = call i32 @RT_CLEAR_PS_LEVEL(%struct.rtl_ps_ctl* %193, i32 %194)
  br label %196

196:                                              ; preds = %192, %187, %180
  br label %197

197:                                              ; preds = %196, %176
  br label %198

198:                                              ; preds = %197, %158
  %199 = load %struct.rtl_priv*, %struct.rtl_priv** %6, align 8
  %200 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %199, i32 0, i32 0
  %201 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %200, i32 0, i32 0
  %202 = load i64, i64* %12, align 8
  %203 = call i32 @spin_lock_irqsave(i32* %201, i64 %202)
  %204 = load %struct.rtl_ps_ctl*, %struct.rtl_ps_ctl** %7, align 8
  %205 = getelementptr inbounds %struct.rtl_ps_ctl, %struct.rtl_ps_ctl* %204, i32 0, i32 0
  store i32 0, i32* %205, align 8
  %206 = load %struct.rtl_priv*, %struct.rtl_priv** %6, align 8
  %207 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %206, i32 0, i32 0
  %208 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %207, i32 0, i32 0
  %209 = load i64, i64* %12, align 8
  %210 = call i32 @spin_unlock_irqrestore(i32* %208, i64 %209)
  %211 = load %struct.rtl_ps_ctl*, %struct.rtl_ps_ctl** %7, align 8
  %212 = getelementptr inbounds %struct.rtl_ps_ctl, %struct.rtl_ps_ctl* %211, i32 0, i32 4
  %213 = load i64, i64* %212, align 8
  %214 = icmp ne i64 %213, 0
  br i1 %214, label %215, label %226

215:                                              ; preds = %198
  %216 = load i32, i32* %8, align 4
  %217 = load i32, i32* @ERFOFF, align 4
  %218 = icmp eq i32 %216, %217
  br i1 %218, label %219, label %226

219:                                              ; preds = %215
  %220 = load %struct.rtl_priv*, %struct.rtl_priv** %6, align 8
  %221 = load i32, i32* @REG_RSV_CTRL, align 4
  %222 = call i32 @rtl_write_byte(%struct.rtl_priv* %220, i32 %221, i32 0)
  %223 = load %struct.rtl_priv*, %struct.rtl_priv** %6, align 8
  %224 = load i32, i32* @REG_APS_FSMCO, align 4
  %225 = call i32 @rtl_write_word(%struct.rtl_priv* %223, i32 %224, i32 34834)
  br label %226

226:                                              ; preds = %219, %215, %198
  %227 = load i32, i32* %8, align 4
  %228 = load i32, i32* @ERFOFF, align 4
  %229 = icmp eq i32 %227, %228
  br i1 %229, label %230, label %254

230:                                              ; preds = %226
  %231 = load %struct.rtl_ps_ctl*, %struct.rtl_ps_ctl** %7, align 8
  %232 = getelementptr inbounds %struct.rtl_ps_ctl, %struct.rtl_ps_ctl* %231, i32 0, i32 3
  %233 = load i32, i32* %232, align 4
  %234 = load i32, i32* @RT_RF_OFF_LEVL_ASPM, align 4
  %235 = and i32 %233, %234
  %236 = icmp ne i32 %235, 0
  br i1 %236, label %237, label %241

237:                                              ; preds = %230
  %238 = load %struct.rtl_ps_ctl*, %struct.rtl_ps_ctl** %7, align 8
  %239 = load i32, i32* @RT_RF_OFF_LEVL_ASPM, align 4
  %240 = call i32 @RT_SET_PS_LEVEL(%struct.rtl_ps_ctl* %238, i32 %239)
  br label %253

241:                                              ; preds = %230
  %242 = load %struct.rtl_ps_ctl*, %struct.rtl_ps_ctl** %7, align 8
  %243 = getelementptr inbounds %struct.rtl_ps_ctl, %struct.rtl_ps_ctl* %242, i32 0, i32 3
  %244 = load i32, i32* %243, align 4
  %245 = load i32, i32* @RT_RF_OFF_LEVL_PCI_D3, align 4
  %246 = and i32 %244, %245
  %247 = icmp ne i32 %246, 0
  br i1 %247, label %248, label %252

248:                                              ; preds = %241
  %249 = load %struct.rtl_ps_ctl*, %struct.rtl_ps_ctl** %7, align 8
  %250 = load i32, i32* @RT_RF_OFF_LEVL_PCI_D3, align 4
  %251 = call i32 @RT_SET_PS_LEVEL(%struct.rtl_ps_ctl* %249, i32 %250)
  br label %252

252:                                              ; preds = %248, %241
  br label %253

253:                                              ; preds = %252, %237
  br label %254

254:                                              ; preds = %253, %226
  br label %313

255:                                              ; preds = %155
  %256 = load i32, i32* %8, align 4
  %257 = load i32, i32* @ERFOFF, align 4
  %258 = icmp eq i32 %256, %257
  br i1 %258, label %263, label %259

259:                                              ; preds = %255
  %260 = load i32, i32* %9, align 4
  %261 = load i32, i32* @ERFOFF, align 4
  %262 = icmp eq i32 %260, %261
  br i1 %262, label %263, label %299

263:                                              ; preds = %259, %255
  %264 = load %struct.rtl_ps_ctl*, %struct.rtl_ps_ctl** %7, align 8
  %265 = getelementptr inbounds %struct.rtl_ps_ctl, %struct.rtl_ps_ctl* %264, i32 0, i32 3
  %266 = load i32, i32* %265, align 4
  %267 = load i32, i32* @RT_RF_OFF_LEVL_ASPM, align 4
  %268 = and i32 %266, %267
  %269 = icmp ne i32 %268, 0
  br i1 %269, label %270, label %274

270:                                              ; preds = %263
  %271 = load %struct.rtl_ps_ctl*, %struct.rtl_ps_ctl** %7, align 8
  %272 = load i32, i32* @RT_RF_OFF_LEVL_ASPM, align 4
  %273 = call i32 @RT_SET_PS_LEVEL(%struct.rtl_ps_ctl* %271, i32 %272)
  br label %286

274:                                              ; preds = %263
  %275 = load %struct.rtl_ps_ctl*, %struct.rtl_ps_ctl** %7, align 8
  %276 = getelementptr inbounds %struct.rtl_ps_ctl, %struct.rtl_ps_ctl* %275, i32 0, i32 3
  %277 = load i32, i32* %276, align 4
  %278 = load i32, i32* @RT_RF_OFF_LEVL_PCI_D3, align 4
  %279 = and i32 %277, %278
  %280 = icmp ne i32 %279, 0
  br i1 %280, label %281, label %285

281:                                              ; preds = %274
  %282 = load %struct.rtl_ps_ctl*, %struct.rtl_ps_ctl** %7, align 8
  %283 = load i32, i32* @RT_RF_OFF_LEVL_PCI_D3, align 4
  %284 = call i32 @RT_SET_PS_LEVEL(%struct.rtl_ps_ctl* %282, i32 %283)
  br label %285

285:                                              ; preds = %281, %274
  br label %286

286:                                              ; preds = %285, %270
  %287 = load %struct.rtl_priv*, %struct.rtl_priv** %6, align 8
  %288 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %287, i32 0, i32 0
  %289 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %288, i32 0, i32 0
  %290 = load i64, i64* %12, align 8
  %291 = call i32 @spin_lock_irqsave(i32* %289, i64 %290)
  %292 = load %struct.rtl_ps_ctl*, %struct.rtl_ps_ctl** %7, align 8
  %293 = getelementptr inbounds %struct.rtl_ps_ctl, %struct.rtl_ps_ctl* %292, i32 0, i32 0
  store i32 0, i32* %293, align 8
  %294 = load %struct.rtl_priv*, %struct.rtl_priv** %6, align 8
  %295 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %294, i32 0, i32 0
  %296 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %295, i32 0, i32 0
  %297 = load i64, i64* %12, align 8
  %298 = call i32 @spin_unlock_irqrestore(i32* %296, i64 %297)
  br label %312

299:                                              ; preds = %259
  %300 = load %struct.rtl_priv*, %struct.rtl_priv** %6, align 8
  %301 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %300, i32 0, i32 0
  %302 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %301, i32 0, i32 0
  %303 = load i64, i64* %12, align 8
  %304 = call i32 @spin_lock_irqsave(i32* %302, i64 %303)
  %305 = load %struct.rtl_ps_ctl*, %struct.rtl_ps_ctl** %7, align 8
  %306 = getelementptr inbounds %struct.rtl_ps_ctl, %struct.rtl_ps_ctl* %305, i32 0, i32 0
  store i32 0, i32* %306, align 8
  %307 = load %struct.rtl_priv*, %struct.rtl_priv** %6, align 8
  %308 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %307, i32 0, i32 0
  %309 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %308, i32 0, i32 0
  %310 = load i64, i64* %12, align 8
  %311 = call i32 @spin_unlock_irqrestore(i32* %309, i64 %310)
  br label %312

312:                                              ; preds = %299, %286
  br label %313

313:                                              ; preds = %312, %254
  %314 = load i32*, i32** %5, align 8
  store i32 1, i32* %314, align 4
  %315 = load %struct.rtl_ps_ctl*, %struct.rtl_ps_ctl** %7, align 8
  %316 = getelementptr inbounds %struct.rtl_ps_ctl, %struct.rtl_ps_ctl* %315, i32 0, i32 2
  %317 = load i32, i32* %316, align 8
  %318 = icmp ne i32 %317, 0
  %319 = xor i1 %318, true
  %320 = zext i1 %319 to i32
  store i32 %320, i32* %3, align 4
  br label %321

321:                                              ; preds = %313, %34, %23
  %322 = load i32, i32* %3, align 4
  ret i32 %322
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local %struct.rtl_ps_ctl* @rtl_psc(%struct.rtl_priv*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @rtl_read_byte(%struct.rtl_priv*, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @RT_TRACE(%struct.rtl_priv*, i32, i32, i8*, ...) #1

declare dso_local i32 @rtl_write_byte(%struct.rtl_priv*, i32, i32) #1

declare dso_local i64 @RT_IN_PS_LEVEL(%struct.rtl_ps_ctl*, i32) #1

declare dso_local i32 @RT_CLEAR_PS_LEVEL(%struct.rtl_ps_ctl*, i32) #1

declare dso_local i32 @rtl_write_word(%struct.rtl_priv*, i32, i32) #1

declare dso_local i32 @RT_SET_PS_LEVEL(%struct.rtl_ps_ctl*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
