; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/vt6656/extr_int.c_vnt_int_report_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/vt6656/extr_int.c_vnt_int_report_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnt_private = type { i32, i32, %struct.vnt_usb_send_context** }
%struct.vnt_usb_send_context = type { i64, i32, i32 }
%struct.ieee80211_tx_info = type { i64, i32, %struct.TYPE_8__, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.ieee80211_rate = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@TSR_TMO = common dso_local global i32 0, align 4
@TSR_RETRYTMO = common dso_local global i32 0, align 4
@RATE_18M = common dso_local global i32 0, align 4
@AUTO_FB_0 = common dso_local global i64 0, align 8
@fallback_rate0 = common dso_local global i32** null, align 8
@AUTO_FB_1 = common dso_local global i64 0, align 8
@fallback_rate1 = common dso_local global i32** null, align 8
@NL80211_BAND_5GHZ = common dso_local global i64 0, align 8
@RATE_6M = common dso_local global i32 0, align 4
@IEEE80211_TX_STAT_ACK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vnt_private*, i32, i32)* @vnt_int_report_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vnt_int_report_rate(%struct.vnt_private* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.vnt_private*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.vnt_usb_send_context*, align 8
  %9 = alloca %struct.ieee80211_tx_info*, align 8
  %10 = alloca %struct.ieee80211_rate*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.vnt_private* %0, %struct.vnt_private** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %15 = load i32, i32* %7, align 4
  %16 = and i32 %15, 240
  %17 = ashr i32 %16, 4
  store i32 %17, i32* %11, align 4
  %18 = load i32, i32* %6, align 4
  %19 = load %struct.vnt_private*, %struct.vnt_private** %5, align 8
  %20 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp sge i32 %18, %21
  br i1 %22, label %23, label %26

23:                                               ; preds = %3
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %4, align 4
  br label %164

26:                                               ; preds = %3
  %27 = load %struct.vnt_private*, %struct.vnt_private** %5, align 8
  %28 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %27, i32 0, i32 2
  %29 = load %struct.vnt_usb_send_context**, %struct.vnt_usb_send_context*** %28, align 8
  %30 = load i32, i32* %6, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.vnt_usb_send_context*, %struct.vnt_usb_send_context** %29, i64 %31
  %33 = load %struct.vnt_usb_send_context*, %struct.vnt_usb_send_context** %32, align 8
  store %struct.vnt_usb_send_context* %33, %struct.vnt_usb_send_context** %8, align 8
  %34 = load %struct.vnt_usb_send_context*, %struct.vnt_usb_send_context** %8, align 8
  %35 = getelementptr inbounds %struct.vnt_usb_send_context, %struct.vnt_usb_send_context* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %41, label %38

38:                                               ; preds = %26
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %4, align 4
  br label %164

41:                                               ; preds = %26
  %42 = load %struct.vnt_usb_send_context*, %struct.vnt_usb_send_context** %8, align 8
  %43 = getelementptr inbounds %struct.vnt_usb_send_context, %struct.vnt_usb_send_context* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = call %struct.ieee80211_tx_info* @IEEE80211_SKB_CB(i32 %44)
  store %struct.ieee80211_tx_info* %45, %struct.ieee80211_tx_info** %9, align 8
  %46 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %9, align 8
  %47 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %46, i32 0, i32 3
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i64 0
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  store i32 %52, i32* %12, align 4
  %53 = load %struct.vnt_usb_send_context*, %struct.vnt_usb_send_context** %8, align 8
  %54 = getelementptr inbounds %struct.vnt_usb_send_context, %struct.vnt_usb_send_context* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %125

57:                                               ; preds = %41
  %58 = load i32, i32* %7, align 4
  %59 = load i32, i32* @TSR_TMO, align 4
  %60 = load i32, i32* @TSR_RETRYTMO, align 4
  %61 = or i32 %59, %60
  %62 = and i32 %58, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %125, label %64

64:                                               ; preds = %57
  %65 = load i32, i32* %11, align 4
  store i32 %65, i32* %14, align 4
  %66 = load %struct.vnt_private*, %struct.vnt_private** %5, align 8
  %67 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %9, align 8
  %70 = call %struct.ieee80211_rate* @ieee80211_get_tx_rate(i32 %68, %struct.ieee80211_tx_info* %69)
  store %struct.ieee80211_rate* %70, %struct.ieee80211_rate** %10, align 8
  %71 = load %struct.ieee80211_rate*, %struct.ieee80211_rate** %10, align 8
  %72 = getelementptr inbounds %struct.ieee80211_rate, %struct.ieee80211_rate* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* @RATE_18M, align 4
  %75 = sub nsw i32 %73, %74
  store i32 %75, i32* %13, align 4
  %76 = load i32, i32* %14, align 4
  %77 = icmp sgt i32 %76, 4
  br i1 %77, label %78, label %79

78:                                               ; preds = %64
  store i32 4, i32* %14, align 4
  br label %79

79:                                               ; preds = %78, %64
  %80 = load %struct.vnt_usb_send_context*, %struct.vnt_usb_send_context** %8, align 8
  %81 = getelementptr inbounds %struct.vnt_usb_send_context, %struct.vnt_usb_send_context* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* @AUTO_FB_0, align 8
  %84 = icmp eq i64 %82, %83
  br i1 %84, label %85, label %95

85:                                               ; preds = %79
  %86 = load i32**, i32*** @fallback_rate0, align 8
  %87 = load i32, i32* %13, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i32*, i32** %86, i64 %88
  %90 = load i32*, i32** %89, align 8
  %91 = load i32, i32* %14, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i32, i32* %90, i64 %92
  %94 = load i32, i32* %93, align 4
  store i32 %94, i32* %13, align 4
  br label %112

95:                                               ; preds = %79
  %96 = load %struct.vnt_usb_send_context*, %struct.vnt_usb_send_context** %8, align 8
  %97 = getelementptr inbounds %struct.vnt_usb_send_context, %struct.vnt_usb_send_context* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = load i64, i64* @AUTO_FB_1, align 8
  %100 = icmp eq i64 %98, %99
  br i1 %100, label %101, label %111

101:                                              ; preds = %95
  %102 = load i32**, i32*** @fallback_rate1, align 8
  %103 = load i32, i32* %13, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i32*, i32** %102, i64 %104
  %106 = load i32*, i32** %105, align 8
  %107 = load i32, i32* %14, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i32, i32* %106, i64 %108
  %110 = load i32, i32* %109, align 4
  store i32 %110, i32* %13, align 4
  br label %111

111:                                              ; preds = %101, %95
  br label %112

112:                                              ; preds = %111, %85
  %113 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %9, align 8
  %114 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = load i64, i64* @NL80211_BAND_5GHZ, align 8
  %117 = icmp eq i64 %115, %116
  br i1 %117, label %118, label %122

118:                                              ; preds = %112
  %119 = load i32, i32* %13, align 4
  %120 = load i32, i32* @RATE_6M, align 4
  %121 = sub nsw i32 %119, %120
  store i32 %121, i32* %12, align 4
  br label %124

122:                                              ; preds = %112
  %123 = load i32, i32* %13, align 4
  store i32 %123, i32* %12, align 4
  br label %124

124:                                              ; preds = %122, %118
  br label %125

125:                                              ; preds = %124, %57, %41
  %126 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %9, align 8
  %127 = call i32 @ieee80211_tx_info_clear_status(%struct.ieee80211_tx_info* %126)
  %128 = load i32, i32* %11, align 4
  %129 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %9, align 8
  %130 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %129, i32 0, i32 2
  %131 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %130, i32 0, i32 0
  %132 = load %struct.TYPE_7__*, %struct.TYPE_7__** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %132, i64 0
  %134 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %133, i32 0, i32 0
  store i32 %128, i32* %134, align 4
  %135 = load i32, i32* %7, align 4
  %136 = load i32, i32* @TSR_TMO, align 4
  %137 = load i32, i32* @TSR_RETRYTMO, align 4
  %138 = or i32 %136, %137
  %139 = and i32 %135, %138
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %154, label %141

141:                                              ; preds = %125
  %142 = load i32, i32* %12, align 4
  %143 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %9, align 8
  %144 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %143, i32 0, i32 2
  %145 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %144, i32 0, i32 0
  %146 = load %struct.TYPE_7__*, %struct.TYPE_7__** %145, align 8
  %147 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %146, i64 0
  %148 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %147, i32 0, i32 1
  store i32 %142, i32* %148, align 4
  %149 = load i32, i32* @IEEE80211_TX_STAT_ACK, align 4
  %150 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %9, align 8
  %151 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 8
  %153 = or i32 %152, %149
  store i32 %153, i32* %151, align 8
  br label %154

154:                                              ; preds = %141, %125
  %155 = load %struct.vnt_private*, %struct.vnt_private** %5, align 8
  %156 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %155, i32 0, i32 1
  %157 = load i32, i32* %156, align 4
  %158 = load %struct.vnt_usb_send_context*, %struct.vnt_usb_send_context** %8, align 8
  %159 = getelementptr inbounds %struct.vnt_usb_send_context, %struct.vnt_usb_send_context* %158, i32 0, i32 2
  %160 = load i32, i32* %159, align 4
  %161 = call i32 @ieee80211_tx_status_irqsafe(i32 %157, i32 %160)
  %162 = load %struct.vnt_usb_send_context*, %struct.vnt_usb_send_context** %8, align 8
  %163 = getelementptr inbounds %struct.vnt_usb_send_context, %struct.vnt_usb_send_context* %162, i32 0, i32 1
  store i32 0, i32* %163, align 8
  store i32 0, i32* %4, align 4
  br label %164

164:                                              ; preds = %154, %38, %23
  %165 = load i32, i32* %4, align 4
  ret i32 %165
}

declare dso_local %struct.ieee80211_tx_info* @IEEE80211_SKB_CB(i32) #1

declare dso_local %struct.ieee80211_rate* @ieee80211_get_tx_rate(i32, %struct.ieee80211_tx_info*) #1

declare dso_local i32 @ieee80211_tx_info_clear_status(%struct.ieee80211_tx_info*) #1

declare dso_local i32 @ieee80211_tx_status_irqsafe(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
