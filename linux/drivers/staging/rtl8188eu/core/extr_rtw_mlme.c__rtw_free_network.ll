; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/core/extr_rtw_mlme.c__rtw_free_network.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/core/extr_rtw_mlme.c__rtw_free_network.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlme_priv = type { %struct.__queue }
%struct.__queue = type { i32, i32 }
%struct.wlan_network = type { i64, i32, i64 }

@SCANQUEUE_LIFETIME = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@WIFI_ADHOC_MASTER_STATE = common dso_local global i32 0, align 4
@WIFI_ADHOC_STATE = common dso_local global i32 0, align 4
@HZ = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlme_priv*, %struct.wlan_network*, i32)* @_rtw_free_network to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_rtw_free_network(%struct.mlme_priv* %0, %struct.wlan_network* %1, i32 %2) #0 {
  %4 = alloca %struct.mlme_priv*, align 8
  %5 = alloca %struct.wlan_network*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.__queue*, align 8
  store %struct.mlme_priv* %0, %struct.mlme_priv** %4, align 8
  store %struct.wlan_network* %1, %struct.wlan_network** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load i32, i32* @SCANQUEUE_LIFETIME, align 4
  store i32 %11, i32* %9, align 4
  %12 = load %struct.mlme_priv*, %struct.mlme_priv** %4, align 8
  %13 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %12, i32 0, i32 0
  store %struct.__queue* %13, %struct.__queue** %10, align 8
  %14 = load %struct.wlan_network*, %struct.wlan_network** %5, align 8
  %15 = icmp ne %struct.wlan_network* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %3
  br label %67

17:                                               ; preds = %3
  %18 = load %struct.wlan_network*, %struct.wlan_network** %5, align 8
  %19 = getelementptr inbounds %struct.wlan_network, %struct.wlan_network* %18, i32 0, i32 2
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %17
  br label %67

23:                                               ; preds = %17
  %24 = load i64, i64* @jiffies, align 8
  store i64 %24, i64* %7, align 8
  %25 = load %struct.mlme_priv*, %struct.mlme_priv** %4, align 8
  %26 = load i32, i32* @WIFI_ADHOC_MASTER_STATE, align 4
  %27 = call i64 @check_fwstate(%struct.mlme_priv* %25, i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %34, label %29

29:                                               ; preds = %23
  %30 = load %struct.mlme_priv*, %struct.mlme_priv** %4, align 8
  %31 = load i32, i32* @WIFI_ADHOC_STATE, align 4
  %32 = call i64 @check_fwstate(%struct.mlme_priv* %30, i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %29, %23
  store i32 1, i32* %9, align 4
  br label %35

35:                                               ; preds = %34, %29
  %36 = load i32, i32* %6, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %52, label %38

38:                                               ; preds = %35
  %39 = load i64, i64* %7, align 8
  %40 = load %struct.wlan_network*, %struct.wlan_network** %5, align 8
  %41 = getelementptr inbounds %struct.wlan_network, %struct.wlan_network* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = sub i64 %39, %42
  %44 = load i64, i64* @HZ, align 8
  %45 = udiv i64 %43, %44
  %46 = trunc i64 %45 to i32
  store i32 %46, i32* %8, align 4
  %47 = load i32, i32* %8, align 4
  %48 = load i32, i32* %9, align 4
  %49 = icmp slt i32 %47, %48
  br i1 %49, label %50, label %51

50:                                               ; preds = %38
  br label %67

51:                                               ; preds = %38
  br label %52

52:                                               ; preds = %51, %35
  %53 = load %struct.__queue*, %struct.__queue** %10, align 8
  %54 = getelementptr inbounds %struct.__queue, %struct.__queue* %53, i32 0, i32 0
  %55 = call i32 @spin_lock_bh(i32* %54)
  %56 = load %struct.wlan_network*, %struct.wlan_network** %5, align 8
  %57 = getelementptr inbounds %struct.wlan_network, %struct.wlan_network* %56, i32 0, i32 1
  %58 = call i32 @list_del_init(i32* %57)
  %59 = load %struct.wlan_network*, %struct.wlan_network** %5, align 8
  %60 = getelementptr inbounds %struct.wlan_network, %struct.wlan_network* %59, i32 0, i32 1
  %61 = load %struct.__queue*, %struct.__queue** %10, align 8
  %62 = getelementptr inbounds %struct.__queue, %struct.__queue* %61, i32 0, i32 1
  %63 = call i32 @list_add_tail(i32* %60, i32* %62)
  %64 = load %struct.__queue*, %struct.__queue** %10, align 8
  %65 = getelementptr inbounds %struct.__queue, %struct.__queue* %64, i32 0, i32 0
  %66 = call i32 @spin_unlock_bh(i32* %65)
  br label %67

67:                                               ; preds = %52, %50, %22, %16
  ret void
}

declare dso_local i64 @check_fwstate(%struct.mlme_priv*, i32) #1

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
