; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/extr_core.c_rtl_op_remove_interface.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/extr_core.c_rtl_op_remove_interface.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.ieee80211_vif = type { i64 }
%struct.rtl_priv = type { %struct.TYPE_6__, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__*, i32* }
%struct.TYPE_4__ = type { i32 (%struct.ieee80211_hw*, i32)*, i32 (%struct.ieee80211_hw*, i32, i32)* }
%struct.rtl_mac = type { i32, i32, i32, i32, i32, i32*, i64 }

@NL80211_IFTYPE_AP = common dso_local global i64 0, align 8
@NL80211_IFTYPE_ADHOC = common dso_local global i64 0, align 8
@NL80211_IFTYPE_MESH_POINT = common dso_local global i64 0, align 8
@RTL_IBSS_INT_MASKS = common dso_local global i64 0, align 8
@MAC80211_NOLINK = common dso_local global i32 0, align 4
@PEER_UNKNOWN = common dso_local global i32 0, align 4
@NL80211_IFTYPE_UNSPECIFIED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*, %struct.ieee80211_vif*)* @rtl_op_remove_interface to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtl_op_remove_interface(%struct.ieee80211_hw* %0, %struct.ieee80211_vif* %1) #0 {
  %3 = alloca %struct.ieee80211_hw*, align 8
  %4 = alloca %struct.ieee80211_vif*, align 8
  %5 = alloca %struct.rtl_priv*, align 8
  %6 = alloca %struct.rtl_mac*, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %3, align 8
  store %struct.ieee80211_vif* %1, %struct.ieee80211_vif** %4, align 8
  %7 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %8 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %7)
  store %struct.rtl_priv* %8, %struct.rtl_priv** %5, align 8
  %9 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %10 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %9)
  %11 = call %struct.rtl_mac* @rtl_mac(%struct.rtl_priv* %10)
  store %struct.rtl_mac* %11, %struct.rtl_mac** %6, align 8
  %12 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %13 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %15 = call i32 @mutex_lock(i32* %14)
  %16 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %4, align 8
  %17 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @NL80211_IFTYPE_AP, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %33, label %21

21:                                               ; preds = %2
  %22 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %4, align 8
  %23 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @NL80211_IFTYPE_ADHOC, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %33, label %27

27:                                               ; preds = %21
  %28 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %4, align 8
  %29 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @NL80211_IFTYPE_MESH_POINT, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %59

33:                                               ; preds = %27, %21, %2
  %34 = load %struct.rtl_mac*, %struct.rtl_mac** %6, align 8
  %35 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = icmp eq i32 %36, 1
  br i1 %37, label %38, label %58

38:                                               ; preds = %33
  %39 = load %struct.rtl_mac*, %struct.rtl_mac** %6, align 8
  %40 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %39, i32 0, i32 0
  store i32 0, i32* %40, align 8
  %41 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %42 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %41, i32 0, i32 1
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 1
  %47 = load i32 (%struct.ieee80211_hw*, i32, i32)*, i32 (%struct.ieee80211_hw*, i32, i32)** %46, align 8
  %48 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %49 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %50 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %49, i32 0, i32 1
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 1
  %53 = load i32*, i32** %52, align 8
  %54 = load i64, i64* @RTL_IBSS_INT_MASKS, align 8
  %55 = getelementptr inbounds i32, i32* %53, i64 %54
  %56 = load i32, i32* %55, align 4
  %57 = call i32 %47(%struct.ieee80211_hw* %48, i32 0, i32 %56)
  br label %58

58:                                               ; preds = %38, %33
  br label %59

59:                                               ; preds = %58, %27
  %60 = load %struct.rtl_mac*, %struct.rtl_mac** %6, align 8
  %61 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %60, i32 0, i32 6
  store i64 0, i64* %61, align 8
  %62 = load %struct.rtl_mac*, %struct.rtl_mac** %6, align 8
  %63 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %62, i32 0, i32 5
  store i32* null, i32** %63, align 8
  %64 = load i32, i32* @MAC80211_NOLINK, align 4
  %65 = load %struct.rtl_mac*, %struct.rtl_mac** %6, align 8
  %66 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %65, i32 0, i32 4
  store i32 %64, i32* %66, align 8
  %67 = load %struct.rtl_mac*, %struct.rtl_mac** %6, align 8
  %68 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %67, i32 0, i32 3
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @eth_zero_addr(i32 %69)
  %71 = load i32, i32* @PEER_UNKNOWN, align 4
  %72 = load %struct.rtl_mac*, %struct.rtl_mac** %6, align 8
  %73 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %72, i32 0, i32 2
  store i32 %71, i32* %73, align 8
  %74 = load i32, i32* @NL80211_IFTYPE_UNSPECIFIED, align 4
  %75 = load %struct.rtl_mac*, %struct.rtl_mac** %6, align 8
  %76 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %75, i32 0, i32 1
  store i32 %74, i32* %76, align 4
  %77 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %78 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %77, i32 0, i32 1
  %79 = load %struct.TYPE_5__*, %struct.TYPE_5__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 0
  %81 = load %struct.TYPE_4__*, %struct.TYPE_4__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 0
  %83 = load i32 (%struct.ieee80211_hw*, i32)*, i32 (%struct.ieee80211_hw*, i32)** %82, align 8
  %84 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %85 = load %struct.rtl_mac*, %struct.rtl_mac** %6, align 8
  %86 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = call i32 %83(%struct.ieee80211_hw* %84, i32 %87)
  %89 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %90 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 0
  %92 = call i32 @mutex_unlock(i32* %91)
  ret void
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local %struct.rtl_mac* @rtl_mac(%struct.rtl_priv*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @eth_zero_addr(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
