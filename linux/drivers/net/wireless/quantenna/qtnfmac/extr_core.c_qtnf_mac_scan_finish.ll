; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/quantenna/qtnfmac/extr_core.c_qtnf_mac_scan_finish.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/quantenna/qtnfmac/extr_core.c_qtnf_mac_scan_finish.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qtnf_wmac = type { i32, i32* }
%struct.cfg80211_scan_info = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qtnf_wmac*, i32)* @qtnf_mac_scan_finish to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qtnf_mac_scan_finish(%struct.qtnf_wmac* %0, i32 %1) #0 {
  %3 = alloca %struct.qtnf_wmac*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.cfg80211_scan_info, align 4
  store %struct.qtnf_wmac* %0, %struct.qtnf_wmac** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = getelementptr inbounds %struct.cfg80211_scan_info, %struct.cfg80211_scan_info* %5, i32 0, i32 0
  %7 = load i32, i32* %4, align 4
  store i32 %7, i32* %6, align 4
  %8 = load %struct.qtnf_wmac*, %struct.qtnf_wmac** %3, align 8
  %9 = getelementptr inbounds %struct.qtnf_wmac, %struct.qtnf_wmac* %8, i32 0, i32 0
  %10 = call i32 @mutex_lock(i32* %9)
  %11 = load %struct.qtnf_wmac*, %struct.qtnf_wmac** %3, align 8
  %12 = getelementptr inbounds %struct.qtnf_wmac, %struct.qtnf_wmac* %11, i32 0, i32 1
  %13 = load i32*, i32** %12, align 8
  %14 = icmp ne i32* %13, null
  br i1 %14, label %15, label %22

15:                                               ; preds = %2
  %16 = load %struct.qtnf_wmac*, %struct.qtnf_wmac** %3, align 8
  %17 = getelementptr inbounds %struct.qtnf_wmac, %struct.qtnf_wmac* %16, i32 0, i32 1
  %18 = load i32*, i32** %17, align 8
  %19 = call i32 @cfg80211_scan_done(i32* %18, %struct.cfg80211_scan_info* %5)
  %20 = load %struct.qtnf_wmac*, %struct.qtnf_wmac** %3, align 8
  %21 = getelementptr inbounds %struct.qtnf_wmac, %struct.qtnf_wmac* %20, i32 0, i32 1
  store i32* null, i32** %21, align 8
  br label %22

22:                                               ; preds = %15, %2
  %23 = load %struct.qtnf_wmac*, %struct.qtnf_wmac** %3, align 8
  %24 = getelementptr inbounds %struct.qtnf_wmac, %struct.qtnf_wmac* %23, i32 0, i32 0
  %25 = call i32 @mutex_unlock(i32* %24)
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @cfg80211_scan_done(i32*, %struct.cfg80211_scan_info*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
