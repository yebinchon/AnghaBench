; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8192u/ieee80211/extr_ieee80211_tx.c_ieee80211_tx_query_agg_cap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8192u/ieee80211/extr_ieee80211_tx.c_ieee80211_tx_query_agg_cap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_device = type { i64, i32, i32 (i32)*, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32, i32, i32, i32, i32, i64, i32, i32 }
%struct.sk_buff = type { i32, i64 }
%struct.cb_desc = type { i32, i32, i32 }
%struct.tx_ts_record = type { i32, i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.rtl_80211_hdr_1addr = type { i32 }
%struct.ts_common_info = type { i32 }

@TX_DIR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"===>can't get TS\0A\00", align 1
@IW_MODE_INFRA = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_device*, %struct.sk_buff*, %struct.cb_desc*)* @ieee80211_tx_query_agg_cap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ieee80211_tx_query_agg_cap(%struct.ieee80211_device* %0, %struct.sk_buff* %1, %struct.cb_desc* %2) #0 {
  %4 = alloca %struct.ieee80211_device*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.cb_desc*, align 8
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca %struct.tx_ts_record*, align 8
  %9 = alloca %struct.rtl_80211_hdr_1addr*, align 8
  store %struct.ieee80211_device* %0, %struct.ieee80211_device** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  store %struct.cb_desc* %2, %struct.cb_desc** %6, align 8
  %10 = load %struct.ieee80211_device*, %struct.ieee80211_device** %4, align 8
  %11 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %10, i32 0, i32 3
  %12 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  store %struct.TYPE_8__* %12, %struct.TYPE_8__** %7, align 8
  store %struct.tx_ts_record* null, %struct.tx_ts_record** %8, align 8
  %13 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %14 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = inttoptr i64 %15 to %struct.rtl_80211_hdr_1addr*
  store %struct.rtl_80211_hdr_1addr* %16, %struct.rtl_80211_hdr_1addr** %9, align 8
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 7
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %3
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 6
  %24 = load i32, i32* %23, align 8
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %21, %3
  br label %152

27:                                               ; preds = %21
  %28 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %29 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = call i32 @IsQoSDataFrame(i64 %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %27
  br label %152

34:                                               ; preds = %27
  %35 = load %struct.rtl_80211_hdr_1addr*, %struct.rtl_80211_hdr_1addr** %9, align 8
  %36 = getelementptr inbounds %struct.rtl_80211_hdr_1addr, %struct.rtl_80211_hdr_1addr* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i64 @is_multicast_ether_addr(i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %34
  br label %152

41:                                               ; preds = %34
  %42 = load %struct.ieee80211_device*, %struct.ieee80211_device** %4, align 8
  %43 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %42, i32 0, i32 2
  %44 = load i32 (i32)*, i32 (i32)** %43, align 8
  %45 = load %struct.ieee80211_device*, %struct.ieee80211_device** %4, align 8
  %46 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = call i32 %44(i32 %47)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %51, label %50

50:                                               ; preds = %41
  br label %152

51:                                               ; preds = %41
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 5
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %125

56:                                               ; preds = %51
  %57 = load %struct.ieee80211_device*, %struct.ieee80211_device** %4, align 8
  %58 = bitcast %struct.tx_ts_record** %8 to %struct.ts_common_info**
  %59 = load %struct.rtl_80211_hdr_1addr*, %struct.rtl_80211_hdr_1addr** %9, align 8
  %60 = getelementptr inbounds %struct.rtl_80211_hdr_1addr, %struct.rtl_80211_hdr_1addr* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %63 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* @TX_DIR, align 4
  %66 = call i32 @GetTs(%struct.ieee80211_device* %57, %struct.ts_common_info** %58, i32 %61, i32 %64, i32 %65, i32 1)
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %70, label %68

68:                                               ; preds = %56
  %69 = call i32 @printk(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  br label %152

70:                                               ; preds = %56
  %71 = load %struct.tx_ts_record*, %struct.tx_ts_record** %8, align 8
  %72 = getelementptr inbounds %struct.tx_ts_record, %struct.tx_ts_record* %71, i32 0, i32 2
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %80, label %76

76:                                               ; preds = %70
  %77 = load %struct.ieee80211_device*, %struct.ieee80211_device** %4, align 8
  %78 = load %struct.tx_ts_record*, %struct.tx_ts_record** %8, align 8
  %79 = call i32 @TsStartAddBaProcess(%struct.ieee80211_device* %77, %struct.tx_ts_record* %78)
  br label %126

80:                                               ; preds = %70
  %81 = load %struct.tx_ts_record*, %struct.tx_ts_record** %8, align 8
  %82 = getelementptr inbounds %struct.tx_ts_record, %struct.tx_ts_record* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %104, label %85

85:                                               ; preds = %80
  %86 = load %struct.tx_ts_record*, %struct.tx_ts_record** %8, align 8
  %87 = getelementptr inbounds %struct.tx_ts_record, %struct.tx_ts_record* %86, i32 0, i32 2
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.tx_ts_record*, %struct.tx_ts_record** %8, align 8
  %93 = getelementptr inbounds %struct.tx_ts_record, %struct.tx_ts_record* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = add nsw i32 %94, 1
  %96 = srem i32 %95, 4096
  %97 = call i64 @SN_LESS(i32 %91, i32 %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %102

99:                                               ; preds = %85
  %100 = load %struct.tx_ts_record*, %struct.tx_ts_record** %8, align 8
  %101 = getelementptr inbounds %struct.tx_ts_record, %struct.tx_ts_record* %100, i32 0, i32 0
  store i32 1, i32* %101, align 4
  br label %103

102:                                              ; preds = %85
  br label %126

103:                                              ; preds = %99
  br label %104

104:                                              ; preds = %103, %80
  br label %105

105:                                              ; preds = %104
  %106 = load %struct.ieee80211_device*, %struct.ieee80211_device** %4, align 8
  %107 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = load i64, i64* @IW_MODE_INFRA, align 8
  %110 = icmp eq i64 %108, %109
  br i1 %110, label %111, label %124

111:                                              ; preds = %105
  %112 = load %struct.cb_desc*, %struct.cb_desc** %6, align 8
  %113 = getelementptr inbounds %struct.cb_desc, %struct.cb_desc* %112, i32 0, i32 0
  store i32 1, i32* %113, align 4
  %114 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %115 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %114, i32 0, i32 4
  %116 = load i32, i32* %115, align 8
  %117 = load %struct.cb_desc*, %struct.cb_desc** %6, align 8
  %118 = getelementptr inbounds %struct.cb_desc, %struct.cb_desc* %117, i32 0, i32 1
  store i32 %116, i32* %118, align 4
  %119 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %120 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %119, i32 0, i32 3
  %121 = load i32, i32* %120, align 4
  %122 = load %struct.cb_desc*, %struct.cb_desc** %6, align 8
  %123 = getelementptr inbounds %struct.cb_desc, %struct.cb_desc* %122, i32 0, i32 2
  store i32 %121, i32* %123, align 4
  br label %124

124:                                              ; preds = %111, %105
  br label %125

125:                                              ; preds = %124, %51
  br label %126

126:                                              ; preds = %125, %102, %76
  %127 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %128 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  switch i32 %129, label %151 [
    i32 130, label %130
    i32 128, label %131
    i32 129, label %144
  ]

130:                                              ; preds = %126
  br label %151

131:                                              ; preds = %126
  %132 = load %struct.cb_desc*, %struct.cb_desc** %6, align 8
  %133 = getelementptr inbounds %struct.cb_desc, %struct.cb_desc* %132, i32 0, i32 0
  store i32 1, i32* %133, align 4
  %134 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %135 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %134, i32 0, i32 2
  %136 = load i32, i32* %135, align 8
  %137 = load %struct.cb_desc*, %struct.cb_desc** %6, align 8
  %138 = getelementptr inbounds %struct.cb_desc, %struct.cb_desc* %137, i32 0, i32 2
  store i32 %136, i32* %138, align 4
  %139 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %140 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 4
  %142 = load %struct.cb_desc*, %struct.cb_desc** %6, align 8
  %143 = getelementptr inbounds %struct.cb_desc, %struct.cb_desc* %142, i32 0, i32 1
  store i32 %141, i32* %143, align 4
  br label %151

144:                                              ; preds = %126
  %145 = load %struct.cb_desc*, %struct.cb_desc** %6, align 8
  %146 = getelementptr inbounds %struct.cb_desc, %struct.cb_desc* %145, i32 0, i32 0
  store i32 0, i32* %146, align 4
  %147 = load %struct.cb_desc*, %struct.cb_desc** %6, align 8
  %148 = getelementptr inbounds %struct.cb_desc, %struct.cb_desc* %147, i32 0, i32 2
  store i32 0, i32* %148, align 4
  %149 = load %struct.cb_desc*, %struct.cb_desc** %6, align 8
  %150 = getelementptr inbounds %struct.cb_desc, %struct.cb_desc* %149, i32 0, i32 1
  store i32 0, i32* %150, align 4
  br label %151

151:                                              ; preds = %126, %144, %131, %130
  br label %152

152:                                              ; preds = %151, %68, %50, %40, %33, %26
  ret void
}

declare dso_local i32 @IsQoSDataFrame(i64) #1

declare dso_local i64 @is_multicast_ether_addr(i32) #1

declare dso_local i32 @GetTs(%struct.ieee80211_device*, %struct.ts_common_info**, i32, i32, i32, i32) #1

declare dso_local i32 @printk(i8*) #1

declare dso_local i32 @TsStartAddBaProcess(%struct.ieee80211_device*, %struct.tx_ts_record*) #1

declare dso_local i64 @SN_LESS(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
