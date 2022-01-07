; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192se/extr_dm.c__rtl92s_dm_initial_gain_sta_beforeconnect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192se/extr_dm.c__rtl92s_dm_initial_gain_sta_beforeconnect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_priv = type { %struct.TYPE_4__, %struct.TYPE_3__, %struct.false_alarm_statistics, %struct.dig_t }
%struct.TYPE_4__ = type { i32* }
%struct.TYPE_3__ = type { i64 }
%struct.false_alarm_statistics = type { i32 }
%struct.dig_t = type { i64, i64, i64, i64, i64, i64, i64, i32, i32, i64 }

@_rtl92s_dm_initial_gain_sta_beforeconnect.initialized = internal global i32 0, align 4
@_rtl92s_dm_initial_gain_sta_beforeconnect.force_write = internal global i32 0, align 4
@DIG_STA_BEFORE_CONNECT = common dso_local global i64 0, align 8
@ERFON = common dso_local global i64 0, align 8
@DM_DIG_BACKOFF_MAX = common dso_local global i8* null, align 8
@DIG_EXT_PORT_STAGE_MAX = common dso_local global i32 0, align 4
@FW_CMD_DIG_ENABLE = common dso_local global i32 0, align 4
@ROFDM0_XAAGCCORE1 = common dso_local global i32 0, align 4
@MASKBYTE0 = common dso_local global i32 0, align 4
@FW_CMD_DIG_DISABLE = common dso_local global i32 0, align 4
@ROFDM0_XBAGCCORE1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*)* @_rtl92s_dm_initial_gain_sta_beforeconnect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_rtl92s_dm_initial_gain_sta_beforeconnect(%struct.ieee80211_hw* %0) #0 {
  %2 = alloca %struct.ieee80211_hw*, align 8
  %3 = alloca %struct.rtl_priv*, align 8
  %4 = alloca %struct.dig_t*, align 8
  %5 = alloca %struct.false_alarm_statistics*, align 8
  %6 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %2, align 8
  %7 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %8 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %7)
  store %struct.rtl_priv* %8, %struct.rtl_priv** %3, align 8
  %9 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %10 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %9, i32 0, i32 3
  store %struct.dig_t* %10, %struct.dig_t** %4, align 8
  %11 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %12 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %11, i32 0, i32 2
  store %struct.false_alarm_statistics* %12, %struct.false_alarm_statistics** %5, align 8
  store i32 0, i32* %6, align 4
  %13 = load %struct.dig_t*, %struct.dig_t** %4, align 8
  %14 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load %struct.dig_t*, %struct.dig_t** %4, align 8
  %17 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = icmp eq i64 %15, %18
  br i1 %19, label %26, label %20

20:                                               ; preds = %1
  %21 = load %struct.dig_t*, %struct.dig_t** %4, align 8
  %22 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @DIG_STA_BEFORE_CONNECT, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %136

26:                                               ; preds = %20, %1
  %27 = load %struct.dig_t*, %struct.dig_t** %4, align 8
  %28 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @DIG_STA_BEFORE_CONNECT, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %134

32:                                               ; preds = %26
  %33 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %34 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @ERFON, align 8
  %38 = icmp ne i64 %36, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %32
  br label %207

40:                                               ; preds = %32
  %41 = load %struct.dig_t*, %struct.dig_t** %4, align 8
  %42 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %41, i32 0, i32 9
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %40
  %46 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %47 = call i32 @rtl92s_backoff_enable_flag(%struct.ieee80211_hw* %46)
  br label %53

48:                                               ; preds = %40
  %49 = load i8*, i8** @DM_DIG_BACKOFF_MAX, align 8
  %50 = ptrtoint i8* %49 to i64
  %51 = load %struct.dig_t*, %struct.dig_t** %4, align 8
  %52 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %51, i32 0, i32 2
  store i64 %50, i64* %52, align 8
  br label %53

53:                                               ; preds = %48, %45
  %54 = load %struct.dig_t*, %struct.dig_t** %4, align 8
  %55 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %54, i32 0, i32 3
  %56 = load i64, i64* %55, align 8
  %57 = add nsw i64 %56, 10
  %58 = load %struct.dig_t*, %struct.dig_t** %4, align 8
  %59 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %58, i32 0, i32 2
  %60 = load i64, i64* %59, align 8
  %61 = sub nsw i64 %57, %60
  %62 = load %struct.dig_t*, %struct.dig_t** %4, align 8
  %63 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %62, i32 0, i32 4
  %64 = load i64, i64* %63, align 8
  %65 = icmp sgt i64 %61, %64
  br i1 %65, label %66, label %72

66:                                               ; preds = %53
  %67 = load %struct.dig_t*, %struct.dig_t** %4, align 8
  %68 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %67, i32 0, i32 4
  %69 = load i64, i64* %68, align 8
  %70 = load %struct.dig_t*, %struct.dig_t** %4, align 8
  %71 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %70, i32 0, i32 5
  store i64 %69, i64* %71, align 8
  br label %103

72:                                               ; preds = %53
  %73 = load %struct.dig_t*, %struct.dig_t** %4, align 8
  %74 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %73, i32 0, i32 3
  %75 = load i64, i64* %74, align 8
  %76 = add nsw i64 %75, 10
  %77 = load %struct.dig_t*, %struct.dig_t** %4, align 8
  %78 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %77, i32 0, i32 2
  %79 = load i64, i64* %78, align 8
  %80 = sub nsw i64 %76, %79
  %81 = load %struct.dig_t*, %struct.dig_t** %4, align 8
  %82 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %81, i32 0, i32 6
  %83 = load i64, i64* %82, align 8
  %84 = icmp slt i64 %80, %83
  br i1 %84, label %85, label %91

85:                                               ; preds = %72
  %86 = load %struct.dig_t*, %struct.dig_t** %4, align 8
  %87 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %86, i32 0, i32 6
  %88 = load i64, i64* %87, align 8
  %89 = load %struct.dig_t*, %struct.dig_t** %4, align 8
  %90 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %89, i32 0, i32 5
  store i64 %88, i64* %90, align 8
  br label %102

91:                                               ; preds = %72
  %92 = load %struct.dig_t*, %struct.dig_t** %4, align 8
  %93 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %92, i32 0, i32 3
  %94 = load i64, i64* %93, align 8
  %95 = add nsw i64 %94, 10
  %96 = load %struct.dig_t*, %struct.dig_t** %4, align 8
  %97 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %96, i32 0, i32 2
  %98 = load i64, i64* %97, align 8
  %99 = sub nsw i64 %95, %98
  %100 = load %struct.dig_t*, %struct.dig_t** %4, align 8
  %101 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %100, i32 0, i32 5
  store i64 %99, i64* %101, align 8
  br label %102

102:                                              ; preds = %91, %85
  br label %103

103:                                              ; preds = %102, %66
  %104 = load %struct.false_alarm_statistics*, %struct.false_alarm_statistics** %5, align 8
  %105 = getelementptr inbounds %struct.false_alarm_statistics, %struct.false_alarm_statistics* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = icmp sgt i32 %106, 10000
  br i1 %107, label %108, label %122

108:                                              ; preds = %103
  %109 = load %struct.dig_t*, %struct.dig_t** %4, align 8
  %110 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %109, i32 0, i32 5
  %111 = load i64, i64* %110, align 8
  %112 = icmp sgt i64 %111, 51
  br i1 %112, label %113, label %117

113:                                              ; preds = %108
  %114 = load %struct.dig_t*, %struct.dig_t** %4, align 8
  %115 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %114, i32 0, i32 5
  %116 = load i64, i64* %115, align 8
  br label %118

117:                                              ; preds = %108
  br label %118

118:                                              ; preds = %117, %113
  %119 = phi i64 [ %116, %113 ], [ 51, %117 ]
  %120 = load %struct.dig_t*, %struct.dig_t** %4, align 8
  %121 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %120, i32 0, i32 5
  store i64 %119, i64* %121, align 8
  br label %122

122:                                              ; preds = %118, %103
  %123 = load %struct.false_alarm_statistics*, %struct.false_alarm_statistics** %5, align 8
  %124 = getelementptr inbounds %struct.false_alarm_statistics, %struct.false_alarm_statistics* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = icmp sgt i32 %125, 16000
  br i1 %126, label %127, label %133

127:                                              ; preds = %122
  %128 = load %struct.dig_t*, %struct.dig_t** %4, align 8
  %129 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %128, i32 0, i32 4
  %130 = load i64, i64* %129, align 8
  %131 = load %struct.dig_t*, %struct.dig_t** %4, align 8
  %132 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %131, i32 0, i32 5
  store i64 %130, i64* %132, align 8
  br label %133

133:                                              ; preds = %127, %122
  br label %135

134:                                              ; preds = %26
  br label %207

135:                                              ; preds = %133
  br label %158

136:                                              ; preds = %20
  %137 = load i32, i32* @DIG_EXT_PORT_STAGE_MAX, align 4
  %138 = load %struct.dig_t*, %struct.dig_t** %4, align 8
  %139 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %138, i32 0, i32 8
  store i32 %137, i32* %139, align 4
  %140 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %141 = load i32, i32* @FW_CMD_DIG_ENABLE, align 4
  %142 = call i32 @rtl92s_phy_set_fw_cmd(%struct.ieee80211_hw* %140, i32 %141)
  %143 = load i8*, i8** @DM_DIG_BACKOFF_MAX, align 8
  %144 = ptrtoint i8* %143 to i64
  %145 = load %struct.dig_t*, %struct.dig_t** %4, align 8
  %146 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %145, i32 0, i32 2
  store i64 %144, i64* %146, align 8
  %147 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %148 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %147, i32 0, i32 0
  %149 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %148, i32 0, i32 0
  %150 = load i32*, i32** %149, align 8
  %151 = getelementptr inbounds i32, i32* %150, i64 0
  %152 = load i32, i32* %151, align 4
  %153 = sext i32 %152 to i64
  %154 = load %struct.dig_t*, %struct.dig_t** %4, align 8
  %155 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %154, i32 0, i32 5
  store i64 %153, i64* %155, align 8
  %156 = load %struct.dig_t*, %struct.dig_t** %4, align 8
  %157 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %156, i32 0, i32 7
  store i32 0, i32* %157, align 8
  br label %207

158:                                              ; preds = %135
  %159 = load %struct.dig_t*, %struct.dig_t** %4, align 8
  %160 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %159, i32 0, i32 7
  %161 = load i32, i32* %160, align 8
  %162 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %163 = load i32, i32* @ROFDM0_XAAGCCORE1, align 4
  %164 = load i32, i32* @MASKBYTE0, align 4
  %165 = call i32 @rtl_get_bbreg(%struct.ieee80211_hw* %162, i32 %163, i32 %164)
  %166 = icmp ne i32 %161, %165
  br i1 %166, label %167, label %168

167:                                              ; preds = %158
  store i32 1, i32* @_rtl92s_dm_initial_gain_sta_beforeconnect.force_write, align 4
  br label %168

168:                                              ; preds = %167, %158
  %169 = load %struct.dig_t*, %struct.dig_t** %4, align 8
  %170 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %169, i32 0, i32 7
  %171 = load i32, i32* %170, align 8
  %172 = sext i32 %171 to i64
  %173 = load %struct.dig_t*, %struct.dig_t** %4, align 8
  %174 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %173, i32 0, i32 5
  %175 = load i64, i64* %174, align 8
  %176 = icmp ne i64 %172, %175
  br i1 %176, label %183, label %177

177:                                              ; preds = %168
  %178 = load i32, i32* @_rtl92s_dm_initial_gain_sta_beforeconnect.initialized, align 4
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %183

180:                                              ; preds = %177
  %181 = load i32, i32* @_rtl92s_dm_initial_gain_sta_beforeconnect.force_write, align 4
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %183, label %207

183:                                              ; preds = %180, %177, %168
  %184 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %185 = load i32, i32* @FW_CMD_DIG_DISABLE, align 4
  %186 = call i32 @rtl92s_phy_set_fw_cmd(%struct.ieee80211_hw* %184, i32 %185)
  %187 = load %struct.dig_t*, %struct.dig_t** %4, align 8
  %188 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %187, i32 0, i32 5
  %189 = load i64, i64* %188, align 8
  %190 = trunc i64 %189 to i32
  store i32 %190, i32* %6, align 4
  %191 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %192 = load i32, i32* @ROFDM0_XAAGCCORE1, align 4
  %193 = load i32, i32* @MASKBYTE0, align 4
  %194 = load i32, i32* %6, align 4
  %195 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %191, i32 %192, i32 %193, i32 %194)
  %196 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %197 = load i32, i32* @ROFDM0_XBAGCCORE1, align 4
  %198 = load i32, i32* @MASKBYTE0, align 4
  %199 = load i32, i32* %6, align 4
  %200 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %196, i32 %197, i32 %198, i32 %199)
  %201 = load %struct.dig_t*, %struct.dig_t** %4, align 8
  %202 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %201, i32 0, i32 5
  %203 = load i64, i64* %202, align 8
  %204 = trunc i64 %203 to i32
  %205 = load %struct.dig_t*, %struct.dig_t** %4, align 8
  %206 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %205, i32 0, i32 7
  store i32 %204, i32* %206, align 8
  store i32 1, i32* @_rtl92s_dm_initial_gain_sta_beforeconnect.initialized, align 4
  store i32 0, i32* @_rtl92s_dm_initial_gain_sta_beforeconnect.force_write, align 4
  br label %207

207:                                              ; preds = %39, %134, %136, %183, %180
  ret void
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local i32 @rtl92s_backoff_enable_flag(%struct.ieee80211_hw*) #1

declare dso_local i32 @rtl92s_phy_set_fw_cmd(%struct.ieee80211_hw*, i32) #1

declare dso_local i32 @rtl_get_bbreg(%struct.ieee80211_hw*, i32, i32) #1

declare dso_local i32 @rtl_set_bbreg(%struct.ieee80211_hw*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
