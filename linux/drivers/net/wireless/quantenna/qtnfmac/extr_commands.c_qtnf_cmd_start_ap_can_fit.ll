; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/quantenna/qtnfmac/extr_commands.c_qtnf_cmd_start_ap_can_fit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/quantenna/qtnfmac/extr_commands.c_qtnf_cmd_start_ap_can_fit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qtnf_vif = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.cfg80211_ap_settings = type { %struct.TYPE_6__*, i32, %struct.TYPE_4__, i64 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_4__ = type { i64, i64, i64, i64, i64, i64 }

@mac_addrs = common dso_local global i32 0, align 4
@QTNF_MAX_CMD_BUF_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"VIF%u.%u: can not fit AP settings: %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qtnf_vif*, %struct.cfg80211_ap_settings*)* @qtnf_cmd_start_ap_can_fit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qtnf_cmd_start_ap_can_fit(%struct.qtnf_vif* %0, %struct.cfg80211_ap_settings* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.qtnf_vif*, align 8
  %5 = alloca %struct.cfg80211_ap_settings*, align 8
  %6 = alloca i32, align 4
  store %struct.qtnf_vif* %0, %struct.qtnf_vif** %4, align 8
  store %struct.cfg80211_ap_settings* %1, %struct.cfg80211_ap_settings** %5, align 8
  store i32 4, i32* %6, align 4
  %7 = load %struct.cfg80211_ap_settings*, %struct.cfg80211_ap_settings** %5, align 8
  %8 = getelementptr inbounds %struct.cfg80211_ap_settings, %struct.cfg80211_ap_settings* %7, i32 0, i32 3
  %9 = load i64, i64* %8, align 8
  %10 = load i32, i32* %6, align 4
  %11 = zext i32 %10 to i64
  %12 = add nsw i64 %11, %9
  %13 = trunc i64 %12 to i32
  store i32 %13, i32* %6, align 4
  %14 = load %struct.cfg80211_ap_settings*, %struct.cfg80211_ap_settings** %5, align 8
  %15 = getelementptr inbounds %struct.cfg80211_ap_settings, %struct.cfg80211_ap_settings* %14, i32 0, i32 2
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 5
  %17 = load i64, i64* %16, align 8
  %18 = load i32, i32* %6, align 4
  %19 = zext i32 %18 to i64
  %20 = add nsw i64 %19, %17
  %21 = trunc i64 %20 to i32
  store i32 %21, i32* %6, align 4
  %22 = load %struct.cfg80211_ap_settings*, %struct.cfg80211_ap_settings** %5, align 8
  %23 = getelementptr inbounds %struct.cfg80211_ap_settings, %struct.cfg80211_ap_settings* %22, i32 0, i32 2
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 4
  %25 = load i64, i64* %24, align 8
  %26 = load i32, i32* %6, align 4
  %27 = zext i32 %26 to i64
  %28 = add nsw i64 %27, %25
  %29 = trunc i64 %28 to i32
  store i32 %29, i32* %6, align 4
  %30 = load %struct.cfg80211_ap_settings*, %struct.cfg80211_ap_settings** %5, align 8
  %31 = getelementptr inbounds %struct.cfg80211_ap_settings, %struct.cfg80211_ap_settings* %30, i32 0, i32 2
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 3
  %33 = load i64, i64* %32, align 8
  %34 = load i32, i32* %6, align 4
  %35 = zext i32 %34 to i64
  %36 = add nsw i64 %35, %33
  %37 = trunc i64 %36 to i32
  store i32 %37, i32* %6, align 4
  %38 = load %struct.cfg80211_ap_settings*, %struct.cfg80211_ap_settings** %5, align 8
  %39 = getelementptr inbounds %struct.cfg80211_ap_settings, %struct.cfg80211_ap_settings* %38, i32 0, i32 2
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 2
  %41 = load i64, i64* %40, align 8
  %42 = load i32, i32* %6, align 4
  %43 = zext i32 %42 to i64
  %44 = add nsw i64 %43, %41
  %45 = trunc i64 %44 to i32
  store i32 %45, i32* %6, align 4
  %46 = load %struct.cfg80211_ap_settings*, %struct.cfg80211_ap_settings** %5, align 8
  %47 = getelementptr inbounds %struct.cfg80211_ap_settings, %struct.cfg80211_ap_settings* %46, i32 0, i32 2
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = load i32, i32* %6, align 4
  %51 = zext i32 %50 to i64
  %52 = add nsw i64 %51, %49
  %53 = trunc i64 %52 to i32
  store i32 %53, i32* %6, align 4
  %54 = load %struct.cfg80211_ap_settings*, %struct.cfg80211_ap_settings** %5, align 8
  %55 = getelementptr inbounds %struct.cfg80211_ap_settings, %struct.cfg80211_ap_settings* %54, i32 0, i32 2
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i32, i32* %6, align 4
  %59 = zext i32 %58 to i64
  %60 = add nsw i64 %59, %57
  %61 = trunc i64 %60 to i32
  store i32 %61, i32* %6, align 4
  %62 = load %struct.cfg80211_ap_settings*, %struct.cfg80211_ap_settings** %5, align 8
  %63 = getelementptr inbounds %struct.cfg80211_ap_settings, %struct.cfg80211_ap_settings* %62, i32 0, i32 1
  %64 = call i64 @cfg80211_chandef_valid(i32* %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %71

66:                                               ; preds = %2
  %67 = load i32, i32* %6, align 4
  %68 = zext i32 %67 to i64
  %69 = add i64 %68, 4
  %70 = trunc i64 %69 to i32
  store i32 %70, i32* %6, align 4
  br label %71

71:                                               ; preds = %66, %2
  %72 = load %struct.cfg80211_ap_settings*, %struct.cfg80211_ap_settings** %5, align 8
  %73 = getelementptr inbounds %struct.cfg80211_ap_settings, %struct.cfg80211_ap_settings* %72, i32 0, i32 0
  %74 = load %struct.TYPE_6__*, %struct.TYPE_6__** %73, align 8
  %75 = icmp ne %struct.TYPE_6__* %74, null
  br i1 %75, label %76, label %92

76:                                               ; preds = %71
  %77 = load %struct.cfg80211_ap_settings*, %struct.cfg80211_ap_settings** %5, align 8
  %78 = getelementptr inbounds %struct.cfg80211_ap_settings, %struct.cfg80211_ap_settings* %77, i32 0, i32 0
  %79 = load %struct.TYPE_6__*, %struct.TYPE_6__** %78, align 8
  %80 = load i32, i32* @mac_addrs, align 4
  %81 = load %struct.cfg80211_ap_settings*, %struct.cfg80211_ap_settings** %5, align 8
  %82 = getelementptr inbounds %struct.cfg80211_ap_settings, %struct.cfg80211_ap_settings* %81, i32 0, i32 0
  %83 = load %struct.TYPE_6__*, %struct.TYPE_6__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = call i64 @struct_size(%struct.TYPE_6__* %79, i32 %80, i32 %85)
  %87 = add i64 4, %86
  %88 = load i32, i32* %6, align 4
  %89 = zext i32 %88 to i64
  %90 = add i64 %89, %87
  %91 = trunc i64 %90 to i32
  store i32 %91, i32* %6, align 4
  br label %92

92:                                               ; preds = %76, %71
  %93 = load i32, i32* %6, align 4
  %94 = zext i32 %93 to i64
  %95 = load i32, i32* @QTNF_MAX_CMD_BUF_SIZE, align 4
  %96 = sext i32 %95 to i64
  %97 = add i64 4, %96
  %98 = icmp ugt i64 %94, %97
  br i1 %98, label %99, label %110

99:                                               ; preds = %92
  %100 = load %struct.qtnf_vif*, %struct.qtnf_vif** %4, align 8
  %101 = getelementptr inbounds %struct.qtnf_vif, %struct.qtnf_vif* %100, i32 0, i32 1
  %102 = load %struct.TYPE_5__*, %struct.TYPE_5__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = load %struct.qtnf_vif*, %struct.qtnf_vif** %4, align 8
  %106 = getelementptr inbounds %struct.qtnf_vif, %struct.qtnf_vif* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = load i32, i32* %6, align 4
  %109 = call i32 @pr_err(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %104, i32 %107, i32 %108)
  store i32 0, i32* %3, align 4
  br label %111

110:                                              ; preds = %92
  store i32 1, i32* %3, align 4
  br label %111

111:                                              ; preds = %110, %99
  %112 = load i32, i32* %3, align 4
  ret i32 %112
}

declare dso_local i64 @cfg80211_chandef_valid(i32*) #1

declare dso_local i64 @struct_size(%struct.TYPE_6__*, i32, i32) #1

declare dso_local i32 @pr_err(i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
