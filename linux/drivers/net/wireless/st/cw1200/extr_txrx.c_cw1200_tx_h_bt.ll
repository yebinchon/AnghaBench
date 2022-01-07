; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/st/cw1200/extr_txrx.c_cw1200_tx_h_bt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/st/cw1200/extr_txrx.c_cw1200_tx_h_bt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cw1200_common = type { i64, i32 }
%struct.cw1200_txinfo = type { i64, %struct.TYPE_8__*, %struct.TYPE_5__* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_5__ = type { i32* }
%struct.wsm_tx = type { i64, i32 }
%struct.ieee80211_mgmt = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@WSM_EPTA_PRIORITY_MGT = common dso_local global i32 0, align 4
@ETH_P_PAE = common dso_local global i64 0, align 8
@WSM_EPTA_PRIORITY_EAPOL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"Modified Listen Interval to %d from %d\0A\00", align 1
@WSM_EPTA_PRIORITY_ACTION = common dso_local global i32 0, align 4
@WSM_QUEUE_VOICE = common dso_local global i64 0, align 8
@WSM_EPTA_PRIORITY_VOICE = common dso_local global i32 0, align 4
@WSM_QUEUE_VIDEO = common dso_local global i64 0, align 8
@WSM_EPTA_PRIORITY_VIDEO = common dso_local global i32 0, align 4
@WSM_EPTA_PRIORITY_DATA = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"[TX] EPTA priority %d.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cw1200_common*, %struct.cw1200_txinfo*, %struct.wsm_tx*)* @cw1200_tx_h_bt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cw1200_tx_h_bt(%struct.cw1200_common* %0, %struct.cw1200_txinfo* %1, %struct.wsm_tx* %2) #0 {
  %4 = alloca %struct.cw1200_common*, align 8
  %5 = alloca %struct.cw1200_txinfo*, align 8
  %6 = alloca %struct.wsm_tx*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.ieee80211_mgmt*, align 8
  store %struct.cw1200_common* %0, %struct.cw1200_common** %4, align 8
  store %struct.cw1200_txinfo* %1, %struct.cw1200_txinfo** %5, align 8
  store %struct.wsm_tx* %2, %struct.wsm_tx** %6, align 8
  store i32 0, i32* %7, align 4
  %11 = load %struct.cw1200_common*, %struct.cw1200_common** %4, align 8
  %12 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %3
  br label %161

16:                                               ; preds = %3
  %17 = load %struct.cw1200_txinfo*, %struct.cw1200_txinfo** %5, align 8
  %18 = getelementptr inbounds %struct.cw1200_txinfo, %struct.cw1200_txinfo* %17, i32 0, i32 1
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i64 @ieee80211_is_nullfunc(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %16
  %25 = load i32, i32* @WSM_EPTA_PRIORITY_MGT, align 4
  store i32 %25, i32* %7, align 4
  br label %107

26:                                               ; preds = %16
  %27 = load %struct.cw1200_txinfo*, %struct.cw1200_txinfo** %5, align 8
  %28 = getelementptr inbounds %struct.cw1200_txinfo, %struct.cw1200_txinfo* %27, i32 0, i32 1
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i64 @ieee80211_is_data(i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %54

34:                                               ; preds = %26
  %35 = load %struct.cw1200_txinfo*, %struct.cw1200_txinfo** %5, align 8
  %36 = getelementptr inbounds %struct.cw1200_txinfo, %struct.cw1200_txinfo* %35, i32 0, i32 2
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = load %struct.cw1200_txinfo*, %struct.cw1200_txinfo** %5, align 8
  %41 = getelementptr inbounds %struct.cw1200_txinfo, %struct.cw1200_txinfo* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = getelementptr inbounds i32, i32* %39, i64 %42
  store i32* %43, i32** %8, align 8
  %44 = load i32*, i32** %8, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 6
  store i32* %45, i32** %9, align 8
  %46 = load i32*, i32** %9, align 8
  %47 = load i32, i32* %46, align 4
  %48 = call i64 @be16_to_cpu(i32 %47)
  %49 = load i64, i64* @ETH_P_PAE, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %53

51:                                               ; preds = %34
  %52 = load i32, i32* @WSM_EPTA_PRIORITY_EAPOL, align 4
  store i32 %52, i32* %7, align 4
  br label %53

53:                                               ; preds = %51, %34
  br label %106

54:                                               ; preds = %26
  %55 = load %struct.cw1200_txinfo*, %struct.cw1200_txinfo** %5, align 8
  %56 = getelementptr inbounds %struct.cw1200_txinfo, %struct.cw1200_txinfo* %55, i32 0, i32 1
  %57 = load %struct.TYPE_8__*, %struct.TYPE_8__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i64 @ieee80211_is_assoc_req(i32 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %70, label %62

62:                                               ; preds = %54
  %63 = load %struct.cw1200_txinfo*, %struct.cw1200_txinfo** %5, align 8
  %64 = getelementptr inbounds %struct.cw1200_txinfo, %struct.cw1200_txinfo* %63, i32 0, i32 1
  %65 = load %struct.TYPE_8__*, %struct.TYPE_8__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i64 @ieee80211_is_reassoc_req(i32 %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %105

70:                                               ; preds = %62, %54
  %71 = load %struct.cw1200_txinfo*, %struct.cw1200_txinfo** %5, align 8
  %72 = getelementptr inbounds %struct.cw1200_txinfo, %struct.cw1200_txinfo* %71, i32 0, i32 1
  %73 = load %struct.TYPE_8__*, %struct.TYPE_8__** %72, align 8
  %74 = bitcast %struct.TYPE_8__* %73 to %struct.ieee80211_mgmt*
  store %struct.ieee80211_mgmt* %74, %struct.ieee80211_mgmt** %10, align 8
  %75 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %10, align 8
  %76 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = call i64 @le16_to_cpu(i32 %79)
  %81 = load %struct.cw1200_common*, %struct.cw1200_common** %4, align 8
  %82 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = icmp slt i64 %80, %83
  br i1 %84, label %85, label %104

85:                                               ; preds = %70
  %86 = load %struct.cw1200_common*, %struct.cw1200_common** %4, align 8
  %87 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = trunc i64 %88 to i32
  %90 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %10, align 8
  %91 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %89, i32 %94)
  %96 = load %struct.cw1200_common*, %struct.cw1200_common** %4, align 8
  %97 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = call i32 @cpu_to_le16(i64 %98)
  %100 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %10, align 8
  %101 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i32 0, i32 0
  store i32 %99, i32* %103, align 4
  br label %104

104:                                              ; preds = %85, %70
  br label %105

105:                                              ; preds = %104, %62
  br label %106

106:                                              ; preds = %105, %53
  br label %107

107:                                              ; preds = %106, %24
  %108 = load i32, i32* %7, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %152, label %110

110:                                              ; preds = %107
  %111 = load %struct.cw1200_txinfo*, %struct.cw1200_txinfo** %5, align 8
  %112 = getelementptr inbounds %struct.cw1200_txinfo, %struct.cw1200_txinfo* %111, i32 0, i32 1
  %113 = load %struct.TYPE_8__*, %struct.TYPE_8__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = call i64 @ieee80211_is_action(i32 %115)
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %120

118:                                              ; preds = %110
  %119 = load i32, i32* @WSM_EPTA_PRIORITY_ACTION, align 4
  store i32 %119, i32* %7, align 4
  br label %151

120:                                              ; preds = %110
  %121 = load %struct.cw1200_txinfo*, %struct.cw1200_txinfo** %5, align 8
  %122 = getelementptr inbounds %struct.cw1200_txinfo, %struct.cw1200_txinfo* %121, i32 0, i32 1
  %123 = load %struct.TYPE_8__*, %struct.TYPE_8__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = call i64 @ieee80211_is_mgmt(i32 %125)
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %130

128:                                              ; preds = %120
  %129 = load i32, i32* @WSM_EPTA_PRIORITY_MGT, align 4
  store i32 %129, i32* %7, align 4
  br label %150

130:                                              ; preds = %120
  %131 = load %struct.wsm_tx*, %struct.wsm_tx** %6, align 8
  %132 = getelementptr inbounds %struct.wsm_tx, %struct.wsm_tx* %131, i32 0, i32 0
  %133 = load i64, i64* %132, align 8
  %134 = load i64, i64* @WSM_QUEUE_VOICE, align 8
  %135 = icmp eq i64 %133, %134
  br i1 %135, label %136, label %138

136:                                              ; preds = %130
  %137 = load i32, i32* @WSM_EPTA_PRIORITY_VOICE, align 4
  store i32 %137, i32* %7, align 4
  br label %149

138:                                              ; preds = %130
  %139 = load %struct.wsm_tx*, %struct.wsm_tx** %6, align 8
  %140 = getelementptr inbounds %struct.wsm_tx, %struct.wsm_tx* %139, i32 0, i32 0
  %141 = load i64, i64* %140, align 8
  %142 = load i64, i64* @WSM_QUEUE_VIDEO, align 8
  %143 = icmp eq i64 %141, %142
  br i1 %143, label %144, label %146

144:                                              ; preds = %138
  %145 = load i32, i32* @WSM_EPTA_PRIORITY_VIDEO, align 4
  store i32 %145, i32* %7, align 4
  br label %148

146:                                              ; preds = %138
  %147 = load i32, i32* @WSM_EPTA_PRIORITY_DATA, align 4
  store i32 %147, i32* %7, align 4
  br label %148

148:                                              ; preds = %146, %144
  br label %149

149:                                              ; preds = %148, %136
  br label %150

150:                                              ; preds = %149, %128
  br label %151

151:                                              ; preds = %150, %118
  br label %152

152:                                              ; preds = %151, %107
  %153 = load i32, i32* %7, align 4
  %154 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %153)
  %155 = load i32, i32* %7, align 4
  %156 = shl i32 %155, 1
  %157 = load %struct.wsm_tx*, %struct.wsm_tx** %6, align 8
  %158 = getelementptr inbounds %struct.wsm_tx, %struct.wsm_tx* %157, i32 0, i32 1
  %159 = load i32, i32* %158, align 8
  %160 = or i32 %159, %156
  store i32 %160, i32* %158, align 8
  br label %161

161:                                              ; preds = %152, %15
  ret void
}

declare dso_local i64 @ieee80211_is_nullfunc(i32) #1

declare dso_local i64 @ieee80211_is_data(i32) #1

declare dso_local i64 @be16_to_cpu(i32) #1

declare dso_local i64 @ieee80211_is_assoc_req(i32) #1

declare dso_local i64 @ieee80211_is_reassoc_req(i32) #1

declare dso_local i64 @le16_to_cpu(i32) #1

declare dso_local i32 @pr_debug(i8*, i32, ...) #1

declare dso_local i32 @cpu_to_le16(i64) #1

declare dso_local i64 @ieee80211_is_action(i32) #1

declare dso_local i64 @ieee80211_is_mgmt(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
