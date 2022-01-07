; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/extr_base.c_setup_special_tx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/extr_base.c_setup_special_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtl_priv = type { %struct.TYPE_10__, %struct.TYPE_8__*, %struct.TYPE_6__, %struct.ieee80211_hw* }
%struct.TYPE_10__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32 (%struct.rtl_priv*, i32)* }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i64 (...)* }
%struct.TYPE_6__ = type { i32 }
%struct.ieee80211_hw = type { i32 }
%struct.rtl_ps_ctl = type { i32 }

@jiffies = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rtl_priv*, %struct.rtl_ps_ctl*, i32)* @setup_special_tx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @setup_special_tx(%struct.rtl_priv* %0, %struct.rtl_ps_ctl* %1, i32 %2) #0 {
  %4 = alloca %struct.rtl_priv*, align 8
  %5 = alloca %struct.rtl_ps_ctl*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ieee80211_hw*, align 8
  store %struct.rtl_priv* %0, %struct.rtl_priv** %4, align 8
  store %struct.rtl_ps_ctl* %1, %struct.rtl_ps_ctl** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %9 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %8, i32 0, i32 3
  %10 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %9, align 8
  store %struct.ieee80211_hw* %10, %struct.ieee80211_hw** %7, align 8
  %11 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %12 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %11, i32 0, i32 2
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  store i32 1, i32* %13, align 8
  %14 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %15 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %14, i32 0, i32 1
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 0
  %20 = load i64 (...)*, i64 (...)** %19, align 8
  %21 = call i64 (...) %20()
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %33

23:                                               ; preds = %3
  %24 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %25 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_9__*, %struct.TYPE_9__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 0
  %29 = load i32 (%struct.rtl_priv*, i32)*, i32 (%struct.rtl_priv*, i32)** %28, align 8
  %30 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %31 = load i32, i32* %6, align 4
  %32 = call i32 %29(%struct.rtl_priv* %30, i32 %31)
  br label %33

33:                                               ; preds = %23, %3
  %34 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %7, align 8
  %35 = call i32 @rtl_lps_leave(%struct.ieee80211_hw* %34)
  %36 = load i32, i32* @jiffies, align 4
  %37 = load %struct.rtl_ps_ctl*, %struct.rtl_ps_ctl** %5, align 8
  %38 = getelementptr inbounds %struct.rtl_ps_ctl, %struct.rtl_ps_ctl* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 4
  ret void
}

declare dso_local i32 @rtl_lps_leave(%struct.ieee80211_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
