; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/extr_rc.c__rtl_rc_rate_set_series.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/extr_rc.c__rtl_rc_rate_set_series.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtl_priv = type { i32 }
%struct.ieee80211_sta = type { %struct.TYPE_4__, %struct.TYPE_3__, i64 }
%struct.TYPE_4__ = type { i32, i64 }
%struct.TYPE_3__ = type { i32, i64 }
%struct.ieee80211_tx_rate = type { i32, i32, i32 }
%struct.ieee80211_tx_rate_control = type { i64 }
%struct.rtl_mac = type { i64, i64, i64 }
%struct.rtl_sta_info = type { i64 }

@IEEE80211_HT_CAP_SGI_20 = common dso_local global i32 0, align 4
@IEEE80211_HT_CAP_SGI_40 = common dso_local global i32 0, align 4
@IEEE80211_VHT_CAP_SHORT_GI_80 = common dso_local global i32 0, align 4
@IEEE80211_TX_RC_USE_SHORT_PREAMBLE = common dso_local global i32 0, align 4
@NL80211_IFTYPE_AP = common dso_local global i64 0, align 8
@NL80211_IFTYPE_ADHOC = common dso_local global i64 0, align 8
@IEEE80211_HT_CAP_SUP_WIDTH_20_40 = common dso_local global i32 0, align 4
@IEEE80211_TX_RC_40_MHZ_WIDTH = common dso_local global i32 0, align 4
@IEEE80211_TX_RC_80_MHZ_WIDTH = common dso_local global i32 0, align 4
@IEEE80211_TX_RC_SHORT_GI = common dso_local global i32 0, align 4
@WIRELESS_MODE_N_5G = common dso_local global i64 0, align 8
@WIRELESS_MODE_N_24G = common dso_local global i64 0, align 8
@IEEE80211_TX_RC_MCS = common dso_local global i32 0, align 4
@WIRELESS_MODE_AC_5G = common dso_local global i64 0, align 8
@WIRELESS_MODE_AC_24G = common dso_local global i64 0, align 8
@WIRELESS_MODE_AC_ONLY = common dso_local global i64 0, align 8
@IEEE80211_TX_RC_VHT_MCS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rtl_priv*, %struct.ieee80211_sta*, %struct.ieee80211_tx_rate*, %struct.ieee80211_tx_rate_control*, i32, i32, i32, i32)* @_rtl_rc_rate_set_series to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_rtl_rc_rate_set_series(%struct.rtl_priv* %0, %struct.ieee80211_sta* %1, %struct.ieee80211_tx_rate* %2, %struct.ieee80211_tx_rate_control* %3, i32 %4, i32 %5, i32 %6, i32 %7) #0 {
  %9 = alloca %struct.rtl_priv*, align 8
  %10 = alloca %struct.ieee80211_sta*, align 8
  %11 = alloca %struct.ieee80211_tx_rate*, align 8
  %12 = alloca %struct.ieee80211_tx_rate_control*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.rtl_mac*, align 8
  %18 = alloca %struct.rtl_sta_info*, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store %struct.rtl_priv* %0, %struct.rtl_priv** %9, align 8
  store %struct.ieee80211_sta* %1, %struct.ieee80211_sta** %10, align 8
  store %struct.ieee80211_tx_rate* %2, %struct.ieee80211_tx_rate** %11, align 8
  store %struct.ieee80211_tx_rate_control* %3, %struct.ieee80211_tx_rate_control** %12, align 8
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  store i32 %7, i32* %16, align 4
  %23 = load %struct.rtl_priv*, %struct.rtl_priv** %9, align 8
  %24 = call %struct.rtl_mac* @rtl_mac(%struct.rtl_priv* %23)
  store %struct.rtl_mac* %24, %struct.rtl_mac** %17, align 8
  store %struct.rtl_sta_info* null, %struct.rtl_sta_info** %18, align 8
  store i64 0, i64* %19, align 8
  store i32 0, i32* %20, align 4
  store i32 0, i32* %21, align 4
  store i32 0, i32* %22, align 4
  %25 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %10, align 8
  %26 = icmp ne %struct.ieee80211_sta* %25, null
  br i1 %26, label %27, label %53

27:                                               ; preds = %8
  %28 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %10, align 8
  %29 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @IEEE80211_HT_CAP_SGI_20, align 4
  %33 = and i32 %31, %32
  store i32 %33, i32* %20, align 4
  %34 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %10, align 8
  %35 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @IEEE80211_HT_CAP_SGI_40, align 4
  %39 = and i32 %37, %38
  store i32 %39, i32* %21, align 4
  %40 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %10, align 8
  %41 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* @IEEE80211_VHT_CAP_SHORT_GI_80, align 4
  %45 = and i32 %43, %44
  store i32 %45, i32* %22, align 4
  %46 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %10, align 8
  %47 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %46, i32 0, i32 2
  %48 = load i64, i64* %47, align 8
  %49 = inttoptr i64 %48 to %struct.rtl_sta_info*
  store %struct.rtl_sta_info* %49, %struct.rtl_sta_info** %18, align 8
  %50 = load %struct.rtl_sta_info*, %struct.rtl_sta_info** %18, align 8
  %51 = getelementptr inbounds %struct.rtl_sta_info, %struct.rtl_sta_info* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  store i64 %52, i64* %19, align 8
  br label %53

53:                                               ; preds = %27, %8
  %54 = load i32, i32* %13, align 4
  %55 = load %struct.ieee80211_tx_rate*, %struct.ieee80211_tx_rate** %11, align 8
  %56 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %55, i32 0, i32 0
  store i32 %54, i32* %56, align 4
  %57 = load i32, i32* %14, align 4
  %58 = icmp sge i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %53
  %60 = load i32, i32* %14, align 4
  br label %62

61:                                               ; preds = %53
  br label %62

62:                                               ; preds = %61, %59
  %63 = phi i32 [ %60, %59 ], [ 0, %61 ]
  %64 = load %struct.ieee80211_tx_rate*, %struct.ieee80211_tx_rate** %11, align 8
  %65 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %64, i32 0, i32 1
  store i32 %63, i32* %65, align 4
  %66 = load i32, i32* %16, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %214, label %68

68:                                               ; preds = %62
  %69 = load %struct.ieee80211_tx_rate_control*, %struct.ieee80211_tx_rate_control** %12, align 8
  %70 = getelementptr inbounds %struct.ieee80211_tx_rate_control, %struct.ieee80211_tx_rate_control* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %79

73:                                               ; preds = %68
  %74 = load i32, i32* @IEEE80211_TX_RC_USE_SHORT_PREAMBLE, align 4
  %75 = load %struct.ieee80211_tx_rate*, %struct.ieee80211_tx_rate** %11, align 8
  %76 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 4
  %78 = or i32 %77, %74
  store i32 %78, i32* %76, align 4
  br label %79

79:                                               ; preds = %73, %68
  %80 = load %struct.rtl_mac*, %struct.rtl_mac** %17, align 8
  %81 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* @NL80211_IFTYPE_AP, align 8
  %84 = icmp eq i64 %82, %83
  br i1 %84, label %91, label %85

85:                                               ; preds = %79
  %86 = load %struct.rtl_mac*, %struct.rtl_mac** %17, align 8
  %87 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = load i64, i64* @NL80211_IFTYPE_ADHOC, align 8
  %90 = icmp eq i64 %88, %89
  br i1 %90, label %91, label %124

91:                                               ; preds = %85, %79
  %92 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %10, align 8
  %93 = icmp ne %struct.ieee80211_sta* %92, null
  br i1 %93, label %94, label %108

94:                                               ; preds = %91
  %95 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %10, align 8
  %96 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %95, i32 0, i32 1
  %97 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = load i32, i32* @IEEE80211_HT_CAP_SUP_WIDTH_20_40, align 4
  %100 = and i32 %98, %99
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %108

102:                                              ; preds = %94
  %103 = load i32, i32* @IEEE80211_TX_RC_40_MHZ_WIDTH, align 4
  %104 = load %struct.ieee80211_tx_rate*, %struct.ieee80211_tx_rate** %11, align 8
  %105 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %104, i32 0, i32 2
  %106 = load i32, i32* %105, align 4
  %107 = or i32 %106, %103
  store i32 %107, i32* %105, align 4
  br label %108

108:                                              ; preds = %102, %94, %91
  %109 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %10, align 8
  %110 = icmp ne %struct.ieee80211_sta* %109, null
  br i1 %110, label %111, label %123

111:                                              ; preds = %108
  %112 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %10, align 8
  %113 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %113, i32 0, i32 1
  %115 = load i64, i64* %114, align 8
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %123

117:                                              ; preds = %111
  %118 = load i32, i32* @IEEE80211_TX_RC_80_MHZ_WIDTH, align 4
  %119 = load %struct.ieee80211_tx_rate*, %struct.ieee80211_tx_rate** %11, align 8
  %120 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %119, i32 0, i32 2
  %121 = load i32, i32* %120, align 4
  %122 = or i32 %121, %118
  store i32 %122, i32* %120, align 4
  br label %123

123:                                              ; preds = %117, %111, %108
  br label %148

124:                                              ; preds = %85
  %125 = load %struct.rtl_mac*, %struct.rtl_mac** %17, align 8
  %126 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %125, i32 0, i32 2
  %127 = load i64, i64* %126, align 8
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %135

129:                                              ; preds = %124
  %130 = load i32, i32* @IEEE80211_TX_RC_80_MHZ_WIDTH, align 4
  %131 = load %struct.ieee80211_tx_rate*, %struct.ieee80211_tx_rate** %11, align 8
  %132 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %131, i32 0, i32 2
  %133 = load i32, i32* %132, align 4
  %134 = or i32 %133, %130
  store i32 %134, i32* %132, align 4
  br label %147

135:                                              ; preds = %124
  %136 = load %struct.rtl_mac*, %struct.rtl_mac** %17, align 8
  %137 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %136, i32 0, i32 1
  %138 = load i64, i64* %137, align 8
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %146

140:                                              ; preds = %135
  %141 = load i32, i32* @IEEE80211_TX_RC_40_MHZ_WIDTH, align 4
  %142 = load %struct.ieee80211_tx_rate*, %struct.ieee80211_tx_rate** %11, align 8
  %143 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %142, i32 0, i32 2
  %144 = load i32, i32* %143, align 4
  %145 = or i32 %144, %141
  store i32 %145, i32* %143, align 4
  br label %146

146:                                              ; preds = %140, %135
  br label %147

147:                                              ; preds = %146, %129
  br label %148

148:                                              ; preds = %147, %123
  %149 = load i32, i32* %20, align 4
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %157, label %151

151:                                              ; preds = %148
  %152 = load i32, i32* %21, align 4
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %157, label %154

154:                                              ; preds = %151
  %155 = load i32, i32* %22, align 4
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %163

157:                                              ; preds = %154, %151, %148
  %158 = load i32, i32* @IEEE80211_TX_RC_SHORT_GI, align 4
  %159 = load %struct.ieee80211_tx_rate*, %struct.ieee80211_tx_rate** %11, align 8
  %160 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %159, i32 0, i32 2
  %161 = load i32, i32* %160, align 4
  %162 = or i32 %161, %158
  store i32 %162, i32* %160, align 4
  br label %163

163:                                              ; preds = %157, %154
  %164 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %10, align 8
  %165 = icmp ne %struct.ieee80211_sta* %164, null
  br i1 %165, label %166, label %186

166:                                              ; preds = %163
  %167 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %10, align 8
  %168 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %167, i32 0, i32 1
  %169 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %168, i32 0, i32 1
  %170 = load i64, i64* %169, align 8
  %171 = icmp ne i64 %170, 0
  br i1 %171, label %172, label %186

172:                                              ; preds = %166
  %173 = load i64, i64* %19, align 8
  %174 = load i64, i64* @WIRELESS_MODE_N_5G, align 8
  %175 = icmp eq i64 %173, %174
  br i1 %175, label %180, label %176

176:                                              ; preds = %172
  %177 = load i64, i64* %19, align 8
  %178 = load i64, i64* @WIRELESS_MODE_N_24G, align 8
  %179 = icmp eq i64 %177, %178
  br i1 %179, label %180, label %186

180:                                              ; preds = %176, %172
  %181 = load i32, i32* @IEEE80211_TX_RC_MCS, align 4
  %182 = load %struct.ieee80211_tx_rate*, %struct.ieee80211_tx_rate** %11, align 8
  %183 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %182, i32 0, i32 2
  %184 = load i32, i32* %183, align 4
  %185 = or i32 %184, %181
  store i32 %185, i32* %183, align 4
  br label %186

186:                                              ; preds = %180, %176, %166, %163
  %187 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %10, align 8
  %188 = icmp ne %struct.ieee80211_sta* %187, null
  br i1 %188, label %189, label %213

189:                                              ; preds = %186
  %190 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %10, align 8
  %191 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %190, i32 0, i32 0
  %192 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %191, i32 0, i32 1
  %193 = load i64, i64* %192, align 8
  %194 = icmp ne i64 %193, 0
  br i1 %194, label %195, label %213

195:                                              ; preds = %189
  %196 = load i64, i64* %19, align 8
  %197 = load i64, i64* @WIRELESS_MODE_AC_5G, align 8
  %198 = icmp eq i64 %196, %197
  br i1 %198, label %207, label %199

199:                                              ; preds = %195
  %200 = load i64, i64* %19, align 8
  %201 = load i64, i64* @WIRELESS_MODE_AC_24G, align 8
  %202 = icmp eq i64 %200, %201
  br i1 %202, label %207, label %203

203:                                              ; preds = %199
  %204 = load i64, i64* %19, align 8
  %205 = load i64, i64* @WIRELESS_MODE_AC_ONLY, align 8
  %206 = icmp eq i64 %204, %205
  br i1 %206, label %207, label %213

207:                                              ; preds = %203, %199, %195
  %208 = load i32, i32* @IEEE80211_TX_RC_VHT_MCS, align 4
  %209 = load %struct.ieee80211_tx_rate*, %struct.ieee80211_tx_rate** %11, align 8
  %210 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %209, i32 0, i32 2
  %211 = load i32, i32* %210, align 4
  %212 = or i32 %211, %208
  store i32 %212, i32* %210, align 4
  br label %213

213:                                              ; preds = %207, %203, %189, %186
  br label %214

214:                                              ; preds = %213, %62
  ret void
}

declare dso_local %struct.rtl_mac* @rtl_mac(%struct.rtl_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
