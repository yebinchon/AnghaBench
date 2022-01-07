; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/vt6656/extr_main_usb.c_vnt_bss_info_changed.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/vt6656/extr_main_usb.c_vnt_bss_info_changed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { %struct.vnt_private* }
%struct.vnt_private = type { i32, i32, i64, i32, %struct.TYPE_7__*, i32, i32*, i32, i32 }
%struct.TYPE_7__ = type { i32 }
%struct.ieee80211_vif = type { i32 }
%struct.ieee80211_bss_conf = type { i32, i32, %struct.TYPE_8__*, i64, i32, %struct.TYPE_6__, i64, i64, i64, i32, i64, i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }

@BSS_CHANGED_BSSID = common dso_local global i32 0, align 4
@BSS_CHANGED_BASIC_RATES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"basic rates %x\0A\00", align 1
@BSS_CHANGED_ERP_PREAMBLE = common dso_local global i32 0, align 4
@BSS_CHANGED_ERP_CTS_PROT = common dso_local global i32 0, align 4
@BSS_CHANGED_ERP_SLOT = common dso_local global i32 0, align 4
@BSS_CHANGED_TXPOWER = common dso_local global i32 0, align 4
@BSS_CHANGED_BEACON_ENABLED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"Beacon enable %d\0A\00", align 1
@MAC_REG_TCR = common dso_local global i32 0, align 4
@TCR_AUTOBCNTX = common dso_local global i32 0, align 4
@BSS_CHANGED_ASSOC = common dso_local global i32 0, align 4
@BSS_CHANGED_BEACON_INFO = common dso_local global i32 0, align 4
@NL80211_IFTYPE_AP = common dso_local global i64 0, align 8
@MAC_REG_TFTCTL = common dso_local global i32 0, align 4
@TFTCTL_TSFCNTREN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*, %struct.ieee80211_vif*, %struct.ieee80211_bss_conf*, i32)* @vnt_bss_info_changed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vnt_bss_info_changed(%struct.ieee80211_hw* %0, %struct.ieee80211_vif* %1, %struct.ieee80211_bss_conf* %2, i32 %3) #0 {
  %5 = alloca %struct.ieee80211_hw*, align 8
  %6 = alloca %struct.ieee80211_vif*, align 8
  %7 = alloca %struct.ieee80211_bss_conf*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.vnt_private*, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %5, align 8
  store %struct.ieee80211_vif* %1, %struct.ieee80211_vif** %6, align 8
  store %struct.ieee80211_bss_conf* %2, %struct.ieee80211_bss_conf** %7, align 8
  store i32 %3, i32* %8, align 4
  %10 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %11 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %10, i32 0, i32 0
  %12 = load %struct.vnt_private*, %struct.vnt_private** %11, align 8
  store %struct.vnt_private* %12, %struct.vnt_private** %9, align 8
  %13 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %7, align 8
  %14 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %13, i32 0, i32 11
  %15 = load i32, i32* %14, align 8
  %16 = load %struct.vnt_private*, %struct.vnt_private** %9, align 8
  %17 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %16, i32 0, i32 8
  store i32 %15, i32* %17, align 4
  %18 = load i32, i32* %8, align 4
  %19 = load i32, i32* @BSS_CHANGED_BSSID, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %34

22:                                               ; preds = %4
  %23 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %7, align 8
  %24 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %23, i32 0, i32 10
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %34

27:                                               ; preds = %22
  %28 = load %struct.vnt_private*, %struct.vnt_private** %9, align 8
  %29 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %7, align 8
  %30 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %29, i32 0, i32 10
  %31 = load i64, i64* %30, align 8
  %32 = inttoptr i64 %31 to i32*
  %33 = call i32 @vnt_mac_set_bssid_addr(%struct.vnt_private* %28, i32* %32)
  br label %34

34:                                               ; preds = %27, %22, %4
  %35 = load i32, i32* %8, align 4
  %36 = load i32, i32* @BSS_CHANGED_BASIC_RATES, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %57

39:                                               ; preds = %34
  %40 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %7, align 8
  %41 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %40, i32 0, i32 9
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.vnt_private*, %struct.vnt_private** %9, align 8
  %44 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %43, i32 0, i32 7
  store i32 %42, i32* %44, align 8
  %45 = load %struct.vnt_private*, %struct.vnt_private** %9, align 8
  %46 = call i32 @vnt_update_top_rates(%struct.vnt_private* %45)
  %47 = load %struct.vnt_private*, %struct.vnt_private** %9, align 8
  %48 = call i32 @vnt_set_bss_mode(%struct.vnt_private* %47)
  %49 = load %struct.vnt_private*, %struct.vnt_private** %9, align 8
  %50 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %49, i32 0, i32 4
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 0
  %53 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %7, align 8
  %54 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %53, i32 0, i32 9
  %55 = load i32, i32* %54, align 8
  %56 = call i32 @dev_dbg(i32* %52, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %55)
  br label %57

57:                                               ; preds = %39, %34
  %58 = load i32, i32* %8, align 4
  %59 = load i32, i32* @BSS_CHANGED_ERP_PREAMBLE, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %78

62:                                               ; preds = %57
  %63 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %7, align 8
  %64 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %63, i32 0, i32 8
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %72

67:                                               ; preds = %62
  %68 = load %struct.vnt_private*, %struct.vnt_private** %9, align 8
  %69 = call i32 @vnt_mac_enable_barker_preamble_mode(%struct.vnt_private* %68)
  %70 = load %struct.vnt_private*, %struct.vnt_private** %9, align 8
  %71 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %70, i32 0, i32 0
  store i32 1, i32* %71, align 8
  br label %77

72:                                               ; preds = %62
  %73 = load %struct.vnt_private*, %struct.vnt_private** %9, align 8
  %74 = call i32 @vnt_mac_disable_barker_preamble_mode(%struct.vnt_private* %73)
  %75 = load %struct.vnt_private*, %struct.vnt_private** %9, align 8
  %76 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %75, i32 0, i32 0
  store i32 0, i32* %76, align 8
  br label %77

77:                                               ; preds = %72, %67
  br label %78

78:                                               ; preds = %77, %57
  %79 = load i32, i32* %8, align 4
  %80 = load i32, i32* @BSS_CHANGED_ERP_CTS_PROT, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %95

83:                                               ; preds = %78
  %84 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %7, align 8
  %85 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %84, i32 0, i32 7
  %86 = load i64, i64* %85, align 8
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %91

88:                                               ; preds = %83
  %89 = load %struct.vnt_private*, %struct.vnt_private** %9, align 8
  %90 = call i32 @vnt_mac_enable_protect_mode(%struct.vnt_private* %89)
  br label %94

91:                                               ; preds = %83
  %92 = load %struct.vnt_private*, %struct.vnt_private** %9, align 8
  %93 = call i32 @vnt_mac_disable_protect_mode(%struct.vnt_private* %92)
  br label %94

94:                                               ; preds = %91, %88
  br label %95

95:                                               ; preds = %94, %78
  %96 = load i32, i32* %8, align 4
  %97 = load i32, i32* @BSS_CHANGED_ERP_SLOT, align 4
  %98 = and i32 %96, %97
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %125

100:                                              ; preds = %95
  %101 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %7, align 8
  %102 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %101, i32 0, i32 6
  %103 = load i64, i64* %102, align 8
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %108

105:                                              ; preds = %100
  %106 = load %struct.vnt_private*, %struct.vnt_private** %9, align 8
  %107 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %106, i32 0, i32 1
  store i32 1, i32* %107, align 4
  br label %111

108:                                              ; preds = %100
  %109 = load %struct.vnt_private*, %struct.vnt_private** %9, align 8
  %110 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %109, i32 0, i32 1
  store i32 0, i32* %110, align 4
  br label %111

111:                                              ; preds = %108, %105
  %112 = load %struct.vnt_private*, %struct.vnt_private** %9, align 8
  %113 = call i32 @vnt_set_short_slot_time(%struct.vnt_private* %112)
  %114 = load %struct.vnt_private*, %struct.vnt_private** %9, align 8
  %115 = call i32 @vnt_update_ifs(%struct.vnt_private* %114)
  %116 = load %struct.vnt_private*, %struct.vnt_private** %9, align 8
  %117 = load %struct.vnt_private*, %struct.vnt_private** %9, align 8
  %118 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %117, i32 0, i32 6
  %119 = load i32*, i32** %118, align 8
  %120 = getelementptr inbounds i32, i32* %119, i64 0
  %121 = load i32, i32* %120, align 4
  %122 = call i32 @vnt_set_vga_gain_offset(%struct.vnt_private* %116, i32 %121)
  %123 = load %struct.vnt_private*, %struct.vnt_private** %9, align 8
  %124 = call i32 @vnt_update_pre_ed_threshold(%struct.vnt_private* %123, i32 0)
  br label %125

125:                                              ; preds = %111, %95
  %126 = load i32, i32* %8, align 4
  %127 = load i32, i32* @BSS_CHANGED_TXPOWER, align 4
  %128 = and i32 %126, %127
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %142

130:                                              ; preds = %125
  %131 = load %struct.vnt_private*, %struct.vnt_private** %9, align 8
  %132 = load %struct.vnt_private*, %struct.vnt_private** %9, align 8
  %133 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %132, i32 0, i32 5
  %134 = load i32, i32* %133, align 8
  %135 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %7, align 8
  %136 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %135, i32 0, i32 5
  %137 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %136, i32 0, i32 0
  %138 = load %struct.TYPE_5__*, %struct.TYPE_5__** %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 4
  %141 = call i32 @vnt_rf_setpower(%struct.vnt_private* %131, i32 %134, i32 %140)
  br label %142

142:                                              ; preds = %130, %125
  %143 = load i32, i32* %8, align 4
  %144 = load i32, i32* @BSS_CHANGED_BEACON_ENABLED, align 4
  %145 = and i32 %143, %144
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %175

147:                                              ; preds = %142
  %148 = load %struct.vnt_private*, %struct.vnt_private** %9, align 8
  %149 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %148, i32 0, i32 4
  %150 = load %struct.TYPE_7__*, %struct.TYPE_7__** %149, align 8
  %151 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %150, i32 0, i32 0
  %152 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %7, align 8
  %153 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %152, i32 0, i32 4
  %154 = load i32, i32* %153, align 8
  %155 = call i32 @dev_dbg(i32* %151, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 %154)
  %156 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %7, align 8
  %157 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %156, i32 0, i32 4
  %158 = load i32, i32* %157, align 8
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %169

160:                                              ; preds = %147
  %161 = load %struct.vnt_private*, %struct.vnt_private** %9, align 8
  %162 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %163 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %7, align 8
  %164 = call i32 @vnt_beacon_enable(%struct.vnt_private* %161, %struct.ieee80211_vif* %162, %struct.ieee80211_bss_conf* %163)
  %165 = load %struct.vnt_private*, %struct.vnt_private** %9, align 8
  %166 = load i32, i32* @MAC_REG_TCR, align 4
  %167 = load i32, i32* @TCR_AUTOBCNTX, align 4
  %168 = call i32 @vnt_mac_reg_bits_on(%struct.vnt_private* %165, i32 %166, i32 %167)
  br label %174

169:                                              ; preds = %147
  %170 = load %struct.vnt_private*, %struct.vnt_private** %9, align 8
  %171 = load i32, i32* @MAC_REG_TCR, align 4
  %172 = load i32, i32* @TCR_AUTOBCNTX, align 4
  %173 = call i32 @vnt_mac_reg_bits_off(%struct.vnt_private* %170, i32 %171, i32 %172)
  br label %174

174:                                              ; preds = %169, %160
  br label %175

175:                                              ; preds = %174, %142
  %176 = load i32, i32* %8, align 4
  %177 = load i32, i32* @BSS_CHANGED_ASSOC, align 4
  %178 = load i32, i32* @BSS_CHANGED_BEACON_INFO, align 4
  %179 = or i32 %177, %178
  %180 = and i32 %176, %179
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %182, label %234

182:                                              ; preds = %175
  %183 = load %struct.vnt_private*, %struct.vnt_private** %9, align 8
  %184 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %183, i32 0, i32 2
  %185 = load i64, i64* %184, align 8
  %186 = load i64, i64* @NL80211_IFTYPE_AP, align 8
  %187 = icmp ne i64 %185, %186
  br i1 %187, label %188, label %234

188:                                              ; preds = %182
  %189 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %7, align 8
  %190 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %189, i32 0, i32 3
  %191 = load i64, i64* %190, align 8
  %192 = icmp ne i64 %191, 0
  br i1 %192, label %193, label %226

193:                                              ; preds = %188
  %194 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %7, align 8
  %195 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %194, i32 0, i32 2
  %196 = load %struct.TYPE_8__*, %struct.TYPE_8__** %195, align 8
  %197 = icmp ne %struct.TYPE_8__* %196, null
  br i1 %197, label %198, label %226

198:                                              ; preds = %193
  %199 = load %struct.vnt_private*, %struct.vnt_private** %9, align 8
  %200 = load i32, i32* @MAC_REG_TFTCTL, align 4
  %201 = load i32, i32* @TFTCTL_TSFCNTREN, align 4
  %202 = call i32 @vnt_mac_reg_bits_on(%struct.vnt_private* %199, i32 %200, i32 %201)
  %203 = load %struct.vnt_private*, %struct.vnt_private** %9, align 8
  %204 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %7, align 8
  %205 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %204, i32 0, i32 2
  %206 = load %struct.TYPE_8__*, %struct.TYPE_8__** %205, align 8
  %207 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %206, i32 0, i32 0
  %208 = load i32, i32* %207, align 4
  %209 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %7, align 8
  %210 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %209, i32 0, i32 1
  %211 = load i32, i32* %210, align 4
  %212 = load %struct.vnt_private*, %struct.vnt_private** %9, align 8
  %213 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %212, i32 0, i32 3
  %214 = load i32, i32* %213, align 8
  %215 = call i32 @vnt_adjust_tsf(%struct.vnt_private* %203, i32 %208, i32 %211, i32 %214)
  %216 = load %struct.vnt_private*, %struct.vnt_private** %9, align 8
  %217 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %7, align 8
  %218 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %217, i32 0, i32 0
  %219 = load i32, i32* %218, align 8
  %220 = call i32 @vnt_mac_set_beacon_interval(%struct.vnt_private* %216, i32 %219)
  %221 = load %struct.vnt_private*, %struct.vnt_private** %9, align 8
  %222 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %7, align 8
  %223 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %222, i32 0, i32 0
  %224 = load i32, i32* %223, align 8
  %225 = call i32 @vnt_reset_next_tbtt(%struct.vnt_private* %221, i32 %224)
  br label %233

226:                                              ; preds = %193, %188
  %227 = load %struct.vnt_private*, %struct.vnt_private** %9, align 8
  %228 = call i32 @vnt_clear_current_tsf(%struct.vnt_private* %227)
  %229 = load %struct.vnt_private*, %struct.vnt_private** %9, align 8
  %230 = load i32, i32* @MAC_REG_TFTCTL, align 4
  %231 = load i32, i32* @TFTCTL_TSFCNTREN, align 4
  %232 = call i32 @vnt_mac_reg_bits_off(%struct.vnt_private* %229, i32 %230, i32 %231)
  br label %233

233:                                              ; preds = %226, %198
  br label %234

234:                                              ; preds = %233, %182, %175
  ret void
}

declare dso_local i32 @vnt_mac_set_bssid_addr(%struct.vnt_private*, i32*) #1

declare dso_local i32 @vnt_update_top_rates(%struct.vnt_private*) #1

declare dso_local i32 @vnt_set_bss_mode(%struct.vnt_private*) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32) #1

declare dso_local i32 @vnt_mac_enable_barker_preamble_mode(%struct.vnt_private*) #1

declare dso_local i32 @vnt_mac_disable_barker_preamble_mode(%struct.vnt_private*) #1

declare dso_local i32 @vnt_mac_enable_protect_mode(%struct.vnt_private*) #1

declare dso_local i32 @vnt_mac_disable_protect_mode(%struct.vnt_private*) #1

declare dso_local i32 @vnt_set_short_slot_time(%struct.vnt_private*) #1

declare dso_local i32 @vnt_update_ifs(%struct.vnt_private*) #1

declare dso_local i32 @vnt_set_vga_gain_offset(%struct.vnt_private*, i32) #1

declare dso_local i32 @vnt_update_pre_ed_threshold(%struct.vnt_private*, i32) #1

declare dso_local i32 @vnt_rf_setpower(%struct.vnt_private*, i32, i32) #1

declare dso_local i32 @vnt_beacon_enable(%struct.vnt_private*, %struct.ieee80211_vif*, %struct.ieee80211_bss_conf*) #1

declare dso_local i32 @vnt_mac_reg_bits_on(%struct.vnt_private*, i32, i32) #1

declare dso_local i32 @vnt_mac_reg_bits_off(%struct.vnt_private*, i32, i32) #1

declare dso_local i32 @vnt_adjust_tsf(%struct.vnt_private*, i32, i32, i32) #1

declare dso_local i32 @vnt_mac_set_beacon_interval(%struct.vnt_private*, i32) #1

declare dso_local i32 @vnt_reset_next_tbtt(%struct.vnt_private*, i32) #1

declare dso_local i32 @vnt_clear_current_tsf(%struct.vnt_private*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
