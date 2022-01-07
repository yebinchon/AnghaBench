; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/quantenna/qtnfmac/extr_core.c_qtnf_mac_iface_comb_free.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/quantenna/qtnfmac/extr_core.c_qtnf_mac_iface_comb_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qtnf_wmac = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, %struct.ieee80211_iface_combination* }
%struct.ieee80211_iface_combination = type { %struct.ieee80211_iface_combination* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @qtnf_mac_iface_comb_free(%struct.qtnf_wmac* %0) #0 {
  %2 = alloca %struct.qtnf_wmac*, align 8
  %3 = alloca %struct.ieee80211_iface_combination*, align 8
  %4 = alloca i32, align 4
  store %struct.qtnf_wmac* %0, %struct.qtnf_wmac** %2, align 8
  %5 = load %struct.qtnf_wmac*, %struct.qtnf_wmac** %2, align 8
  %6 = getelementptr inbounds %struct.qtnf_wmac, %struct.qtnf_wmac* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 1
  %8 = load %struct.ieee80211_iface_combination*, %struct.ieee80211_iface_combination** %7, align 8
  %9 = icmp ne %struct.ieee80211_iface_combination* %8, null
  br i1 %9, label %10, label %44

10:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  br label %11

11:                                               ; preds = %32, %10
  %12 = load i32, i32* %4, align 4
  %13 = load %struct.qtnf_wmac*, %struct.qtnf_wmac** %2, align 8
  %14 = getelementptr inbounds %struct.qtnf_wmac, %struct.qtnf_wmac* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp slt i32 %12, %16
  br i1 %17, label %18, label %35

18:                                               ; preds = %11
  %19 = load %struct.qtnf_wmac*, %struct.qtnf_wmac** %2, align 8
  %20 = getelementptr inbounds %struct.qtnf_wmac, %struct.qtnf_wmac* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 1
  %22 = load %struct.ieee80211_iface_combination*, %struct.ieee80211_iface_combination** %21, align 8
  %23 = load i32, i32* %4, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.ieee80211_iface_combination, %struct.ieee80211_iface_combination* %22, i64 %24
  store %struct.ieee80211_iface_combination* %25, %struct.ieee80211_iface_combination** %3, align 8
  %26 = load %struct.ieee80211_iface_combination*, %struct.ieee80211_iface_combination** %3, align 8
  %27 = getelementptr inbounds %struct.ieee80211_iface_combination, %struct.ieee80211_iface_combination* %26, i32 0, i32 0
  %28 = load %struct.ieee80211_iface_combination*, %struct.ieee80211_iface_combination** %27, align 8
  %29 = call i32 @kfree(%struct.ieee80211_iface_combination* %28)
  %30 = load %struct.ieee80211_iface_combination*, %struct.ieee80211_iface_combination** %3, align 8
  %31 = getelementptr inbounds %struct.ieee80211_iface_combination, %struct.ieee80211_iface_combination* %30, i32 0, i32 0
  store %struct.ieee80211_iface_combination* null, %struct.ieee80211_iface_combination** %31, align 8
  br label %32

32:                                               ; preds = %18
  %33 = load i32, i32* %4, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %4, align 4
  br label %11

35:                                               ; preds = %11
  %36 = load %struct.qtnf_wmac*, %struct.qtnf_wmac** %2, align 8
  %37 = getelementptr inbounds %struct.qtnf_wmac, %struct.qtnf_wmac* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 1
  %39 = load %struct.ieee80211_iface_combination*, %struct.ieee80211_iface_combination** %38, align 8
  %40 = call i32 @kfree(%struct.ieee80211_iface_combination* %39)
  %41 = load %struct.qtnf_wmac*, %struct.qtnf_wmac** %2, align 8
  %42 = getelementptr inbounds %struct.qtnf_wmac, %struct.qtnf_wmac* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 1
  store %struct.ieee80211_iface_combination* null, %struct.ieee80211_iface_combination** %43, align 8
  br label %44

44:                                               ; preds = %35, %1
  ret void
}

declare dso_local i32 @kfree(%struct.ieee80211_iface_combination*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
