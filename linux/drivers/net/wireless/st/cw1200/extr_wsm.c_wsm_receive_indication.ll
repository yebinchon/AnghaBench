; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/st/cw1200/extr_wsm.c_wsm_receive_indication.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/st/cw1200/extr_wsm.c_wsm_receive_indication.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cw1200_common = type { i64, i32, i32, i32 }
%struct.wsm_buf = type { i64, i64 }
%struct.sk_buff = type { i64 }
%struct.wsm_rx = type { i32, i8*, i8*, i8*, i32 }
%struct.ieee80211_hdr = type { i32 }

@CW1200_JOIN_STATUS_STA = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [34 x i8] c"[WSM] Issue unjoin command (RX).\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cw1200_common*, i32, %struct.wsm_buf*, %struct.sk_buff**)* @wsm_receive_indication to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wsm_receive_indication(%struct.cw1200_common* %0, i32 %1, %struct.wsm_buf* %2, %struct.sk_buff** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.cw1200_common*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.wsm_buf*, align 8
  %9 = alloca %struct.sk_buff**, align 8
  %10 = alloca %struct.wsm_rx, align 8
  %11 = alloca %struct.ieee80211_hdr*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.cw1200_common* %0, %struct.cw1200_common** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.wsm_buf* %2, %struct.wsm_buf** %8, align 8
  store %struct.sk_buff** %3, %struct.sk_buff*** %9, align 8
  %14 = load %struct.wsm_buf*, %struct.wsm_buf** %8, align 8
  %15 = call i8* @WSM_GET32(%struct.wsm_buf* %14)
  %16 = getelementptr inbounds %struct.wsm_rx, %struct.wsm_rx* %10, i32 0, i32 1
  store i8* %15, i8** %16, align 8
  %17 = load %struct.wsm_buf*, %struct.wsm_buf** %8, align 8
  %18 = call i32 @WSM_GET16(%struct.wsm_buf* %17)
  %19 = getelementptr inbounds %struct.wsm_rx, %struct.wsm_rx* %10, i32 0, i32 4
  store i32 %18, i32* %19, align 8
  %20 = load %struct.wsm_buf*, %struct.wsm_buf** %8, align 8
  %21 = call i8* @WSM_GET8(%struct.wsm_buf* %20)
  %22 = getelementptr inbounds %struct.wsm_rx, %struct.wsm_rx* %10, i32 0, i32 3
  store i8* %21, i8** %22, align 8
  %23 = load %struct.wsm_buf*, %struct.wsm_buf** %8, align 8
  %24 = call i8* @WSM_GET8(%struct.wsm_buf* %23)
  %25 = ptrtoint i8* %24 to i32
  %26 = getelementptr inbounds %struct.wsm_rx, %struct.wsm_rx* %10, i32 0, i32 0
  store i32 %25, i32* %26, align 8
  %27 = load %struct.wsm_buf*, %struct.wsm_buf** %8, align 8
  %28 = call i8* @WSM_GET32(%struct.wsm_buf* %27)
  %29 = getelementptr inbounds %struct.wsm_rx, %struct.wsm_rx* %10, i32 0, i32 2
  store i8* %28, i8** %29, align 8
  %30 = load %struct.sk_buff**, %struct.sk_buff*** %9, align 8
  %31 = load %struct.sk_buff*, %struct.sk_buff** %30, align 8
  %32 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = inttoptr i64 %33 to %struct.ieee80211_hdr*
  store %struct.ieee80211_hdr* %34, %struct.ieee80211_hdr** %11, align 8
  %35 = getelementptr inbounds %struct.wsm_rx, %struct.wsm_rx* %10, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %51, label %38

38:                                               ; preds = %4
  %39 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %11, align 8
  %40 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i64 @ieee80211_is_probe_resp(i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %50, label %44

44:                                               ; preds = %38
  %45 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %11, align 8
  %46 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i64 @ieee80211_is_beacon(i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %44, %38
  store i32 0, i32* %5, align 4
  br label %125

51:                                               ; preds = %44, %4
  %52 = load %struct.cw1200_common*, %struct.cw1200_common** %6, align 8
  %53 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 8
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %62, label %56

56:                                               ; preds = %51
  %57 = getelementptr inbounds %struct.wsm_rx, %struct.wsm_rx* %10, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = sdiv i32 %58, 2
  %60 = sub nsw i32 %59, 110
  %61 = getelementptr inbounds %struct.wsm_rx, %struct.wsm_rx* %10, i32 0, i32 0
  store i32 %60, i32* %61, align 8
  br label %62

62:                                               ; preds = %56, %51
  %63 = load %struct.wsm_buf*, %struct.wsm_buf** %8, align 8
  %64 = getelementptr inbounds %struct.wsm_buf, %struct.wsm_buf* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = inttoptr i64 %65 to i32*
  %67 = load i32, i32* %66, align 4
  store i32 %67, i32* %13, align 4
  %68 = load %struct.wsm_buf*, %struct.wsm_buf** %8, align 8
  %69 = getelementptr inbounds %struct.wsm_buf, %struct.wsm_buf* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load %struct.wsm_buf*, %struct.wsm_buf** %8, align 8
  %72 = getelementptr inbounds %struct.wsm_buf, %struct.wsm_buf* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = sub i64 %70, %73
  store i64 %74, i64* %12, align 8
  %75 = load %struct.sk_buff**, %struct.sk_buff*** %9, align 8
  %76 = load %struct.sk_buff*, %struct.sk_buff** %75, align 8
  %77 = load i64, i64* %12, align 8
  %78 = call i32 @skb_pull(%struct.sk_buff* %76, i64 %77)
  %79 = getelementptr inbounds %struct.wsm_rx, %struct.wsm_rx* %10, i32 0, i32 1
  %80 = load i8*, i8** %79, align 8
  %81 = icmp ne i8* %80, null
  br i1 %81, label %108, label %82

82:                                               ; preds = %62
  %83 = load i32, i32* %13, align 4
  %84 = call i64 @ieee80211_is_deauth(i32 %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %108

86:                                               ; preds = %82
  %87 = load %struct.cw1200_common*, %struct.cw1200_common** %6, align 8
  %88 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = load i64, i64* @CW1200_JOIN_STATUS_STA, align 8
  %91 = icmp eq i64 %89, %90
  br i1 %91, label %92, label %107

92:                                               ; preds = %86
  %93 = call i32 @pr_debug(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %94 = load %struct.cw1200_common*, %struct.cw1200_common** %6, align 8
  %95 = call i32 @wsm_lock_tx_async(%struct.cw1200_common* %94)
  %96 = load %struct.cw1200_common*, %struct.cw1200_common** %6, align 8
  %97 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.cw1200_common*, %struct.cw1200_common** %6, align 8
  %100 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %99, i32 0, i32 1
  %101 = call i64 @queue_work(i32 %98, i32* %100)
  %102 = icmp sle i64 %101, 0
  br i1 %102, label %103, label %106

103:                                              ; preds = %92
  %104 = load %struct.cw1200_common*, %struct.cw1200_common** %6, align 8
  %105 = call i32 @wsm_unlock_tx(%struct.cw1200_common* %104)
  br label %106

106:                                              ; preds = %103, %92
  br label %107

107:                                              ; preds = %106, %86
  br label %108

108:                                              ; preds = %107, %82, %62
  %109 = load %struct.cw1200_common*, %struct.cw1200_common** %6, align 8
  %110 = load i32, i32* %7, align 4
  %111 = load %struct.sk_buff**, %struct.sk_buff*** %9, align 8
  %112 = call i32 @cw1200_rx_cb(%struct.cw1200_common* %109, %struct.wsm_rx* %10, i32 %110, %struct.sk_buff** %111)
  %113 = load %struct.sk_buff**, %struct.sk_buff*** %9, align 8
  %114 = load %struct.sk_buff*, %struct.sk_buff** %113, align 8
  %115 = icmp ne %struct.sk_buff* %114, null
  br i1 %115, label %116, label %121

116:                                              ; preds = %108
  %117 = load %struct.sk_buff**, %struct.sk_buff*** %9, align 8
  %118 = load %struct.sk_buff*, %struct.sk_buff** %117, align 8
  %119 = load i64, i64* %12, align 8
  %120 = call i32 @skb_push(%struct.sk_buff* %118, i64 %119)
  br label %121

121:                                              ; preds = %116, %108
  store i32 0, i32* %5, align 4
  br label %125

122:                                              ; No predecessors!
  %123 = load i32, i32* @EINVAL, align 4
  %124 = sub nsw i32 0, %123
  store i32 %124, i32* %5, align 4
  br label %125

125:                                              ; preds = %122, %121, %50
  %126 = load i32, i32* %5, align 4
  ret i32 %126
}

declare dso_local i8* @WSM_GET32(%struct.wsm_buf*) #1

declare dso_local i32 @WSM_GET16(%struct.wsm_buf*) #1

declare dso_local i8* @WSM_GET8(%struct.wsm_buf*) #1

declare dso_local i64 @ieee80211_is_probe_resp(i32) #1

declare dso_local i64 @ieee80211_is_beacon(i32) #1

declare dso_local i32 @skb_pull(%struct.sk_buff*, i64) #1

declare dso_local i64 @ieee80211_is_deauth(i32) #1

declare dso_local i32 @pr_debug(i8*) #1

declare dso_local i32 @wsm_lock_tx_async(%struct.cw1200_common*) #1

declare dso_local i64 @queue_work(i32, i32*) #1

declare dso_local i32 @wsm_unlock_tx(%struct.cw1200_common*) #1

declare dso_local i32 @cw1200_rx_cb(%struct.cw1200_common*, %struct.wsm_rx*, i32, %struct.sk_buff**) #1

declare dso_local i32 @skb_push(%struct.sk_buff*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
