; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/extr_ps.c_rtl_ips_nic_on.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/extr_ps.c_rtl_ips_nic_on.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_priv = type { %struct.TYPE_12__, %struct.TYPE_11__, %struct.TYPE_9__*, %struct.TYPE_7__ }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_11__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32 (%struct.rtl_priv*, i32)* }
%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i64 (...)* }
%struct.TYPE_7__ = type { i32 }
%struct.rtl_ps_ctl = type { i32, i64, i32, i32, i32, i64 }

@ERFON = common dso_local global i32 0, align 4
@RF_CHANGE_BY_IPS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rtl_ips_nic_on(%struct.ieee80211_hw* %0) #0 {
  %2 = alloca %struct.ieee80211_hw*, align 8
  %3 = alloca %struct.rtl_priv*, align 8
  %4 = alloca %struct.rtl_ps_ctl*, align 8
  %5 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %2, align 8
  %6 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %7 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %6)
  store %struct.rtl_priv* %7, %struct.rtl_priv** %3, align 8
  %8 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %9 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %8)
  %10 = call %struct.rtl_ps_ctl* @rtl_psc(%struct.rtl_priv* %9)
  store %struct.rtl_ps_ctl* %10, %struct.rtl_ps_ctl** %4, align 8
  %11 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %12 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %11, i32 0, i32 3
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 0
  %14 = call i32 @cancel_delayed_work_sync(i32* %13)
  %15 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %16 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %16, i32 0, i32 0
  %18 = call i32 @mutex_lock(i32* %17)
  %19 = load %struct.rtl_ps_ctl*, %struct.rtl_ps_ctl** %4, align 8
  %20 = getelementptr inbounds %struct.rtl_ps_ctl, %struct.rtl_ps_ctl* %19, i32 0, i32 5
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %72

23:                                               ; preds = %1
  %24 = load %struct.rtl_ps_ctl*, %struct.rtl_ps_ctl** %4, align 8
  %25 = getelementptr inbounds %struct.rtl_ps_ctl, %struct.rtl_ps_ctl* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  store i32 %26, i32* %5, align 4
  %27 = load i32, i32* %5, align 4
  %28 = load i32, i32* @ERFON, align 4
  %29 = icmp ne i32 %27, %28
  br i1 %29, label %30, label %71

30:                                               ; preds = %23
  %31 = load %struct.rtl_ps_ctl*, %struct.rtl_ps_ctl** %4, align 8
  %32 = getelementptr inbounds %struct.rtl_ps_ctl, %struct.rtl_ps_ctl* %31, i32 0, i32 4
  %33 = load i32, i32* %32, align 8
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %71, label %35

35:                                               ; preds = %30
  %36 = load %struct.rtl_ps_ctl*, %struct.rtl_ps_ctl** %4, align 8
  %37 = getelementptr inbounds %struct.rtl_ps_ctl, %struct.rtl_ps_ctl* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @RF_CHANGE_BY_IPS, align 8
  %40 = icmp sle i64 %38, %39
  br i1 %40, label %41, label %71

41:                                               ; preds = %35
  %42 = load i32, i32* @ERFON, align 4
  %43 = load %struct.rtl_ps_ctl*, %struct.rtl_ps_ctl** %4, align 8
  %44 = getelementptr inbounds %struct.rtl_ps_ctl, %struct.rtl_ps_ctl* %43, i32 0, i32 2
  store i32 %42, i32* %44, align 8
  %45 = load %struct.rtl_ps_ctl*, %struct.rtl_ps_ctl** %4, align 8
  %46 = getelementptr inbounds %struct.rtl_ps_ctl, %struct.rtl_ps_ctl* %45, i32 0, i32 3
  store i32 0, i32* %46, align 4
  %47 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %48 = call i32 @_rtl_ps_inactive_ps(%struct.ieee80211_hw* %47)
  %49 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %50 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %49, i32 0, i32 2
  %51 = load %struct.TYPE_9__*, %struct.TYPE_9__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i32 0, i32 0
  %53 = load %struct.TYPE_8__*, %struct.TYPE_8__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 0
  %55 = load i64 (...)*, i64 (...)** %54, align 8
  %56 = call i64 (...) %55()
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %70

58:                                               ; preds = %41
  %59 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %60 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %60, i32 0, i32 0
  %62 = load %struct.TYPE_10__*, %struct.TYPE_10__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %62, i32 0, i32 0
  %64 = load i32 (%struct.rtl_priv*, i32)*, i32 (%struct.rtl_priv*, i32)** %63, align 8
  %65 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %66 = load %struct.rtl_ps_ctl*, %struct.rtl_ps_ctl** %4, align 8
  %67 = getelementptr inbounds %struct.rtl_ps_ctl, %struct.rtl_ps_ctl* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 8
  %69 = call i32 %64(%struct.rtl_priv* %65, i32 %68)
  br label %70

70:                                               ; preds = %58, %41
  br label %71

71:                                               ; preds = %70, %35, %30, %23
  br label %72

72:                                               ; preds = %71, %1
  %73 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %74 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %74, i32 0, i32 0
  %76 = call i32 @mutex_unlock(i32* %75)
  ret void
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local %struct.rtl_ps_ctl* @rtl_psc(%struct.rtl_priv*) #1

declare dso_local i32 @cancel_delayed_work_sync(i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @_rtl_ps_inactive_ps(%struct.ieee80211_hw*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
