; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/quantenna/qtnfmac/extr_event.c_qtnf_event_handle_bss_leave.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/quantenna/qtnfmac/extr_event.c_qtnf_event_handle_bss_leave.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qtnf_vif = type { i32, i32, %struct.TYPE_4__*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i64 }
%struct.qlink_event_bss_leave = type { i32 }

@.str = private unnamed_addr constant [43 x i8] c"VIF%u.%u: payload is too short (%u < %zu)\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@NL80211_IFTYPE_STATION = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [48 x i8] c"VIF%u.%u: BSS_LEAVE event when not in STA mode\0A\00", align 1
@EPROTO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [24 x i8] c"VIF%u.%u: disconnected\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qtnf_vif*, %struct.qlink_event_bss_leave*, i32)* @qtnf_event_handle_bss_leave to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qtnf_event_handle_bss_leave(%struct.qtnf_vif* %0, %struct.qlink_event_bss_leave* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.qtnf_vif*, align 8
  %6 = alloca %struct.qlink_event_bss_leave*, align 8
  %7 = alloca i32, align 4
  store %struct.qtnf_vif* %0, %struct.qtnf_vif** %5, align 8
  store %struct.qlink_event_bss_leave* %1, %struct.qlink_event_bss_leave** %6, align 8
  store i32 %2, i32* %7, align 4
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  %10 = icmp ult i64 %9, 4
  %11 = zext i1 %10 to i32
  %12 = call i64 @unlikely(i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %27

14:                                               ; preds = %3
  %15 = load %struct.qtnf_vif*, %struct.qtnf_vif** %5, align 8
  %16 = getelementptr inbounds %struct.qtnf_vif, %struct.qtnf_vif* %15, i32 0, i32 2
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.qtnf_vif*, %struct.qtnf_vif** %5, align 8
  %21 = getelementptr inbounds %struct.qtnf_vif, %struct.qtnf_vif* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* %7, align 4
  %24 = call i32 (i8*, i32, i32, ...) @pr_err(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %19, i32 %22, i32 %23, i64 4)
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %4, align 4
  br label %69

27:                                               ; preds = %3
  %28 = load %struct.qtnf_vif*, %struct.qtnf_vif** %5, align 8
  %29 = getelementptr inbounds %struct.qtnf_vif, %struct.qtnf_vif* %28, i32 0, i32 3
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @NL80211_IFTYPE_STATION, align 8
  %33 = icmp ne i64 %31, %32
  br i1 %33, label %34, label %46

34:                                               ; preds = %27
  %35 = load %struct.qtnf_vif*, %struct.qtnf_vif** %5, align 8
  %36 = getelementptr inbounds %struct.qtnf_vif, %struct.qtnf_vif* %35, i32 0, i32 2
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.qtnf_vif*, %struct.qtnf_vif** %5, align 8
  %41 = getelementptr inbounds %struct.qtnf_vif, %struct.qtnf_vif* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = call i32 (i8*, i32, i32, ...) @pr_err(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0), i32 %39, i32 %42)
  %44 = load i32, i32* @EPROTO, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %4, align 4
  br label %69

46:                                               ; preds = %27
  %47 = load %struct.qtnf_vif*, %struct.qtnf_vif** %5, align 8
  %48 = getelementptr inbounds %struct.qtnf_vif, %struct.qtnf_vif* %47, i32 0, i32 2
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.qtnf_vif*, %struct.qtnf_vif** %5, align 8
  %53 = getelementptr inbounds %struct.qtnf_vif, %struct.qtnf_vif* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @pr_debug(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i32 %51, i32 %54)
  %56 = load %struct.qtnf_vif*, %struct.qtnf_vif** %5, align 8
  %57 = getelementptr inbounds %struct.qtnf_vif, %struct.qtnf_vif* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.qlink_event_bss_leave*, %struct.qlink_event_bss_leave** %6, align 8
  %60 = getelementptr inbounds %struct.qlink_event_bss_leave, %struct.qlink_event_bss_leave* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @le16_to_cpu(i32 %61)
  %63 = load i32, i32* @GFP_KERNEL, align 4
  %64 = call i32 @cfg80211_disconnected(i32 %58, i32 %62, i32* null, i32 0, i32 0, i32 %63)
  %65 = load %struct.qtnf_vif*, %struct.qtnf_vif** %5, align 8
  %66 = getelementptr inbounds %struct.qtnf_vif, %struct.qtnf_vif* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @netif_carrier_off(i32 %67)
  store i32 0, i32* %4, align 4
  br label %69

69:                                               ; preds = %46, %34, %14
  %70 = load i32, i32* %4, align 4
  ret i32 %70
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @pr_err(i8*, i32, i32, ...) #1

declare dso_local i32 @pr_debug(i8*, i32, i32) #1

declare dso_local i32 @cfg80211_disconnected(i32, i32, i32*, i32, i32, i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @netif_carrier_off(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
