; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/extr_base.c_rtl_action_proc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/extr_base.c_rtl_action_proc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.sk_buff = type { i64, i32 }
%struct.rtl_mac = type { i32 }
%struct.ieee80211_hdr = type { i32, i32 }
%struct.rtl_priv = type { i32 }
%struct.ieee80211_sta = type { i64 }
%struct.rtl_sta_info = type { %struct.rtl_tid_data* }
%struct.rtl_tid_data = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 }
%struct.ieee80211_mgmt = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@MAC80211_3ADDR_LEN = common dso_local global i32 0, align 4
@COMP_SEND = common dso_local global i32 0, align 4
@COMP_RECV = common dso_local global i32 0, align 4
@DBG_DMESG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"%s ACT_ADDBAREQ From :%pM\0A\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"Tx\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"Rx\00", align 1
@COMP_INIT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [5 x i8] c"req\0A\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"sta is NULL\0A\00", align 1
@IEEE80211_ADDBA_PARAM_TID_MASK = common dso_local global i32 0, align 4
@MAX_TID_COUNT = common dso_local global i32 0, align 4
@RTL_RX_AGG_START = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [27 x i8] c"%s ACT_ADDBARSP From :%pM\0A\00", align 1
@.str.6 = private unnamed_addr constant [24 x i8] c"ACT_ADDBADEL From :%pM\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rtl_action_proc(%struct.ieee80211_hw* %0, %struct.sk_buff* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ieee80211_hw*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.rtl_mac*, align 8
  %9 = alloca %struct.ieee80211_hdr*, align 8
  %10 = alloca %struct.rtl_priv*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.ieee80211_sta*, align 8
  %15 = alloca %struct.rtl_sta_info*, align 8
  %16 = alloca %struct.rtl_tid_data*, align 8
  %17 = alloca %struct.ieee80211_mgmt*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %5, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %6, align 8
  store i32 %2, i32* %7, align 4
  %20 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %21 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %20)
  %22 = call %struct.rtl_mac* @rtl_mac(%struct.rtl_priv* %21)
  store %struct.rtl_mac* %22, %struct.rtl_mac** %8, align 8
  %23 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %24 = call %struct.ieee80211_hdr* @rtl_get_hdr(%struct.sk_buff* %23)
  store %struct.ieee80211_hdr* %24, %struct.ieee80211_hdr** %9, align 8
  %25 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %26 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %25)
  store %struct.rtl_priv* %26, %struct.rtl_priv** %10, align 8
  %27 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %28 = call i32 @rtl_get_fc(%struct.sk_buff* %27)
  store i32 %28, i32* %11, align 4
  %29 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %30 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = inttoptr i64 %31 to i32*
  %33 = load i32, i32* @MAC80211_3ADDR_LEN, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %32, i64 %34
  store i32* %35, i32** %12, align 8
  %36 = load i32, i32* %11, align 4
  %37 = call i32 @ieee80211_is_action(i32 %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %3
  store i32 1, i32* %4, align 4
  br label %178

40:                                               ; preds = %3
  %41 = load i32*, i32** %12, align 8
  %42 = load i32, i32* %41, align 4
  store i32 %42, i32* %13, align 4
  %43 = load i32*, i32** %12, align 8
  %44 = getelementptr inbounds i32, i32* %43, i32 1
  store i32* %44, i32** %12, align 8
  %45 = load i32, i32* %13, align 4
  switch i32 %45, label %176 [
    i32 129, label %46
  ]

46:                                               ; preds = %40
  %47 = load i32*, i32** %12, align 8
  %48 = load i32, i32* %47, align 4
  switch i32 %48, label %175 [
    i32 131, label %49
    i32 130, label %151
    i32 128, label %165
  ]

49:                                               ; preds = %46
  %50 = load %struct.rtl_mac*, %struct.rtl_mac** %8, align 8
  %51 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %49
  store i32 0, i32* %4, align 4
  br label %178

55:                                               ; preds = %49
  %56 = load %struct.rtl_priv*, %struct.rtl_priv** %10, align 8
  %57 = load i32, i32* @COMP_SEND, align 4
  %58 = load i32, i32* @COMP_RECV, align 4
  %59 = or i32 %57, %58
  %60 = load i32, i32* @DBG_DMESG, align 4
  %61 = load i32, i32* %7, align 4
  %62 = icmp ne i32 %61, 0
  %63 = zext i1 %62 to i64
  %64 = select i1 %62, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0)
  %65 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %9, align 8
  %66 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %56, i32 %59, i32 %60, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i8* %64, i32 %67)
  %69 = load %struct.rtl_priv*, %struct.rtl_priv** %10, align 8
  %70 = load i32, i32* @COMP_INIT, align 4
  %71 = load i32, i32* @DBG_DMESG, align 4
  %72 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %73 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %76 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 8
  %78 = call i32 @RT_PRINT_DATA(%struct.rtl_priv* %69, i32 %70, i32 %71, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i64 %74, i32 %77)
  %79 = load i32, i32* %7, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %150, label %81

81:                                               ; preds = %55
  store %struct.ieee80211_sta* null, %struct.ieee80211_sta** %14, align 8
  store %struct.rtl_sta_info* null, %struct.rtl_sta_info** %15, align 8
  %82 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %83 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = inttoptr i64 %84 to i8*
  %86 = bitcast i8* %85 to %struct.ieee80211_mgmt*
  store %struct.ieee80211_mgmt* %86, %struct.ieee80211_mgmt** %17, align 8
  store i32 0, i32* %18, align 4
  store i32 0, i32* %19, align 4
  %87 = call i32 (...) @rcu_read_lock()
  %88 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %89 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %9, align 8
  %90 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = call %struct.ieee80211_sta* @rtl_find_sta(%struct.ieee80211_hw* %88, i32 %91)
  store %struct.ieee80211_sta* %92, %struct.ieee80211_sta** %14, align 8
  %93 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %14, align 8
  %94 = icmp eq %struct.ieee80211_sta* %93, null
  br i1 %94, label %95, label %103

95:                                               ; preds = %81
  %96 = load %struct.rtl_priv*, %struct.rtl_priv** %10, align 8
  %97 = load i32, i32* @COMP_SEND, align 4
  %98 = load i32, i32* @COMP_RECV, align 4
  %99 = or i32 %97, %98
  %100 = load i32, i32* @DBG_DMESG, align 4
  %101 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %96, i32 %99, i32 %100, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0))
  %102 = call i32 (...) @rcu_read_unlock()
  store i32 1, i32* %4, align 4
  br label %178

103:                                              ; preds = %81
  %104 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %14, align 8
  %105 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = inttoptr i64 %106 to %struct.rtl_sta_info*
  store %struct.rtl_sta_info* %107, %struct.rtl_sta_info** %15, align 8
  %108 = load %struct.rtl_sta_info*, %struct.rtl_sta_info** %15, align 8
  %109 = icmp ne %struct.rtl_sta_info* %108, null
  br i1 %109, label %112, label %110

110:                                              ; preds = %103
  %111 = call i32 (...) @rcu_read_unlock()
  store i32 1, i32* %4, align 4
  br label %178

112:                                              ; preds = %103
  %113 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %17, align 8
  %114 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = call i32 @le16_to_cpu(i32 %119)
  store i32 %120, i32* %18, align 4
  %121 = load i32, i32* %18, align 4
  %122 = load i32, i32* @IEEE80211_ADDBA_PARAM_TID_MASK, align 4
  %123 = and i32 %121, %122
  %124 = ashr i32 %123, 2
  store i32 %124, i32* %19, align 4
  %125 = load i32, i32* %19, align 4
  %126 = load i32, i32* @MAX_TID_COUNT, align 4
  %127 = icmp sge i32 %125, %126
  br i1 %127, label %128, label %130

128:                                              ; preds = %112
  %129 = call i32 (...) @rcu_read_unlock()
  store i32 1, i32* %4, align 4
  br label %178

130:                                              ; preds = %112
  %131 = load %struct.rtl_sta_info*, %struct.rtl_sta_info** %15, align 8
  %132 = getelementptr inbounds %struct.rtl_sta_info, %struct.rtl_sta_info* %131, i32 0, i32 0
  %133 = load %struct.rtl_tid_data*, %struct.rtl_tid_data** %132, align 8
  %134 = load i32, i32* %19, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds %struct.rtl_tid_data, %struct.rtl_tid_data* %133, i64 %135
  store %struct.rtl_tid_data* %136, %struct.rtl_tid_data** %16, align 8
  %137 = load %struct.rtl_tid_data*, %struct.rtl_tid_data** %16, align 8
  %138 = getelementptr inbounds %struct.rtl_tid_data, %struct.rtl_tid_data* %137, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 4
  %141 = load i32, i32* @RTL_RX_AGG_START, align 4
  %142 = icmp eq i32 %140, %141
  br i1 %142, label %143, label %148

143:                                              ; preds = %130
  %144 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %145 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %9, align 8
  %146 = load i32, i32* %19, align 4
  %147 = call i32 @process_agg_start(%struct.ieee80211_hw* %144, %struct.ieee80211_hdr* %145, i32 %146)
  br label %148

148:                                              ; preds = %143, %130
  %149 = call i32 (...) @rcu_read_unlock()
  br label %150

150:                                              ; preds = %148, %55
  br label %175

151:                                              ; preds = %46
  %152 = load %struct.rtl_priv*, %struct.rtl_priv** %10, align 8
  %153 = load i32, i32* @COMP_SEND, align 4
  %154 = load i32, i32* @COMP_RECV, align 4
  %155 = or i32 %153, %154
  %156 = load i32, i32* @DBG_DMESG, align 4
  %157 = load i32, i32* %7, align 4
  %158 = icmp ne i32 %157, 0
  %159 = zext i1 %158 to i64
  %160 = select i1 %158, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0)
  %161 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %9, align 8
  %162 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 4
  %164 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %152, i32 %155, i32 %156, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0), i8* %160, i32 %163)
  br label %175

165:                                              ; preds = %46
  %166 = load %struct.rtl_priv*, %struct.rtl_priv** %10, align 8
  %167 = load i32, i32* @COMP_SEND, align 4
  %168 = load i32, i32* @COMP_RECV, align 4
  %169 = or i32 %167, %168
  %170 = load i32, i32* @DBG_DMESG, align 4
  %171 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %9, align 8
  %172 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 4
  %174 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %166, i32 %169, i32 %170, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i64 0, i64 0), i32 %173)
  br label %175

175:                                              ; preds = %46, %165, %151, %150
  br label %177

176:                                              ; preds = %40
  br label %177

177:                                              ; preds = %176, %175
  store i32 1, i32* %4, align 4
  br label %178

178:                                              ; preds = %177, %128, %110, %95, %54, %39
  %179 = load i32, i32* %4, align 4
  ret i32 %179
}

declare dso_local %struct.rtl_mac* @rtl_mac(%struct.rtl_priv*) #1

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local %struct.ieee80211_hdr* @rtl_get_hdr(%struct.sk_buff*) #1

declare dso_local i32 @rtl_get_fc(%struct.sk_buff*) #1

declare dso_local i32 @ieee80211_is_action(i32) #1

declare dso_local i32 @RT_TRACE(%struct.rtl_priv*, i32, i32, i8*, ...) #1

declare dso_local i32 @RT_PRINT_DATA(%struct.rtl_priv*, i32, i32, i8*, i64, i32) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.ieee80211_sta* @rtl_find_sta(%struct.ieee80211_hw*, i32) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @process_agg_start(%struct.ieee80211_hw*, %struct.ieee80211_hdr*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
