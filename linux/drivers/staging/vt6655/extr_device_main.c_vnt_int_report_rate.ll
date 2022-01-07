; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/vt6655/extr_device_main.c_vnt_int_report_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/vt6655/extr_device_main.c_vnt_int_report_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnt_private = type { i32 }
%struct.vnt_td_info = type { i32, i64 }
%struct.vnt_tx_fifo_head = type { i32 }
%struct.ieee80211_tx_info = type { i64, i32, %struct.TYPE_8__, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.ieee80211_rate = type { i32 }

@TSR0_NCR = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@FIFOCTL_AUTO_FB_0 = common dso_local global i32 0, align 4
@FIFOCTL_AUTO_FB_1 = common dso_local global i32 0, align 4
@TSR1_TERR = common dso_local global i32 0, align 4
@RATE_18M = common dso_local global i32 0, align 4
@fallback_rate0 = common dso_local global i32** null, align 8
@fallback_rate1 = common dso_local global i32** null, align 8
@NL80211_BAND_5GHZ = common dso_local global i64 0, align 8
@RATE_6M = common dso_local global i32 0, align 4
@IEEE80211_TX_CTL_NO_ACK = common dso_local global i32 0, align 4
@IEEE80211_TX_STAT_NOACK_TRANSMITTED = common dso_local global i32 0, align 4
@IEEE80211_TX_STAT_ACK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vnt_private*, %struct.vnt_td_info*, i32, i32)* @vnt_int_report_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vnt_int_report_rate(%struct.vnt_private* %0, %struct.vnt_td_info* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.vnt_private*, align 8
  %7 = alloca %struct.vnt_td_info*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.vnt_tx_fifo_head*, align 8
  %11 = alloca %struct.ieee80211_tx_info*, align 8
  %12 = alloca %struct.ieee80211_rate*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.vnt_private* %0, %struct.vnt_private** %6, align 8
  store %struct.vnt_td_info* %1, %struct.vnt_td_info** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %18 = load i32, i32* %8, align 4
  %19 = load i32, i32* @TSR0_NCR, align 4
  %20 = and i32 %18, %19
  store i32 %20, i32* %14, align 4
  %21 = load %struct.vnt_td_info*, %struct.vnt_td_info** %7, align 8
  %22 = icmp ne %struct.vnt_td_info* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %4
  %24 = load i32, i32* @ENOMEM, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %5, align 4
  br label %166

26:                                               ; preds = %4
  %27 = load %struct.vnt_td_info*, %struct.vnt_td_info** %7, align 8
  %28 = getelementptr inbounds %struct.vnt_td_info, %struct.vnt_td_info* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %34, label %31

31:                                               ; preds = %26
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %5, align 4
  br label %166

34:                                               ; preds = %26
  %35 = load %struct.vnt_td_info*, %struct.vnt_td_info** %7, align 8
  %36 = getelementptr inbounds %struct.vnt_td_info, %struct.vnt_td_info* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = inttoptr i64 %37 to %struct.vnt_tx_fifo_head*
  store %struct.vnt_tx_fifo_head* %38, %struct.vnt_tx_fifo_head** %10, align 8
  %39 = load %struct.vnt_tx_fifo_head*, %struct.vnt_tx_fifo_head** %10, align 8
  %40 = getelementptr inbounds %struct.vnt_tx_fifo_head, %struct.vnt_tx_fifo_head* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @le16_to_cpu(i32 %41)
  %43 = load i32, i32* @FIFOCTL_AUTO_FB_0, align 4
  %44 = load i32, i32* @FIFOCTL_AUTO_FB_1, align 4
  %45 = or i32 %43, %44
  %46 = and i32 %42, %45
  store i32 %46, i32* %13, align 4
  %47 = load %struct.vnt_td_info*, %struct.vnt_td_info** %7, align 8
  %48 = getelementptr inbounds %struct.vnt_td_info, %struct.vnt_td_info* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = call %struct.ieee80211_tx_info* @IEEE80211_SKB_CB(i32 %49)
  store %struct.ieee80211_tx_info* %50, %struct.ieee80211_tx_info** %11, align 8
  %51 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %11, align 8
  %52 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %51, i32 0, i32 3
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 0
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i64 0
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  store i32 %57, i32* %15, align 4
  %58 = load i32, i32* %13, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %124

60:                                               ; preds = %34
  %61 = load i32, i32* %9, align 4
  %62 = load i32, i32* @TSR1_TERR, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %124, label %65

65:                                               ; preds = %60
  %66 = load i32, i32* %14, align 4
  store i32 %66, i32* %17, align 4
  %67 = load %struct.vnt_private*, %struct.vnt_private** %6, align 8
  %68 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %11, align 8
  %71 = call %struct.ieee80211_rate* @ieee80211_get_tx_rate(i32 %69, %struct.ieee80211_tx_info* %70)
  store %struct.ieee80211_rate* %71, %struct.ieee80211_rate** %12, align 8
  %72 = load %struct.ieee80211_rate*, %struct.ieee80211_rate** %12, align 8
  %73 = getelementptr inbounds %struct.ieee80211_rate, %struct.ieee80211_rate* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* @RATE_18M, align 4
  %76 = sub nsw i32 %74, %75
  store i32 %76, i32* %16, align 4
  %77 = load i32, i32* %17, align 4
  %78 = icmp sgt i32 %77, 4
  br i1 %78, label %79, label %80

79:                                               ; preds = %65
  store i32 4, i32* %17, align 4
  br label %80

80:                                               ; preds = %79, %65
  %81 = load i32, i32* %13, align 4
  %82 = load i32, i32* @FIFOCTL_AUTO_FB_0, align 4
  %83 = and i32 %81, %82
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %95

85:                                               ; preds = %80
  %86 = load i32**, i32*** @fallback_rate0, align 8
  %87 = load i32, i32* %16, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i32*, i32** %86, i64 %88
  %90 = load i32*, i32** %89, align 8
  %91 = load i32, i32* %17, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i32, i32* %90, i64 %92
  %94 = load i32, i32* %93, align 4
  store i32 %94, i32* %16, align 4
  br label %111

95:                                               ; preds = %80
  %96 = load i32, i32* %13, align 4
  %97 = load i32, i32* @FIFOCTL_AUTO_FB_1, align 4
  %98 = and i32 %96, %97
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %110

100:                                              ; preds = %95
  %101 = load i32**, i32*** @fallback_rate1, align 8
  %102 = load i32, i32* %16, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i32*, i32** %101, i64 %103
  %105 = load i32*, i32** %104, align 8
  %106 = load i32, i32* %17, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i32, i32* %105, i64 %107
  %109 = load i32, i32* %108, align 4
  store i32 %109, i32* %16, align 4
  br label %110

110:                                              ; preds = %100, %95
  br label %111

111:                                              ; preds = %110, %85
  %112 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %11, align 8
  %113 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = load i64, i64* @NL80211_BAND_5GHZ, align 8
  %116 = icmp eq i64 %114, %115
  br i1 %116, label %117, label %121

117:                                              ; preds = %111
  %118 = load i32, i32* %16, align 4
  %119 = load i32, i32* @RATE_6M, align 4
  %120 = sub nsw i32 %118, %119
  store i32 %120, i32* %15, align 4
  br label %123

121:                                              ; preds = %111
  %122 = load i32, i32* %16, align 4
  store i32 %122, i32* %15, align 4
  br label %123

123:                                              ; preds = %121, %117
  br label %124

124:                                              ; preds = %123, %60, %34
  %125 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %11, align 8
  %126 = call i32 @ieee80211_tx_info_clear_status(%struct.ieee80211_tx_info* %125)
  %127 = load i32, i32* %14, align 4
  %128 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %11, align 8
  %129 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %128, i32 0, i32 2
  %130 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %129, i32 0, i32 0
  %131 = load %struct.TYPE_7__*, %struct.TYPE_7__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %131, i64 0
  %133 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %132, i32 0, i32 0
  store i32 %127, i32* %133, align 4
  %134 = load i32, i32* %9, align 4
  %135 = load i32, i32* @TSR1_TERR, align 4
  %136 = and i32 %134, %135
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %165, label %138

138:                                              ; preds = %124
  %139 = load i32, i32* %15, align 4
  %140 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %11, align 8
  %141 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %140, i32 0, i32 2
  %142 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %141, i32 0, i32 0
  %143 = load %struct.TYPE_7__*, %struct.TYPE_7__** %142, align 8
  %144 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %143, i64 0
  %145 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %144, i32 0, i32 1
  store i32 %139, i32* %145, align 4
  %146 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %11, align 8
  %147 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 8
  %149 = load i32, i32* @IEEE80211_TX_CTL_NO_ACK, align 4
  %150 = and i32 %148, %149
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %158

152:                                              ; preds = %138
  %153 = load i32, i32* @IEEE80211_TX_STAT_NOACK_TRANSMITTED, align 4
  %154 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %11, align 8
  %155 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %154, i32 0, i32 1
  %156 = load i32, i32* %155, align 8
  %157 = or i32 %156, %153
  store i32 %157, i32* %155, align 8
  br label %164

158:                                              ; preds = %138
  %159 = load i32, i32* @IEEE80211_TX_STAT_ACK, align 4
  %160 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %11, align 8
  %161 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %160, i32 0, i32 1
  %162 = load i32, i32* %161, align 8
  %163 = or i32 %162, %159
  store i32 %163, i32* %161, align 8
  br label %164

164:                                              ; preds = %158, %152
  br label %165

165:                                              ; preds = %164, %124
  store i32 0, i32* %5, align 4
  br label %166

166:                                              ; preds = %165, %31, %23
  %167 = load i32, i32* %5, align 4
  ret i32 %167
}

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local %struct.ieee80211_tx_info* @IEEE80211_SKB_CB(i32) #1

declare dso_local %struct.ieee80211_rate* @ieee80211_get_tx_rate(i32, %struct.ieee80211_tx_info*) #1

declare dso_local i32 @ieee80211_tx_info_clear_status(%struct.ieee80211_tx_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
