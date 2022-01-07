; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/st/cw1200/extr_sta.c_cw1200_start_ap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/st/cw1200/extr_sta.c_cw1200_start_ap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cw1200_common = type { i32, i32, %struct.TYPE_4__*, i32, i32, i32, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i64, %struct.ieee80211_bss_conf }
%struct.ieee80211_bss_conf = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_3__ = type { i32, i32 }
%struct.wsm_start = type { i32, i32*, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.wsm_operational_mode = type { i32, i32 }

@NL80211_BAND_5GHZ = common dso_local global i32 0, align 4
@WSM_PHY_BAND_5G = common dso_local global i32 0, align 4
@WSM_PHY_BAND_2_4G = common dso_local global i32 0, align 4
@WSM_JOIN_PREAMBLE_SHORT = common dso_local global i32 0, align 4
@WSM_JOIN_PREAMBLE_LONG = common dso_local global i32 0, align 4
@WSM_START_MODE_P2P_GO = common dso_local global i32 0, align 4
@WSM_START_MODE_AP = common dso_local global i32 0, align 4
@cw1200_power_mode = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [56 x i8] c"[AP] ch: %d(%d), bcn: %d(%d), brt: 0x%.8X, ssid: %.*s.\0A\00", align 1
@.str.1 = private unnamed_addr constant [43 x i8] c"[AP] Setting p2p powersave configuration.\0A\00", align 1
@CW1200_JOIN_STATUS_AP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cw1200_common*)* @cw1200_start_ap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cw1200_start_ap(%struct.cw1200_common* %0) #0 {
  %2 = alloca %struct.cw1200_common*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.ieee80211_bss_conf*, align 8
  %5 = alloca %struct.wsm_start, align 8
  %6 = alloca %struct.wsm_operational_mode, align 4
  store %struct.cw1200_common* %0, %struct.cw1200_common** %2, align 8
  %7 = load %struct.cw1200_common*, %struct.cw1200_common** %2, align 8
  %8 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %7, i32 0, i32 2
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 1
  store %struct.ieee80211_bss_conf* %10, %struct.ieee80211_bss_conf** %4, align 8
  %11 = getelementptr inbounds %struct.wsm_start, %struct.wsm_start* %5, i32 0, i32 0
  store i32 100, i32* %11, align 8
  %12 = getelementptr inbounds %struct.wsm_start, %struct.wsm_start* %5, i32 0, i32 1
  store i32* null, i32** %12, align 8
  %13 = getelementptr inbounds %struct.wsm_start, %struct.wsm_start* %5, i32 0, i32 2
  store i32 0, i32* %13, align 8
  %14 = getelementptr inbounds %struct.wsm_start, %struct.wsm_start* %5, i32 0, i32 3
  %15 = load %struct.cw1200_common*, %struct.cw1200_common** %2, align 8
  %16 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %4, align 8
  %17 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %16, i32 0, i32 5
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @cw1200_rate_mask_to_wsm(%struct.cw1200_common* %15, i32 %18)
  store i32 %19, i32* %14, align 4
  %20 = getelementptr inbounds %struct.wsm_start, %struct.wsm_start* %5, i32 0, i32 4
  %21 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %4, align 8
  %22 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %20, align 8
  %24 = getelementptr inbounds %struct.wsm_start, %struct.wsm_start* %5, i32 0, i32 5
  %25 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %4, align 8
  %26 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %24, align 4
  %28 = getelementptr inbounds %struct.wsm_start, %struct.wsm_start* %5, i32 0, i32 6
  %29 = load %struct.cw1200_common*, %struct.cw1200_common** %2, align 8
  %30 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %29, i32 0, i32 6
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @NL80211_BAND_5GHZ, align 4
  %35 = icmp eq i32 %33, %34
  br i1 %35, label %36, label %38

36:                                               ; preds = %1
  %37 = load i32, i32* @WSM_PHY_BAND_5G, align 4
  br label %40

38:                                               ; preds = %1
  %39 = load i32, i32* @WSM_PHY_BAND_2_4G, align 4
  br label %40

40:                                               ; preds = %38, %36
  %41 = phi i32 [ %37, %36 ], [ %39, %38 ]
  store i32 %41, i32* %28, align 8
  %42 = getelementptr inbounds %struct.wsm_start, %struct.wsm_start* %5, i32 0, i32 7
  %43 = load %struct.cw1200_common*, %struct.cw1200_common** %2, align 8
  %44 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %43, i32 0, i32 6
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  store i32 %47, i32* %42, align 4
  %48 = getelementptr inbounds %struct.wsm_start, %struct.wsm_start* %5, i32 0, i32 8
  %49 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %4, align 8
  %50 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %49, i32 0, i32 6
  %51 = load i32, i32* %50, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %40
  %54 = load i32, i32* @WSM_JOIN_PREAMBLE_SHORT, align 4
  br label %57

55:                                               ; preds = %40
  %56 = load i32, i32* @WSM_JOIN_PREAMBLE_LONG, align 4
  br label %57

57:                                               ; preds = %55, %53
  %58 = phi i32 [ %54, %53 ], [ %56, %55 ]
  store i32 %58, i32* %48, align 8
  %59 = getelementptr inbounds %struct.wsm_start, %struct.wsm_start* %5, i32 0, i32 9
  %60 = load %struct.cw1200_common*, %struct.cw1200_common** %2, align 8
  %61 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %60, i32 0, i32 2
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %57
  %67 = load i32, i32* @WSM_START_MODE_P2P_GO, align 4
  br label %70

68:                                               ; preds = %57
  %69 = load i32, i32* @WSM_START_MODE_AP, align 4
  br label %70

70:                                               ; preds = %68, %66
  %71 = phi i32 [ %67, %66 ], [ %69, %68 ]
  store i32 %71, i32* %59, align 4
  %72 = getelementptr inbounds %struct.wsm_operational_mode, %struct.wsm_operational_mode* %6, i32 0, i32 0
  store i32 1, i32* %72, align 4
  %73 = getelementptr inbounds %struct.wsm_operational_mode, %struct.wsm_operational_mode* %6, i32 0, i32 1
  %74 = load i32, i32* @cw1200_power_mode, align 4
  store i32 %74, i32* %73, align 4
  %75 = getelementptr inbounds %struct.wsm_start, %struct.wsm_start* %5, i32 0, i32 1
  %76 = load i32*, i32** %75, align 8
  %77 = call i32 @memset(i32* %76, i32 0, i32 8)
  %78 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %4, align 8
  %79 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %78, i32 0, i32 4
  %80 = load i32, i32* %79, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %95, label %82

82:                                               ; preds = %70
  %83 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %4, align 8
  %84 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %83, i32 0, i32 3
  %85 = load i32, i32* %84, align 4
  %86 = getelementptr inbounds %struct.wsm_start, %struct.wsm_start* %5, i32 0, i32 2
  store i32 %85, i32* %86, align 8
  %87 = getelementptr inbounds %struct.wsm_start, %struct.wsm_start* %5, i32 0, i32 1
  %88 = load i32*, i32** %87, align 8
  %89 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %4, align 8
  %90 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 4
  %92 = getelementptr inbounds %struct.wsm_start, %struct.wsm_start* %5, i32 0, i32 2
  %93 = load i32, i32* %92, align 8
  %94 = call i32 @memcpy(i32* %88, i32 %91, i32 %93)
  br label %95

95:                                               ; preds = %82, %70
  %96 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %4, align 8
  %97 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.cw1200_common*, %struct.cw1200_common** %2, align 8
  %100 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %99, i32 0, i32 5
  store i32 %98, i32* %100, align 8
  %101 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %4, align 8
  %102 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.cw1200_common*, %struct.cw1200_common** %2, align 8
  %105 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %104, i32 0, i32 4
  store i32 %103, i32* %105, align 4
  %106 = load %struct.cw1200_common*, %struct.cw1200_common** %2, align 8
  %107 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %106, i32 0, i32 3
  %108 = call i32 @memset(i32* %107, i32 0, i32 4)
  %109 = getelementptr inbounds %struct.wsm_start, %struct.wsm_start* %5, i32 0, i32 7
  %110 = load i32, i32* %109, align 4
  %111 = getelementptr inbounds %struct.wsm_start, %struct.wsm_start* %5, i32 0, i32 6
  %112 = load i32, i32* %111, align 8
  %113 = getelementptr inbounds %struct.wsm_start, %struct.wsm_start* %5, i32 0, i32 5
  %114 = load i32, i32* %113, align 4
  %115 = getelementptr inbounds %struct.wsm_start, %struct.wsm_start* %5, i32 0, i32 4
  %116 = load i32, i32* %115, align 8
  %117 = getelementptr inbounds %struct.wsm_start, %struct.wsm_start* %5, i32 0, i32 3
  %118 = load i32, i32* %117, align 4
  %119 = getelementptr inbounds %struct.wsm_start, %struct.wsm_start* %5, i32 0, i32 2
  %120 = load i32, i32* %119, align 8
  %121 = getelementptr inbounds %struct.wsm_start, %struct.wsm_start* %5, i32 0, i32 1
  %122 = load i32*, i32** %121, align 8
  %123 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0), i32 %110, i32 %112, i32 %114, i32 %116, i32 %118, i32 %120, i32* %122)
  %124 = load %struct.cw1200_common*, %struct.cw1200_common** %2, align 8
  %125 = call i32 @wsm_start(%struct.cw1200_common* %124, %struct.wsm_start* %5)
  store i32 %125, i32* %3, align 4
  %126 = load i32, i32* %3, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %131, label %128

128:                                              ; preds = %95
  %129 = load %struct.cw1200_common*, %struct.cw1200_common** %2, align 8
  %130 = call i32 @cw1200_upload_keys(%struct.cw1200_common* %129)
  store i32 %130, i32* %3, align 4
  br label %131

131:                                              ; preds = %128, %95
  %132 = load i32, i32* %3, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %147, label %134

134:                                              ; preds = %131
  %135 = load %struct.cw1200_common*, %struct.cw1200_common** %2, align 8
  %136 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %135, i32 0, i32 2
  %137 = load %struct.TYPE_4__*, %struct.TYPE_4__** %136, align 8
  %138 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %137, i32 0, i32 0
  %139 = load i64, i64* %138, align 8
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %147

141:                                              ; preds = %134
  %142 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0))
  %143 = load %struct.cw1200_common*, %struct.cw1200_common** %2, align 8
  %144 = load %struct.cw1200_common*, %struct.cw1200_common** %2, align 8
  %145 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %144, i32 0, i32 1
  %146 = call i32 @wsm_set_p2p_ps_modeinfo(%struct.cw1200_common* %143, i32* %145)
  br label %147

147:                                              ; preds = %141, %134, %131
  %148 = load i32, i32* %3, align 4
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %158, label %150

150:                                              ; preds = %147
  %151 = load %struct.cw1200_common*, %struct.cw1200_common** %2, align 8
  %152 = call i32 @wsm_set_block_ack_policy(%struct.cw1200_common* %151, i32 0, i32 0)
  %153 = load i32, i32* @CW1200_JOIN_STATUS_AP, align 4
  %154 = load %struct.cw1200_common*, %struct.cw1200_common** %2, align 8
  %155 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %154, i32 0, i32 0
  store i32 %153, i32* %155, align 8
  %156 = load %struct.cw1200_common*, %struct.cw1200_common** %2, align 8
  %157 = call i32 @cw1200_update_filtering(%struct.cw1200_common* %156)
  br label %158

158:                                              ; preds = %150, %147
  %159 = load %struct.cw1200_common*, %struct.cw1200_common** %2, align 8
  %160 = call i32 @wsm_set_operational_mode(%struct.cw1200_common* %159, %struct.wsm_operational_mode* %6)
  %161 = load i32, i32* %3, align 4
  ret i32 %161
}

declare dso_local i32 @cw1200_rate_mask_to_wsm(%struct.cw1200_common*, i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

declare dso_local i32 @pr_debug(i8*, ...) #1

declare dso_local i32 @wsm_start(%struct.cw1200_common*, %struct.wsm_start*) #1

declare dso_local i32 @cw1200_upload_keys(%struct.cw1200_common*) #1

declare dso_local i32 @wsm_set_p2p_ps_modeinfo(%struct.cw1200_common*, i32*) #1

declare dso_local i32 @wsm_set_block_ack_policy(%struct.cw1200_common*, i32, i32) #1

declare dso_local i32 @cw1200_update_filtering(%struct.cw1200_common*) #1

declare dso_local i32 @wsm_set_operational_mode(%struct.cw1200_common*, %struct.wsm_operational_mode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
