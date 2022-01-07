; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/core/extr_rtw_mlme.c__rtw_free_network.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/core/extr_rtw_mlme.c__rtw_free_network.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlme_priv = type { i32, %struct.__queue }
%struct.__queue = type { i32, i32 }
%struct.wlan_network = type { i32, i32, i64 }

@SCANQUEUE_LIFETIME = common dso_local global i32 0, align 4
@WIFI_ADHOC_MASTER_STATE = common dso_local global i32 0, align 4
@WIFI_ADHOC_STATE = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @_rtw_free_network(%struct.mlme_priv* %0, %struct.wlan_network* %1, i32 %2) #0 {
  %4 = alloca %struct.mlme_priv*, align 8
  %5 = alloca %struct.wlan_network*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.__queue*, align 8
  store %struct.mlme_priv* %0, %struct.mlme_priv** %4, align 8
  store %struct.wlan_network* %1, %struct.wlan_network** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load i32, i32* @SCANQUEUE_LIFETIME, align 4
  store i32 %10, i32* %8, align 4
  %11 = load %struct.mlme_priv*, %struct.mlme_priv** %4, align 8
  %12 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %11, i32 0, i32 1
  store %struct.__queue* %12, %struct.__queue** %9, align 8
  %13 = load %struct.wlan_network*, %struct.wlan_network** %5, align 8
  %14 = icmp eq %struct.wlan_network* %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %3
  br label %67

16:                                               ; preds = %3
  %17 = load %struct.wlan_network*, %struct.wlan_network** %5, align 8
  %18 = getelementptr inbounds %struct.wlan_network, %struct.wlan_network* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp eq i32 %19, 1
  br i1 %20, label %21, label %22

21:                                               ; preds = %16
  br label %67

22:                                               ; preds = %16
  %23 = load %struct.mlme_priv*, %struct.mlme_priv** %4, align 8
  %24 = load i32, i32* @WIFI_ADHOC_MASTER_STATE, align 4
  %25 = call i32 @check_fwstate(%struct.mlme_priv* %23, i32 %24)
  %26 = icmp eq i32 %25, 1
  br i1 %26, label %32, label %27

27:                                               ; preds = %22
  %28 = load %struct.mlme_priv*, %struct.mlme_priv** %4, align 8
  %29 = load i32, i32* @WIFI_ADHOC_STATE, align 4
  %30 = call i32 @check_fwstate(%struct.mlme_priv* %28, i32 %29)
  %31 = icmp eq i32 %30, 1
  br i1 %31, label %32, label %33

32:                                               ; preds = %27, %22
  store i32 1, i32* %8, align 4
  br label %33

33:                                               ; preds = %32, %27
  %34 = load i32, i32* %6, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %48, label %36

36:                                               ; preds = %33
  %37 = load i64, i64* @jiffies, align 8
  %38 = load %struct.wlan_network*, %struct.wlan_network** %5, align 8
  %39 = getelementptr inbounds %struct.wlan_network, %struct.wlan_network* %38, i32 0, i32 2
  %40 = load i64, i64* %39, align 8
  %41 = sub nsw i64 %37, %40
  %42 = call i32 @jiffies_to_msecs(i64 %41)
  store i32 %42, i32* %7, align 4
  %43 = load i32, i32* %7, align 4
  %44 = load i32, i32* %8, align 4
  %45 = icmp ult i32 %43, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %36
  br label %67

47:                                               ; preds = %36
  br label %48

48:                                               ; preds = %47, %33
  %49 = load %struct.__queue*, %struct.__queue** %9, align 8
  %50 = getelementptr inbounds %struct.__queue, %struct.__queue* %49, i32 0, i32 0
  %51 = call i32 @spin_lock_bh(i32* %50)
  %52 = load %struct.wlan_network*, %struct.wlan_network** %5, align 8
  %53 = getelementptr inbounds %struct.wlan_network, %struct.wlan_network* %52, i32 0, i32 1
  %54 = call i32 @list_del_init(i32* %53)
  %55 = load %struct.wlan_network*, %struct.wlan_network** %5, align 8
  %56 = getelementptr inbounds %struct.wlan_network, %struct.wlan_network* %55, i32 0, i32 1
  %57 = load %struct.__queue*, %struct.__queue** %9, align 8
  %58 = getelementptr inbounds %struct.__queue, %struct.__queue* %57, i32 0, i32 1
  %59 = call i32 @list_add_tail(i32* %56, i32* %58)
  %60 = load %struct.mlme_priv*, %struct.mlme_priv** %4, align 8
  %61 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = add nsw i32 %62, -1
  store i32 %63, i32* %61, align 4
  %64 = load %struct.__queue*, %struct.__queue** %9, align 8
  %65 = getelementptr inbounds %struct.__queue, %struct.__queue* %64, i32 0, i32 0
  %66 = call i32 @spin_unlock_bh(i32* %65)
  br label %67

67:                                               ; preds = %48, %46, %21, %15
  ret void
}

declare dso_local i32 @check_fwstate(%struct.mlme_priv*, i32) #1

declare dso_local i32 @jiffies_to_msecs(i64) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @list_del_init(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
