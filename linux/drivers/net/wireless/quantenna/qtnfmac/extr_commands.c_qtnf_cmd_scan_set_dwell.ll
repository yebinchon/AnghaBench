; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/quantenna/qtnfmac/extr_commands.c_qtnf_cmd_scan_set_dwell.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/quantenna/qtnfmac/extr_commands.c_qtnf_cmd_scan_set_dwell.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qtnf_wmac = type { i32, %struct.cfg80211_scan_request* }
%struct.cfg80211_scan_request = type { i64, i64 }
%struct.sk_buff = type { i32 }

@QTNF_SCAN_DWELL_ACTIVE_DEFAULT = common dso_local global i64 0, align 8
@QTNF_SCAN_DWELL_PASSIVE_DEFAULT = common dso_local global i64 0, align 8
@QTNF_SCAN_SAMPLE_DURATION_DEFAULT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [57 x i8] c"MAC%u: %s scan dwell active=%u, passive=%u, duration=%u\0A\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"mandatory\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"max\00", align 1
@QTN_TLV_ID_SCAN_DWELL_ACTIVE = common dso_local global i32 0, align 4
@QTN_TLV_ID_SCAN_DWELL_PASSIVE = common dso_local global i32 0, align 4
@QTN_TLV_ID_SCAN_SAMPLE_DURATION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qtnf_wmac*, %struct.sk_buff*)* @qtnf_cmd_scan_set_dwell to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qtnf_cmd_scan_set_dwell(%struct.qtnf_wmac* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.qtnf_wmac*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.cfg80211_scan_request*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.qtnf_wmac* %0, %struct.qtnf_wmac** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %9 = load %struct.qtnf_wmac*, %struct.qtnf_wmac** %3, align 8
  %10 = getelementptr inbounds %struct.qtnf_wmac, %struct.qtnf_wmac* %9, i32 0, i32 1
  %11 = load %struct.cfg80211_scan_request*, %struct.cfg80211_scan_request** %10, align 8
  store %struct.cfg80211_scan_request* %11, %struct.cfg80211_scan_request** %5, align 8
  %12 = load i64, i64* @QTNF_SCAN_DWELL_ACTIVE_DEFAULT, align 8
  store i64 %12, i64* %6, align 8
  %13 = load i64, i64* @QTNF_SCAN_DWELL_PASSIVE_DEFAULT, align 8
  store i64 %13, i64* %7, align 8
  %14 = load i64, i64* @QTNF_SCAN_SAMPLE_DURATION_DEFAULT, align 8
  store i64 %14, i64* %8, align 8
  %15 = load %struct.cfg80211_scan_request*, %struct.cfg80211_scan_request** %5, align 8
  %16 = getelementptr inbounds %struct.cfg80211_scan_request, %struct.cfg80211_scan_request* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %26

19:                                               ; preds = %2
  %20 = load %struct.cfg80211_scan_request*, %struct.cfg80211_scan_request** %5, align 8
  %21 = getelementptr inbounds %struct.cfg80211_scan_request, %struct.cfg80211_scan_request* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  store i64 %22, i64* %6, align 8
  %23 = load %struct.cfg80211_scan_request*, %struct.cfg80211_scan_request** %5, align 8
  %24 = getelementptr inbounds %struct.cfg80211_scan_request, %struct.cfg80211_scan_request* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  store i64 %25, i64* %7, align 8
  br label %26

26:                                               ; preds = %19, %2
  %27 = load %struct.qtnf_wmac*, %struct.qtnf_wmac** %3, align 8
  %28 = getelementptr inbounds %struct.qtnf_wmac, %struct.qtnf_wmac* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.cfg80211_scan_request*, %struct.cfg80211_scan_request** %5, align 8
  %31 = getelementptr inbounds %struct.cfg80211_scan_request, %struct.cfg80211_scan_request* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  %34 = zext i1 %33 to i64
  %35 = select i1 %33, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)
  %36 = load i64, i64* %6, align 8
  %37 = load i64, i64* %7, align 8
  %38 = load i64, i64* %8, align 8
  %39 = call i32 @pr_debug(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0), i32 %29, i8* %35, i64 %36, i64 %37, i64 %38)
  %40 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %41 = load i32, i32* @QTN_TLV_ID_SCAN_DWELL_ACTIVE, align 4
  %42 = load i64, i64* %6, align 8
  %43 = call i32 @qtnf_cmd_skb_put_tlv_u16(%struct.sk_buff* %40, i32 %41, i64 %42)
  %44 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %45 = load i32, i32* @QTN_TLV_ID_SCAN_DWELL_PASSIVE, align 4
  %46 = load i64, i64* %7, align 8
  %47 = call i32 @qtnf_cmd_skb_put_tlv_u16(%struct.sk_buff* %44, i32 %45, i64 %46)
  %48 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %49 = load i32, i32* @QTN_TLV_ID_SCAN_SAMPLE_DURATION, align 4
  %50 = load i64, i64* %8, align 8
  %51 = call i32 @qtnf_cmd_skb_put_tlv_u16(%struct.sk_buff* %48, i32 %49, i64 %50)
  ret void
}

declare dso_local i32 @pr_debug(i8*, i32, i8*, i64, i64, i64) #1

declare dso_local i32 @qtnf_cmd_skb_put_tlv_u16(%struct.sk_buff*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
