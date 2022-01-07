; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/quantenna/qtnfmac/extr_event.c_qtnf_event_handle_mgmt_received.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/quantenna/qtnfmac/extr_event.c_qtnf_event_handle_mgmt_received.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qtnf_vif = type { i32, %struct.TYPE_4__*, i32, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.qlink_event_rxmgmt = type { i64, i32, i32, i32 }
%struct.ieee80211_hdr_3addr = type { i32, i32 }

@.str = private unnamed_addr constant [43 x i8] c"VIF%u.%u: payload is too short (%u < %zu)\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@QLINK_RXMGMT_FLAG_ANSWERED = common dso_local global i32 0, align 4
@NL80211_RXMGMT_FLAG_ANSWERED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"%s LEN:%u FC:%.4X SA:%pM\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qtnf_vif*, %struct.qlink_event_rxmgmt*, i32)* @qtnf_event_handle_mgmt_received to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qtnf_event_handle_mgmt_received(%struct.qtnf_vif* %0, %struct.qlink_event_rxmgmt* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.qtnf_vif*, align 8
  %6 = alloca %struct.qlink_event_rxmgmt*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca %struct.ieee80211_hdr_3addr*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.qtnf_vif* %0, %struct.qtnf_vif** %5, align 8
  store %struct.qlink_event_rxmgmt* %1, %struct.qlink_event_rxmgmt** %6, align 8
  store i32 %2, i32* %7, align 4
  store i64 32, i64* %8, align 8
  %12 = load %struct.qlink_event_rxmgmt*, %struct.qlink_event_rxmgmt** %6, align 8
  %13 = getelementptr inbounds %struct.qlink_event_rxmgmt, %struct.qlink_event_rxmgmt* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = inttoptr i64 %14 to i8*
  %16 = bitcast i8* %15 to %struct.ieee80211_hdr_3addr*
  store %struct.ieee80211_hdr_3addr* %16, %struct.ieee80211_hdr_3addr** %9, align 8
  %17 = load i32, i32* %7, align 4
  %18 = sext i32 %17 to i64
  %19 = sub i64 %18, 24
  %20 = trunc i64 %19 to i32
  store i32 %20, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %21 = load i32, i32* %7, align 4
  %22 = sext i32 %21 to i64
  %23 = icmp ult i64 %22, 32
  %24 = zext i1 %23 to i32
  %25 = call i64 @unlikely(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %40

27:                                               ; preds = %3
  %28 = load %struct.qtnf_vif*, %struct.qtnf_vif** %5, align 8
  %29 = getelementptr inbounds %struct.qtnf_vif, %struct.qtnf_vif* %28, i32 0, i32 3
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.qtnf_vif*, %struct.qtnf_vif** %5, align 8
  %34 = getelementptr inbounds %struct.qtnf_vif, %struct.qtnf_vif* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* %7, align 4
  %37 = call i32 @pr_err(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %32, i32 %35, i32 %36, i64 32)
  %38 = load i32, i32* @EINVAL, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %4, align 4
  br label %82

40:                                               ; preds = %3
  %41 = load %struct.qlink_event_rxmgmt*, %struct.qlink_event_rxmgmt** %6, align 8
  %42 = getelementptr inbounds %struct.qlink_event_rxmgmt, %struct.qlink_event_rxmgmt* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @le32_to_cpu(i32 %43)
  %45 = load i32, i32* @QLINK_RXMGMT_FLAG_ANSWERED, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %40
  %49 = load i32, i32* @NL80211_RXMGMT_FLAG_ANSWERED, align 4
  %50 = load i32, i32* %11, align 4
  %51 = or i32 %50, %49
  store i32 %51, i32* %11, align 4
  br label %52

52:                                               ; preds = %48, %40
  %53 = load %struct.qtnf_vif*, %struct.qtnf_vif** %5, align 8
  %54 = getelementptr inbounds %struct.qtnf_vif, %struct.qtnf_vif* %53, i32 0, i32 1
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* %10, align 4
  %59 = load %struct.ieee80211_hdr_3addr*, %struct.ieee80211_hdr_3addr** %9, align 8
  %60 = getelementptr inbounds %struct.ieee80211_hdr_3addr, %struct.ieee80211_hdr_3addr* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @le16_to_cpu(i32 %61)
  %63 = load %struct.ieee80211_hdr_3addr*, %struct.ieee80211_hdr_3addr** %9, align 8
  %64 = getelementptr inbounds %struct.ieee80211_hdr_3addr, %struct.ieee80211_hdr_3addr* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @pr_debug(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %57, i32 %58, i32 %62, i32 %65)
  %67 = load %struct.qtnf_vif*, %struct.qtnf_vif** %5, align 8
  %68 = getelementptr inbounds %struct.qtnf_vif, %struct.qtnf_vif* %67, i32 0, i32 0
  %69 = load %struct.qlink_event_rxmgmt*, %struct.qlink_event_rxmgmt** %6, align 8
  %70 = getelementptr inbounds %struct.qlink_event_rxmgmt, %struct.qlink_event_rxmgmt* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @le32_to_cpu(i32 %71)
  %73 = load %struct.qlink_event_rxmgmt*, %struct.qlink_event_rxmgmt** %6, align 8
  %74 = getelementptr inbounds %struct.qlink_event_rxmgmt, %struct.qlink_event_rxmgmt* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 8
  %76 = load %struct.qlink_event_rxmgmt*, %struct.qlink_event_rxmgmt** %6, align 8
  %77 = getelementptr inbounds %struct.qlink_event_rxmgmt, %struct.qlink_event_rxmgmt* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load i32, i32* %10, align 4
  %80 = load i32, i32* %11, align 4
  %81 = call i32 @cfg80211_rx_mgmt(i32* %68, i32 %72, i32 %75, i64 %78, i32 %79, i32 %80)
  store i32 0, i32* %4, align 4
  br label %82

82:                                               ; preds = %52, %27
  %83 = load i32, i32* %4, align 4
  ret i32 %83
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @pr_err(i8*, i32, i32, i32, i64) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @pr_debug(i8*, i32, i32, i32, i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @cfg80211_rx_mgmt(i32*, i32, i32, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
