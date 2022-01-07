; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/quantenna/qtnfmac/extr_qlink_util.c_qlink_iface_type_to_nl_mask.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/quantenna/qtnfmac/extr_qlink_util.c_qlink_iface_type_to_nl_mask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NL80211_IFTYPE_AP = common dso_local global i32 0, align 4
@NL80211_IFTYPE_STATION = common dso_local global i32 0, align 4
@NL80211_IFTYPE_ADHOC = common dso_local global i32 0, align 4
@NL80211_IFTYPE_MONITOR = common dso_local global i32 0, align 4
@NL80211_IFTYPE_WDS = common dso_local global i32 0, align 4
@NL80211_IFTYPE_AP_VLAN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qlink_iface_type_to_nl_mask(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i32 0, i32* %3, align 4
  %4 = load i32, i32* %2, align 4
  switch i32 %4, label %35 [
    i32 132, label %5
    i32 129, label %10
    i32 133, label %15
    i32 130, label %20
    i32 128, label %25
    i32 131, label %30
  ]

5:                                                ; preds = %1
  %6 = load i32, i32* @NL80211_IFTYPE_AP, align 4
  %7 = call i32 @BIT(i32 %6)
  %8 = load i32, i32* %3, align 4
  %9 = or i32 %8, %7
  store i32 %9, i32* %3, align 4
  br label %35

10:                                               ; preds = %1
  %11 = load i32, i32* @NL80211_IFTYPE_STATION, align 4
  %12 = call i32 @BIT(i32 %11)
  %13 = load i32, i32* %3, align 4
  %14 = or i32 %13, %12
  store i32 %14, i32* %3, align 4
  br label %35

15:                                               ; preds = %1
  %16 = load i32, i32* @NL80211_IFTYPE_ADHOC, align 4
  %17 = call i32 @BIT(i32 %16)
  %18 = load i32, i32* %3, align 4
  %19 = or i32 %18, %17
  store i32 %19, i32* %3, align 4
  br label %35

20:                                               ; preds = %1
  %21 = load i32, i32* @NL80211_IFTYPE_MONITOR, align 4
  %22 = call i32 @BIT(i32 %21)
  %23 = load i32, i32* %3, align 4
  %24 = or i32 %23, %22
  store i32 %24, i32* %3, align 4
  br label %35

25:                                               ; preds = %1
  %26 = load i32, i32* @NL80211_IFTYPE_WDS, align 4
  %27 = call i32 @BIT(i32 %26)
  %28 = load i32, i32* %3, align 4
  %29 = or i32 %28, %27
  store i32 %29, i32* %3, align 4
  br label %35

30:                                               ; preds = %1
  %31 = load i32, i32* @NL80211_IFTYPE_AP_VLAN, align 4
  %32 = call i32 @BIT(i32 %31)
  %33 = load i32, i32* %3, align 4
  %34 = or i32 %33, %32
  store i32 %34, i32* %3, align 4
  br label %35

35:                                               ; preds = %1, %30, %25, %20, %15, %10, %5
  %36 = load i32, i32* %3, align 4
  ret i32 %36
}

declare dso_local i32 @BIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
