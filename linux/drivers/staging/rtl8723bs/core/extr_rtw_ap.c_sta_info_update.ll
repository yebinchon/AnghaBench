; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/core/extr_rtw_ap.c_sta_info_update.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/core/extr_rtw_ap.c_sta_info_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { %struct.mlme_priv }
%struct.mlme_priv = type { %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i64 }
%struct.sta_info = type { i32, i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@WLAN_STA_WME = common dso_local global i32 0, align 4
@WLAN_STA_HT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sta_info_update(%struct.adapter* %0, %struct.sta_info* %1) #0 {
  %3 = alloca %struct.adapter*, align 8
  %4 = alloca %struct.sta_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.mlme_priv*, align 8
  store %struct.adapter* %0, %struct.adapter** %3, align 8
  store %struct.sta_info* %1, %struct.sta_info** %4, align 8
  %7 = load %struct.sta_info*, %struct.sta_info** %4, align 8
  %8 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  store i32 %9, i32* %5, align 4
  %10 = load %struct.adapter*, %struct.adapter** %3, align 8
  %11 = getelementptr inbounds %struct.adapter, %struct.adapter* %10, i32 0, i32 0
  store %struct.mlme_priv* %11, %struct.mlme_priv** %6, align 8
  %12 = load i32, i32* @WLAN_STA_WME, align 4
  %13 = load i32, i32* %5, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %2
  %17 = load %struct.sta_info*, %struct.sta_info** %4, align 8
  %18 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %17, i32 0, i32 1
  store i32 1, i32* %18, align 4
  br label %22

19:                                               ; preds = %2
  %20 = load %struct.sta_info*, %struct.sta_info** %4, align 8
  %21 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %20, i32 0, i32 1
  store i32 0, i32* %21, align 4
  br label %22

22:                                               ; preds = %19, %16
  %23 = load %struct.mlme_priv*, %struct.mlme_priv** %6, align 8
  %24 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %22
  %29 = load %struct.sta_info*, %struct.sta_info** %4, align 8
  %30 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %29, i32 0, i32 1
  store i32 0, i32* %30, align 4
  br label %31

31:                                               ; preds = %28, %22
  %32 = load i32, i32* @WLAN_STA_HT, align 4
  %33 = load i32, i32* %5, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %42

36:                                               ; preds = %31
  %37 = load %struct.sta_info*, %struct.sta_info** %4, align 8
  %38 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %37, i32 0, i32 2
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  store i32 1, i32* %39, align 4
  %40 = load %struct.sta_info*, %struct.sta_info** %4, align 8
  %41 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %40, i32 0, i32 1
  store i32 1, i32* %41, align 4
  br label %46

42:                                               ; preds = %31
  %43 = load %struct.sta_info*, %struct.sta_info** %4, align 8
  %44 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %43, i32 0, i32 2
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 0
  store i32 0, i32* %45, align 4
  br label %46

46:                                               ; preds = %42, %36
  %47 = load %struct.mlme_priv*, %struct.mlme_priv** %6, align 8
  %48 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %56, label %52

52:                                               ; preds = %46
  %53 = load %struct.sta_info*, %struct.sta_info** %4, align 8
  %54 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %53, i32 0, i32 2
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 0
  store i32 0, i32* %55, align 4
  br label %56

56:                                               ; preds = %52, %46
  %57 = load %struct.adapter*, %struct.adapter** %3, align 8
  %58 = load %struct.sta_info*, %struct.sta_info** %4, align 8
  %59 = call i32 @update_sta_info_apmode(%struct.adapter* %57, %struct.sta_info* %58)
  ret void
}

declare dso_local i32 @update_sta_info_apmode(%struct.adapter*, %struct.sta_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
