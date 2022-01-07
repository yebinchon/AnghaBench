; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wl1251/extr_main.c_wl1251_op_configure_filter.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wl1251/extr_main.c_wl1251_op_configure_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { %struct.wl1251* }
%struct.wl1251 = type { i64, i32, i32, i32, i32 }
%struct.wl1251_filter_params = type { i32, i32, i32* }

@DEBUG_MAC80211 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"mac80211 configure filter\00", align 1
@WL1251_SUPPORTED_FILTERS = common dso_local global i32 0, align 4
@WL1251_DEFAULT_RX_CONFIG = common dso_local global i32 0, align 4
@WL1251_DEFAULT_RX_FILTER = common dso_local global i32 0, align 4
@FIF_ALLMULTI = common dso_local global i32 0, align 4
@CFG_MC_FILTER_EN = common dso_local global i32 0, align 4
@FIF_FCSFAIL = common dso_local global i32 0, align 4
@CFG_RX_FCS_ERROR = common dso_local global i32 0, align 4
@FIF_BCN_PRBRESP_PROMISC = common dso_local global i32 0, align 4
@CFG_BSSID_FILTER_EN = common dso_local global i32 0, align 4
@CFG_SSID_FILTER_EN = common dso_local global i32 0, align 4
@FIF_CONTROL = common dso_local global i32 0, align 4
@CFG_RX_CTL_EN = common dso_local global i32 0, align 4
@FIF_OTHER_BSS = common dso_local global i32 0, align 4
@FIF_PROBE_REQ = common dso_local global i32 0, align 4
@CFG_RX_PREQ_EN = common dso_local global i32 0, align 4
@WL1251_STATE_OFF = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*, i32, i32*, i64)* @wl1251_op_configure_filter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wl1251_op_configure_filter(%struct.ieee80211_hw* %0, i32 %1, i32* %2, i64 %3) #0 {
  %5 = alloca %struct.ieee80211_hw*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.wl1251_filter_params*, align 8
  %10 = alloca %struct.wl1251*, align 8
  %11 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i64 %3, i64* %8, align 8
  %12 = load i64, i64* %8, align 8
  %13 = inttoptr i64 %12 to i8*
  %14 = bitcast i8* %13 to %struct.wl1251_filter_params*
  store %struct.wl1251_filter_params* %14, %struct.wl1251_filter_params** %9, align 8
  %15 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %16 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %15, i32 0, i32 0
  %17 = load %struct.wl1251*, %struct.wl1251** %16, align 8
  store %struct.wl1251* %17, %struct.wl1251** %10, align 8
  %18 = load i32, i32* @DEBUG_MAC80211, align 4
  %19 = call i32 @wl1251_debug(i32 %18, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %20 = load i32, i32* @WL1251_SUPPORTED_FILTERS, align 4
  %21 = load i32*, i32** %7, align 8
  %22 = load i32, i32* %21, align 4
  %23 = and i32 %22, %20
  store i32 %23, i32* %21, align 4
  %24 = load i32, i32* @WL1251_SUPPORTED_FILTERS, align 4
  %25 = load i32, i32* %6, align 4
  %26 = and i32 %25, %24
  store i32 %26, i32* %6, align 4
  %27 = load i32, i32* %6, align 4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %4
  %30 = load %struct.wl1251_filter_params*, %struct.wl1251_filter_params** %9, align 8
  %31 = call i32 @kfree(%struct.wl1251_filter_params* %30)
  br label %187

32:                                               ; preds = %4
  %33 = load %struct.wl1251*, %struct.wl1251** %10, align 8
  %34 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %33, i32 0, i32 1
  %35 = call i32 @mutex_lock(i32* %34)
  %36 = load i32, i32* @WL1251_DEFAULT_RX_CONFIG, align 4
  %37 = load %struct.wl1251*, %struct.wl1251** %10, align 8
  %38 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %37, i32 0, i32 3
  store i32 %36, i32* %38, align 8
  %39 = load i32, i32* @WL1251_DEFAULT_RX_FILTER, align 4
  %40 = load %struct.wl1251*, %struct.wl1251** %10, align 8
  %41 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %40, i32 0, i32 2
  store i32 %39, i32* %41, align 4
  %42 = load i32*, i32** %7, align 8
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @FIF_ALLMULTI, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %54

47:                                               ; preds = %32
  %48 = load i32, i32* @CFG_MC_FILTER_EN, align 4
  %49 = xor i32 %48, -1
  %50 = load %struct.wl1251*, %struct.wl1251** %10, align 8
  %51 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %50, i32 0, i32 3
  %52 = load i32, i32* %51, align 8
  %53 = and i32 %52, %49
  store i32 %53, i32* %51, align 8
  br label %54

54:                                               ; preds = %47, %32
  %55 = load i32*, i32** %7, align 8
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @FIF_FCSFAIL, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %66

60:                                               ; preds = %54
  %61 = load i32, i32* @CFG_RX_FCS_ERROR, align 4
  %62 = load %struct.wl1251*, %struct.wl1251** %10, align 8
  %63 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 4
  %65 = or i32 %64, %61
  store i32 %65, i32* %63, align 4
  br label %66

66:                                               ; preds = %60, %54
  %67 = load i32*, i32** %7, align 8
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* @FIF_BCN_PRBRESP_PROMISC, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %85

72:                                               ; preds = %66
  %73 = load i32, i32* @CFG_BSSID_FILTER_EN, align 4
  %74 = xor i32 %73, -1
  %75 = load %struct.wl1251*, %struct.wl1251** %10, align 8
  %76 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %75, i32 0, i32 3
  %77 = load i32, i32* %76, align 8
  %78 = and i32 %77, %74
  store i32 %78, i32* %76, align 8
  %79 = load i32, i32* @CFG_SSID_FILTER_EN, align 4
  %80 = xor i32 %79, -1
  %81 = load %struct.wl1251*, %struct.wl1251** %10, align 8
  %82 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %81, i32 0, i32 3
  %83 = load i32, i32* %82, align 8
  %84 = and i32 %83, %80
  store i32 %84, i32* %82, align 8
  br label %85

85:                                               ; preds = %72, %66
  %86 = load i32*, i32** %7, align 8
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* @FIF_CONTROL, align 4
  %89 = and i32 %87, %88
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %97

91:                                               ; preds = %85
  %92 = load i32, i32* @CFG_RX_CTL_EN, align 4
  %93 = load %struct.wl1251*, %struct.wl1251** %10, align 8
  %94 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 4
  %96 = or i32 %95, %92
  store i32 %96, i32* %94, align 4
  br label %97

97:                                               ; preds = %91, %85
  %98 = load i32*, i32** %7, align 8
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* @FIF_OTHER_BSS, align 4
  %101 = and i32 %99, %100
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %109, label %103

103:                                              ; preds = %97
  %104 = load %struct.wl1251*, %struct.wl1251** %10, align 8
  %105 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %104, i32 0, i32 4
  %106 = load i32, i32* %105, align 4
  %107 = call i64 @is_zero_ether_addr(i32 %106)
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %116

109:                                              ; preds = %103, %97
  %110 = load i32, i32* @CFG_BSSID_FILTER_EN, align 4
  %111 = xor i32 %110, -1
  %112 = load %struct.wl1251*, %struct.wl1251** %10, align 8
  %113 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %112, i32 0, i32 3
  %114 = load i32, i32* %113, align 8
  %115 = and i32 %114, %111
  store i32 %115, i32* %113, align 8
  br label %116

116:                                              ; preds = %109, %103
  %117 = load i32*, i32** %7, align 8
  %118 = load i32, i32* %117, align 4
  %119 = load i32, i32* @FIF_PROBE_REQ, align 4
  %120 = and i32 %118, %119
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %128

122:                                              ; preds = %116
  %123 = load i32, i32* @CFG_RX_PREQ_EN, align 4
  %124 = load %struct.wl1251*, %struct.wl1251** %10, align 8
  %125 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %124, i32 0, i32 2
  %126 = load i32, i32* %125, align 4
  %127 = or i32 %126, %123
  store i32 %127, i32* %125, align 4
  br label %128

128:                                              ; preds = %122, %116
  %129 = load %struct.wl1251*, %struct.wl1251** %10, align 8
  %130 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %129, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  %132 = load i64, i64* @WL1251_STATE_OFF, align 8
  %133 = icmp eq i64 %131, %132
  br i1 %133, label %134, label %135

134:                                              ; preds = %128
  br label %181

135:                                              ; preds = %128
  %136 = load %struct.wl1251*, %struct.wl1251** %10, align 8
  %137 = call i32 @wl1251_ps_elp_wakeup(%struct.wl1251* %136)
  store i32 %137, i32* %11, align 4
  %138 = load i32, i32* %11, align 4
  %139 = icmp slt i32 %138, 0
  br i1 %139, label %140, label %141

140:                                              ; preds = %135
  br label %181

141:                                              ; preds = %135
  %142 = load i32*, i32** %7, align 8
  %143 = load i32, i32* %142, align 4
  %144 = load i32, i32* @FIF_ALLMULTI, align 4
  %145 = and i32 %143, %144
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %150

147:                                              ; preds = %141
  %148 = load %struct.wl1251*, %struct.wl1251** %10, align 8
  %149 = call i32 @wl1251_acx_group_address_tbl(%struct.wl1251* %148, i32 0, i32* null, i32 0)
  store i32 %149, i32* %11, align 4
  br label %166

150:                                              ; preds = %141
  %151 = load %struct.wl1251_filter_params*, %struct.wl1251_filter_params** %9, align 8
  %152 = icmp ne %struct.wl1251_filter_params* %151, null
  br i1 %152, label %153, label %165

153:                                              ; preds = %150
  %154 = load %struct.wl1251*, %struct.wl1251** %10, align 8
  %155 = load %struct.wl1251_filter_params*, %struct.wl1251_filter_params** %9, align 8
  %156 = getelementptr inbounds %struct.wl1251_filter_params, %struct.wl1251_filter_params* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 8
  %158 = load %struct.wl1251_filter_params*, %struct.wl1251_filter_params** %9, align 8
  %159 = getelementptr inbounds %struct.wl1251_filter_params, %struct.wl1251_filter_params* %158, i32 0, i32 2
  %160 = load i32*, i32** %159, align 8
  %161 = load %struct.wl1251_filter_params*, %struct.wl1251_filter_params** %9, align 8
  %162 = getelementptr inbounds %struct.wl1251_filter_params, %struct.wl1251_filter_params* %161, i32 0, i32 1
  %163 = load i32, i32* %162, align 4
  %164 = call i32 @wl1251_acx_group_address_tbl(%struct.wl1251* %154, i32 %157, i32* %160, i32 %163)
  store i32 %164, i32* %11, align 4
  br label %165

165:                                              ; preds = %153, %150
  br label %166

166:                                              ; preds = %165, %147
  %167 = load i32, i32* %11, align 4
  %168 = icmp slt i32 %167, 0
  br i1 %168, label %169, label %170

169:                                              ; preds = %166
  br label %181

170:                                              ; preds = %166
  %171 = load %struct.wl1251*, %struct.wl1251** %10, align 8
  %172 = load %struct.wl1251*, %struct.wl1251** %10, align 8
  %173 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %172, i32 0, i32 3
  %174 = load i32, i32* %173, align 8
  %175 = load %struct.wl1251*, %struct.wl1251** %10, align 8
  %176 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %175, i32 0, i32 2
  %177 = load i32, i32* %176, align 4
  %178 = call i32 @wl1251_acx_rx_config(%struct.wl1251* %171, i32 %174, i32 %177)
  %179 = load %struct.wl1251*, %struct.wl1251** %10, align 8
  %180 = call i32 @wl1251_ps_elp_sleep(%struct.wl1251* %179)
  br label %181

181:                                              ; preds = %170, %169, %140, %134
  %182 = load %struct.wl1251*, %struct.wl1251** %10, align 8
  %183 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %182, i32 0, i32 1
  %184 = call i32 @mutex_unlock(i32* %183)
  %185 = load %struct.wl1251_filter_params*, %struct.wl1251_filter_params** %9, align 8
  %186 = call i32 @kfree(%struct.wl1251_filter_params* %185)
  br label %187

187:                                              ; preds = %181, %29
  ret void
}

declare dso_local i32 @wl1251_debug(i32, i8*) #1

declare dso_local i32 @kfree(%struct.wl1251_filter_params*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @is_zero_ether_addr(i32) #1

declare dso_local i32 @wl1251_ps_elp_wakeup(%struct.wl1251*) #1

declare dso_local i32 @wl1251_acx_group_address_tbl(%struct.wl1251*, i32, i32*, i32) #1

declare dso_local i32 @wl1251_acx_rx_config(%struct.wl1251*, i32, i32) #1

declare dso_local i32 @wl1251_ps_elp_sleep(%struct.wl1251*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
