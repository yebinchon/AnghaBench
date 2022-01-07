; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/extr_pci.c_rtl_pci_stop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/extr_pci.c_rtl_pci_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_priv = type { %struct.TYPE_12__, %struct.TYPE_11__*, i32, %struct.TYPE_9__, %struct.TYPE_8__ }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_11__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32 (%struct.ieee80211_hw*, i32)*, i32 (%struct.ieee80211_hw*)*, i32 (%struct.ieee80211_hw*)*, i64 (...)* }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 (%struct.rtl_priv*)*, i32 (%struct.rtl_priv*)* }
%struct.rtl_pci = type { i32 }
%struct.rtl_ps_ctl = type { i32 }
%struct.rtl_hal = type { i32 }

@LED_CTL_POWER_OFF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*)* @rtl_pci_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtl_pci_stop(%struct.ieee80211_hw* %0) #0 {
  %2 = alloca %struct.ieee80211_hw*, align 8
  %3 = alloca %struct.rtl_priv*, align 8
  %4 = alloca %struct.rtl_pci*, align 8
  %5 = alloca %struct.rtl_ps_ctl*, align 8
  %6 = alloca %struct.rtl_hal*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %2, align 8
  %9 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %10 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %9)
  store %struct.rtl_priv* %10, %struct.rtl_priv** %3, align 8
  %11 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %12 = call i32 @rtl_pcipriv(%struct.ieee80211_hw* %11)
  %13 = call %struct.rtl_pci* @rtl_pcidev(i32 %12)
  store %struct.rtl_pci* %13, %struct.rtl_pci** %4, align 8
  %14 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %15 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %14)
  %16 = call %struct.rtl_ps_ctl* @rtl_psc(%struct.rtl_priv* %15)
  store %struct.rtl_ps_ctl* %16, %struct.rtl_ps_ctl** %5, align 8
  %17 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %18 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %17)
  %19 = call %struct.rtl_hal* @rtl_hal(%struct.rtl_priv* %18)
  store %struct.rtl_hal* %19, %struct.rtl_hal** %6, align 8
  store i32 0, i32* %8, align 4
  %20 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %21 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %20, i32 0, i32 1
  %22 = load %struct.TYPE_11__*, %struct.TYPE_11__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_10__*, %struct.TYPE_10__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %24, i32 0, i32 3
  %26 = load i64 (...)*, i64 (...)** %25, align 8
  %27 = call i64 (...) %26()
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %38

29:                                               ; preds = %1
  %30 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %31 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %30, i32 0, i32 4
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 0
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 1
  %35 = load i32 (%struct.rtl_priv*)*, i32 (%struct.rtl_priv*)** %34, align 8
  %36 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %37 = call i32 %35(%struct.rtl_priv* %36)
  br label %38

38:                                               ; preds = %29, %1
  %39 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %40 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %39, i32 0, i32 4
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 0
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %41, align 8
  %43 = icmp ne %struct.TYPE_7__* %42, null
  br i1 %43, label %44, label %53

44:                                               ; preds = %38
  %45 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %46 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %45, i32 0, i32 4
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 0
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 0
  %50 = load i32 (%struct.rtl_priv*)*, i32 (%struct.rtl_priv*)** %49, align 8
  %51 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %52 = call i32 %50(%struct.rtl_priv* %51)
  br label %53

53:                                               ; preds = %44, %38
  %54 = load %struct.rtl_hal*, %struct.rtl_hal** %6, align 8
  %55 = call i32 @set_hal_stop(%struct.rtl_hal* %54)
  %56 = load %struct.rtl_pci*, %struct.rtl_pci** %4, align 8
  %57 = getelementptr inbounds %struct.rtl_pci, %struct.rtl_pci* %56, i32 0, i32 0
  store i32 1, i32* %57, align 4
  %58 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %59 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %58, i32 0, i32 1
  %60 = load %struct.TYPE_11__*, %struct.TYPE_11__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %60, i32 0, i32 0
  %62 = load %struct.TYPE_10__*, %struct.TYPE_10__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %62, i32 0, i32 2
  %64 = load i32 (%struct.ieee80211_hw*)*, i32 (%struct.ieee80211_hw*)** %63, align 8
  %65 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %66 = call i32 %64(%struct.ieee80211_hw* %65)
  %67 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %68 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %67, i32 0, i32 3
  %69 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %68, i32 0, i32 0
  %70 = call i32 @cancel_work_sync(i32* %69)
  %71 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %72 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %72, i32 0, i32 0
  %74 = load i64, i64* %7, align 8
  %75 = call i32 @spin_lock_irqsave(i32* %73, i64 %74)
  br label %76

76:                                               ; preds = %95, %53
  %77 = load %struct.rtl_ps_ctl*, %struct.rtl_ps_ctl** %5, align 8
  %78 = getelementptr inbounds %struct.rtl_ps_ctl, %struct.rtl_ps_ctl* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %104

81:                                               ; preds = %76
  %82 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %83 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %83, i32 0, i32 0
  %85 = load i64, i64* %7, align 8
  %86 = call i32 @spin_unlock_irqrestore(i32* %84, i64 %85)
  %87 = load i32, i32* %8, align 4
  %88 = icmp sgt i32 %87, 100
  br i1 %88, label %89, label %95

89:                                               ; preds = %81
  %90 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %91 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %91, i32 0, i32 0
  %93 = load i64, i64* %7, align 8
  %94 = call i32 @spin_lock_irqsave(i32* %92, i64 %93)
  br label %104

95:                                               ; preds = %81
  %96 = call i32 @mdelay(i32 1)
  %97 = load i32, i32* %8, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %8, align 4
  %99 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %100 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %100, i32 0, i32 0
  %102 = load i64, i64* %7, align 8
  %103 = call i32 @spin_lock_irqsave(i32* %101, i64 %102)
  br label %76

104:                                              ; preds = %89, %76
  %105 = load %struct.rtl_ps_ctl*, %struct.rtl_ps_ctl** %5, align 8
  %106 = getelementptr inbounds %struct.rtl_ps_ctl, %struct.rtl_ps_ctl* %105, i32 0, i32 0
  store i32 1, i32* %106, align 4
  %107 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %108 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %108, i32 0, i32 0
  %110 = load i64, i64* %7, align 8
  %111 = call i32 @spin_unlock_irqrestore(i32* %109, i64 %110)
  %112 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %113 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %112, i32 0, i32 1
  %114 = load %struct.TYPE_11__*, %struct.TYPE_11__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %114, i32 0, i32 0
  %116 = load %struct.TYPE_10__*, %struct.TYPE_10__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %116, i32 0, i32 1
  %118 = load i32 (%struct.ieee80211_hw*)*, i32 (%struct.ieee80211_hw*)** %117, align 8
  %119 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %120 = call i32 %118(%struct.ieee80211_hw* %119)
  %121 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %122 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %121, i32 0, i32 2
  %123 = load i32, i32* %122, align 8
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %126, label %125

125:                                              ; preds = %104
  br label %151

126:                                              ; preds = %104
  %127 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %128 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %127, i32 0, i32 1
  %129 = load %struct.TYPE_11__*, %struct.TYPE_11__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %129, i32 0, i32 0
  %131 = load %struct.TYPE_10__*, %struct.TYPE_10__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %131, i32 0, i32 0
  %133 = load i32 (%struct.ieee80211_hw*, i32)*, i32 (%struct.ieee80211_hw*, i32)** %132, align 8
  %134 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %135 = load i32, i32* @LED_CTL_POWER_OFF, align 4
  %136 = call i32 %133(%struct.ieee80211_hw* %134, i32 %135)
  %137 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %138 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %137, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %138, i32 0, i32 0
  %140 = load i64, i64* %7, align 8
  %141 = call i32 @spin_lock_irqsave(i32* %139, i64 %140)
  %142 = load %struct.rtl_ps_ctl*, %struct.rtl_ps_ctl** %5, align 8
  %143 = getelementptr inbounds %struct.rtl_ps_ctl, %struct.rtl_ps_ctl* %142, i32 0, i32 0
  store i32 0, i32* %143, align 4
  %144 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %145 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %144, i32 0, i32 0
  %146 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %145, i32 0, i32 0
  %147 = load i64, i64* %7, align 8
  %148 = call i32 @spin_unlock_irqrestore(i32* %146, i64 %147)
  %149 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %150 = call i32 @rtl_pci_enable_aspm(%struct.ieee80211_hw* %149)
  br label %151

151:                                              ; preds = %126, %125
  ret void
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local %struct.rtl_pci* @rtl_pcidev(i32) #1

declare dso_local i32 @rtl_pcipriv(%struct.ieee80211_hw*) #1

declare dso_local %struct.rtl_ps_ctl* @rtl_psc(%struct.rtl_priv*) #1

declare dso_local %struct.rtl_hal* @rtl_hal(%struct.rtl_priv*) #1

declare dso_local i32 @set_hal_stop(%struct.rtl_hal*) #1

declare dso_local i32 @cancel_work_sync(i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @rtl_pci_enable_aspm(%struct.ieee80211_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
