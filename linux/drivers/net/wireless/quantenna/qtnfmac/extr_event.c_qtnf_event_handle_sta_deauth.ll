; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/quantenna/qtnfmac/extr_event.c_qtnf_event_handle_sta_deauth.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/quantenna/qtnfmac/extr_event.c_qtnf_event_handle_sta_deauth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qtnf_wmac = type { i32 }
%struct.qtnf_vif = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.qlink_event_sta_deauth = type { i32*, i32 }

@.str = private unnamed_addr constant [43 x i8] c"VIF%u.%u: payload is too short (%u < %zu)\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@NL80211_IFTYPE_AP = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [48 x i8] c"VIF%u.%u: STA_DEAUTH event when not in AP mode\0A\00", align 1
@EPROTO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"VIF%u.%u: MAC:%pM reason:%x\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qtnf_wmac*, %struct.qtnf_vif*, %struct.qlink_event_sta_deauth*, i32)* @qtnf_event_handle_sta_deauth to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qtnf_event_handle_sta_deauth(%struct.qtnf_wmac* %0, %struct.qtnf_vif* %1, %struct.qlink_event_sta_deauth* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.qtnf_wmac*, align 8
  %7 = alloca %struct.qtnf_vif*, align 8
  %8 = alloca %struct.qlink_event_sta_deauth*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  store %struct.qtnf_wmac* %0, %struct.qtnf_wmac** %6, align 8
  store %struct.qtnf_vif* %1, %struct.qtnf_vif** %7, align 8
  store %struct.qlink_event_sta_deauth* %2, %struct.qlink_event_sta_deauth** %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load i32, i32* %9, align 4
  %13 = sext i32 %12 to i64
  %14 = icmp ult i64 %13, 16
  %15 = zext i1 %14 to i32
  %16 = call i64 @unlikely(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %29

18:                                               ; preds = %4
  %19 = load %struct.qtnf_wmac*, %struct.qtnf_wmac** %6, align 8
  %20 = getelementptr inbounds %struct.qtnf_wmac, %struct.qtnf_wmac* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.qtnf_vif*, %struct.qtnf_vif** %7, align 8
  %23 = getelementptr inbounds %struct.qtnf_vif, %struct.qtnf_vif* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* %9, align 4
  %26 = call i32 (i8*, i32, i32, ...) @pr_err(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %21, i32 %24, i32 %25, i64 16)
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %5, align 4
  br label %77

29:                                               ; preds = %4
  %30 = load %struct.qtnf_vif*, %struct.qtnf_vif** %7, align 8
  %31 = getelementptr inbounds %struct.qtnf_vif, %struct.qtnf_vif* %30, i32 0, i32 2
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @NL80211_IFTYPE_AP, align 8
  %35 = icmp ne i64 %33, %34
  br i1 %35, label %36, label %46

36:                                               ; preds = %29
  %37 = load %struct.qtnf_wmac*, %struct.qtnf_wmac** %6, align 8
  %38 = getelementptr inbounds %struct.qtnf_wmac, %struct.qtnf_wmac* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.qtnf_vif*, %struct.qtnf_vif** %7, align 8
  %41 = getelementptr inbounds %struct.qtnf_vif, %struct.qtnf_vif* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = call i32 (i8*, i32, i32, ...) @pr_err(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0), i32 %39, i32 %42)
  %44 = load i32, i32* @EPROTO, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %5, align 4
  br label %77

46:                                               ; preds = %29
  %47 = load %struct.qlink_event_sta_deauth*, %struct.qlink_event_sta_deauth** %8, align 8
  %48 = getelementptr inbounds %struct.qlink_event_sta_deauth, %struct.qlink_event_sta_deauth* %47, i32 0, i32 0
  %49 = load i32*, i32** %48, align 8
  store i32* %49, i32** %10, align 8
  %50 = load %struct.qlink_event_sta_deauth*, %struct.qlink_event_sta_deauth** %8, align 8
  %51 = getelementptr inbounds %struct.qlink_event_sta_deauth, %struct.qlink_event_sta_deauth* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @le16_to_cpu(i32 %52)
  store i32 %53, i32* %11, align 4
  %54 = load %struct.qtnf_wmac*, %struct.qtnf_wmac** %6, align 8
  %55 = getelementptr inbounds %struct.qtnf_wmac, %struct.qtnf_wmac* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.qtnf_vif*, %struct.qtnf_vif** %7, align 8
  %58 = getelementptr inbounds %struct.qtnf_vif, %struct.qtnf_vif* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load i32*, i32** %10, align 8
  %61 = load i32, i32* %11, align 4
  %62 = call i32 @pr_debug(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i32 %56, i32 %59, i32* %60, i32 %61)
  %63 = load %struct.qtnf_vif*, %struct.qtnf_vif** %7, align 8
  %64 = load i32*, i32** %10, align 8
  %65 = call i64 @qtnf_sta_list_del(%struct.qtnf_vif* %63, i32* %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %76

67:                                               ; preds = %46
  %68 = load %struct.qtnf_vif*, %struct.qtnf_vif** %7, align 8
  %69 = getelementptr inbounds %struct.qtnf_vif, %struct.qtnf_vif* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = load %struct.qlink_event_sta_deauth*, %struct.qlink_event_sta_deauth** %8, align 8
  %72 = getelementptr inbounds %struct.qlink_event_sta_deauth, %struct.qlink_event_sta_deauth* %71, i32 0, i32 0
  %73 = load i32*, i32** %72, align 8
  %74 = load i32, i32* @GFP_KERNEL, align 4
  %75 = call i32 @cfg80211_del_sta(i32 %70, i32* %73, i32 %74)
  br label %76

76:                                               ; preds = %67, %46
  store i32 0, i32* %5, align 4
  br label %77

77:                                               ; preds = %76, %36, %18
  %78 = load i32, i32* %5, align 4
  ret i32 %78
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @pr_err(i8*, i32, i32, ...) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @pr_debug(i8*, i32, i32, i32*, i32) #1

declare dso_local i64 @qtnf_sta_list_del(%struct.qtnf_vif*, i32*) #1

declare dso_local i32 @cfg80211_del_sta(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
