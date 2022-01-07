; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wlcore/extr_rx.c_wl1271_rx_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wlcore/extr_rx.c_wl1271_rx_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wl1271 = type { i64, i32 }
%struct.wl1271_rx_descriptor = type { i32, i64, i32, i32, i32, i64 }
%struct.ieee80211_rx_status = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@WL1271_RX_DESC_BAND_MASK = common dso_local global i32 0, align 4
@WL1271_RX_DESC_BAND_BG = common dso_local global i32 0, align 4
@NL80211_BAND_2GHZ = common dso_local global i32 0, align 4
@NL80211_BAND_5GHZ = common dso_local global i32 0, align 4
@RX_ENC_HT = common dso_local global i32 0, align 4
@RSSI_LEVEL_BITMASK = common dso_local global i32 0, align 4
@ANT_DIVERSITY_BITMASK = common dso_local global i32 0, align 4
@WL1271_RX_DESC_ENCRYPT_MASK = common dso_local global i32 0, align 4
@WL1271_RX_DESC_STATUS_MASK = common dso_local global i32 0, align 4
@RX_FLAG_IV_STRIPPED = common dso_local global i32 0, align 4
@RX_FLAG_MMIC_STRIPPED = common dso_local global i32 0, align 4
@RX_FLAG_DECRYPTED = common dso_local global i32 0, align 4
@WL1271_RX_DESC_MIC_FAIL = common dso_local global i32 0, align 4
@RX_FLAG_MMIC_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Michael MIC error. Desc: 0x%x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wl1271*, %struct.wl1271_rx_descriptor*, %struct.ieee80211_rx_status*, i32, i32)* @wl1271_rx_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wl1271_rx_status(%struct.wl1271* %0, %struct.wl1271_rx_descriptor* %1, %struct.ieee80211_rx_status* %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.wl1271*, align 8
  %7 = alloca %struct.wl1271_rx_descriptor*, align 8
  %8 = alloca %struct.ieee80211_rx_status*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.wl1271* %0, %struct.wl1271** %6, align 8
  store %struct.wl1271_rx_descriptor* %1, %struct.wl1271_rx_descriptor** %7, align 8
  store %struct.ieee80211_rx_status* %2, %struct.ieee80211_rx_status** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %12 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %8, align 8
  %13 = call i32 @memset(%struct.ieee80211_rx_status* %12, i32 0, i32 32)
  %14 = load %struct.wl1271_rx_descriptor*, %struct.wl1271_rx_descriptor** %7, align 8
  %15 = getelementptr inbounds %struct.wl1271_rx_descriptor, %struct.wl1271_rx_descriptor* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @WL1271_RX_DESC_BAND_MASK, align 4
  %18 = and i32 %16, %17
  %19 = load i32, i32* @WL1271_RX_DESC_BAND_BG, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %21, label %25

21:                                               ; preds = %5
  %22 = load i32, i32* @NL80211_BAND_2GHZ, align 4
  %23 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %8, align 8
  %24 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %23, i32 0, i32 3
  store i32 %22, i32* %24, align 4
  br label %29

25:                                               ; preds = %5
  %26 = load i32, i32* @NL80211_BAND_5GHZ, align 4
  %27 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %8, align 8
  %28 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %27, i32 0, i32 3
  store i32 %26, i32* %28, align 4
  br label %29

29:                                               ; preds = %25, %21
  %30 = load %struct.wl1271*, %struct.wl1271** %6, align 8
  %31 = load %struct.wl1271_rx_descriptor*, %struct.wl1271_rx_descriptor** %7, align 8
  %32 = getelementptr inbounds %struct.wl1271_rx_descriptor, %struct.wl1271_rx_descriptor* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %8, align 8
  %35 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @wlcore_rate_to_idx(%struct.wl1271* %30, i64 %33, i32 %36)
  %38 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %8, align 8
  %39 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %38, i32 0, i32 7
  store i32 %37, i32* %39, align 4
  %40 = load %struct.wl1271_rx_descriptor*, %struct.wl1271_rx_descriptor** %7, align 8
  %41 = getelementptr inbounds %struct.wl1271_rx_descriptor, %struct.wl1271_rx_descriptor* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.wl1271*, %struct.wl1271** %6, align 8
  %44 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp sle i64 %42, %45
  br i1 %46, label %47, label %51

47:                                               ; preds = %29
  %48 = load i32, i32* @RX_ENC_HT, align 4
  %49 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %8, align 8
  %50 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %49, i32 0, i32 6
  store i32 %48, i32* %50, align 4
  br label %51

51:                                               ; preds = %47, %29
  %52 = load %struct.wl1271_rx_descriptor*, %struct.wl1271_rx_descriptor** %7, align 8
  %53 = getelementptr inbounds %struct.wl1271_rx_descriptor, %struct.wl1271_rx_descriptor* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* @RSSI_LEVEL_BITMASK, align 4
  %56 = and i32 %54, %55
  %57 = call i32 @BIT(i32 7)
  %58 = or i32 %56, %57
  %59 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %8, align 8
  %60 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %59, i32 0, i32 0
  store i32 %58, i32* %60, align 4
  %61 = load %struct.wl1271_rx_descriptor*, %struct.wl1271_rx_descriptor** %7, align 8
  %62 = getelementptr inbounds %struct.wl1271_rx_descriptor, %struct.wl1271_rx_descriptor* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* @ANT_DIVERSITY_BITMASK, align 4
  %65 = and i32 %63, %64
  %66 = ashr i32 %65, 7
  %67 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %8, align 8
  %68 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %67, i32 0, i32 1
  store i32 %66, i32* %68, align 4
  %69 = load %struct.wl1271_rx_descriptor*, %struct.wl1271_rx_descriptor** %7, align 8
  %70 = getelementptr inbounds %struct.wl1271_rx_descriptor, %struct.wl1271_rx_descriptor* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 8
  %72 = load %struct.wl1271_rx_descriptor*, %struct.wl1271_rx_descriptor** %7, align 8
  %73 = getelementptr inbounds %struct.wl1271_rx_descriptor, %struct.wl1271_rx_descriptor* %72, i32 0, i32 3
  %74 = load i32, i32* %73, align 4
  %75 = ashr i32 %74, 1
  %76 = sub nsw i32 %71, %75
  %77 = load %struct.wl1271*, %struct.wl1271** %6, align 8
  %78 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %77, i32 0, i32 1
  store i32 %76, i32* %78, align 8
  %79 = load %struct.wl1271_rx_descriptor*, %struct.wl1271_rx_descriptor** %7, align 8
  %80 = getelementptr inbounds %struct.wl1271_rx_descriptor, %struct.wl1271_rx_descriptor* %79, i32 0, i32 5
  %81 = load i64, i64* %80, align 8
  %82 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %8, align 8
  %83 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %82, i32 0, i32 3
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @ieee80211_channel_to_frequency(i64 %81, i32 %84)
  %86 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %8, align 8
  %87 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %86, i32 0, i32 5
  store i32 %85, i32* %87, align 4
  %88 = load %struct.wl1271_rx_descriptor*, %struct.wl1271_rx_descriptor** %7, align 8
  %89 = getelementptr inbounds %struct.wl1271_rx_descriptor, %struct.wl1271_rx_descriptor* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = load i32, i32* @WL1271_RX_DESC_ENCRYPT_MASK, align 4
  %92 = and i32 %90, %91
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %123

94:                                               ; preds = %51
  %95 = load %struct.wl1271_rx_descriptor*, %struct.wl1271_rx_descriptor** %7, align 8
  %96 = getelementptr inbounds %struct.wl1271_rx_descriptor, %struct.wl1271_rx_descriptor* %95, i32 0, i32 4
  %97 = load i32, i32* %96, align 8
  %98 = load i32, i32* @WL1271_RX_DESC_STATUS_MASK, align 4
  %99 = and i32 %97, %98
  store i32 %99, i32* %11, align 4
  %100 = load i32, i32* @RX_FLAG_IV_STRIPPED, align 4
  %101 = load i32, i32* @RX_FLAG_MMIC_STRIPPED, align 4
  %102 = or i32 %100, %101
  %103 = load i32, i32* @RX_FLAG_DECRYPTED, align 4
  %104 = or i32 %102, %103
  %105 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %8, align 8
  %106 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 4
  %108 = or i32 %107, %104
  store i32 %108, i32* %106, align 4
  %109 = load i32, i32* %11, align 4
  %110 = load i32, i32* @WL1271_RX_DESC_MIC_FAIL, align 4
  %111 = and i32 %109, %110
  %112 = call i64 @unlikely(i32 %111)
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %122

114:                                              ; preds = %94
  %115 = load i32, i32* @RX_FLAG_MMIC_ERROR, align 4
  %116 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %8, align 8
  %117 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %116, i32 0, i32 2
  %118 = load i32, i32* %117, align 4
  %119 = or i32 %118, %115
  store i32 %119, i32* %117, align 4
  %120 = load i32, i32* %11, align 4
  %121 = call i32 @wl1271_warning(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %120)
  br label %122

122:                                              ; preds = %114, %94
  br label %123

123:                                              ; preds = %122, %51
  %124 = load i32, i32* %9, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %129, label %126

126:                                              ; preds = %123
  %127 = load i32, i32* %10, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %133

129:                                              ; preds = %126, %123
  %130 = call i32 (...) @ktime_get_boottime_ns()
  %131 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %8, align 8
  %132 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %131, i32 0, i32 4
  store i32 %130, i32* %132, align 4
  br label %133

133:                                              ; preds = %129, %126
  %134 = load i32, i32* %9, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %146

136:                                              ; preds = %133
  %137 = load %struct.wl1271*, %struct.wl1271** %6, align 8
  %138 = load %struct.wl1271_rx_descriptor*, %struct.wl1271_rx_descriptor** %7, align 8
  %139 = getelementptr inbounds %struct.wl1271_rx_descriptor, %struct.wl1271_rx_descriptor* %138, i32 0, i32 5
  %140 = load i64, i64* %139, align 8
  %141 = trunc i64 %140 to i32
  %142 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %8, align 8
  %143 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %142, i32 0, i32 3
  %144 = load i32, i32* %143, align 4
  %145 = call i32 @wlcore_set_pending_regdomain_ch(%struct.wl1271* %137, i32 %141, i32 %144)
  br label %146

146:                                              ; preds = %136, %133
  ret void
}

declare dso_local i32 @memset(%struct.ieee80211_rx_status*, i32, i32) #1

declare dso_local i32 @wlcore_rate_to_idx(%struct.wl1271*, i64, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @ieee80211_channel_to_frequency(i64, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @wl1271_warning(i8*, i32) #1

declare dso_local i32 @ktime_get_boottime_ns(...) #1

declare dso_local i32 @wlcore_set_pending_regdomain_ch(%struct.wl1271*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
