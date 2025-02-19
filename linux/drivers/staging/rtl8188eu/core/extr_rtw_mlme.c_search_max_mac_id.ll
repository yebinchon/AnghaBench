; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/core/extr_rtw_mlme.c_search_max_mac_id.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/core/extr_rtw_mlme.c_search_max_mac_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { %struct.mlme_ext_priv, %struct.sta_priv, %struct.mlme_priv }
%struct.mlme_ext_priv = type { %struct.mlme_ext_info }
%struct.mlme_ext_info = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.sta_priv = type { i32, i64* }
%struct.mlme_priv = type { i32 }

@NUM_STA = common dso_local global i32 0, align 4
@IBSS_START_MAC_ID = common dso_local global i32 0, align 4
@WIFI_AP_STATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.adapter*)* @search_max_mac_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @search_max_mac_id(%struct.adapter* %0) #0 {
  %2 = alloca %struct.adapter*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.mlme_ext_priv*, align 8
  %5 = alloca %struct.mlme_ext_info*, align 8
  store %struct.adapter* %0, %struct.adapter** %2, align 8
  %6 = load %struct.adapter*, %struct.adapter** %2, align 8
  %7 = getelementptr inbounds %struct.adapter, %struct.adapter* %6, i32 0, i32 0
  store %struct.mlme_ext_priv* %7, %struct.mlme_ext_priv** %4, align 8
  %8 = load %struct.mlme_ext_priv*, %struct.mlme_ext_priv** %4, align 8
  %9 = getelementptr inbounds %struct.mlme_ext_priv, %struct.mlme_ext_priv* %8, i32 0, i32 0
  store %struct.mlme_ext_info* %9, %struct.mlme_ext_info** %5, align 8
  %10 = load i32, i32* @NUM_STA, align 4
  %11 = sub nsw i32 %10, 1
  store i32 %11, i32* %3, align 4
  br label %12

12:                                               ; preds = %28, %1
  %13 = load i32, i32* %3, align 4
  %14 = load i32, i32* @IBSS_START_MAC_ID, align 4
  %15 = icmp sge i32 %13, %14
  br i1 %15, label %16, label %31

16:                                               ; preds = %12
  %17 = load %struct.mlme_ext_info*, %struct.mlme_ext_info** %5, align 8
  %18 = getelementptr inbounds %struct.mlme_ext_info, %struct.mlme_ext_info* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = load i32, i32* %3, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i64 %21
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = icmp eq i32 %24, 1
  br i1 %25, label %26, label %27

26:                                               ; preds = %16
  br label %31

27:                                               ; preds = %16
  br label %28

28:                                               ; preds = %27
  %29 = load i32, i32* %3, align 4
  %30 = add nsw i32 %29, -1
  store i32 %30, i32* %3, align 4
  br label %12

31:                                               ; preds = %26, %12
  %32 = load i32, i32* %3, align 4
  ret i32 %32
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
