; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/core/extr_rtw_wlan_util.c_allocate_fw_sta_entry.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/core/extr_rtw_wlan_util.c_allocate_fw_sta_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { %struct.mlme_ext_priv }
%struct.mlme_ext_priv = type { %struct.mlme_ext_info }
%struct.mlme_ext_info = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i64 }

@IBSS_START_MAC_ID = common dso_local global i32 0, align 4
@NUM_STA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @allocate_fw_sta_entry(%struct.adapter* %0) #0 {
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
  %10 = load i32, i32* @IBSS_START_MAC_ID, align 4
  store i32 %10, i32* %3, align 4
  br label %11

11:                                               ; preds = %41, %1
  %12 = load i32, i32* %3, align 4
  %13 = load i32, i32* @NUM_STA, align 4
  %14 = icmp ult i32 %12, %13
  br i1 %14, label %15, label %44

15:                                               ; preds = %11
  %16 = load %struct.mlme_ext_info*, %struct.mlme_ext_info** %5, align 8
  %17 = getelementptr inbounds %struct.mlme_ext_info, %struct.mlme_ext_info* %16, i32 0, i32 0
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = load i32, i32* %3, align 4
  %20 = zext i32 %19 to i64
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i64 %20
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %40

25:                                               ; preds = %15
  %26 = load %struct.mlme_ext_info*, %struct.mlme_ext_info** %5, align 8
  %27 = getelementptr inbounds %struct.mlme_ext_info, %struct.mlme_ext_info* %26, i32 0, i32 0
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = load i32, i32* %3, align 4
  %30 = zext i32 %29 to i64
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  store i32 1, i32* %32, align 8
  %33 = load %struct.mlme_ext_info*, %struct.mlme_ext_info** %5, align 8
  %34 = getelementptr inbounds %struct.mlme_ext_info, %struct.mlme_ext_info* %33, i32 0, i32 0
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = load i32, i32* %3, align 4
  %37 = zext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 1
  store i64 0, i64* %39, align 8
  br label %44

40:                                               ; preds = %15
  br label %41

41:                                               ; preds = %40
  %42 = load i32, i32* %3, align 4
  %43 = add i32 %42, 1
  store i32 %43, i32* %3, align 4
  br label %11

44:                                               ; preds = %25, %11
  %45 = load i32, i32* %3, align 4
  ret i32 %45
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
