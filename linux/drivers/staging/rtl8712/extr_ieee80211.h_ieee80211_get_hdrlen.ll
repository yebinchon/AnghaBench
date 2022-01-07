; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_ieee80211.h_ieee80211_get_hdrlen.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_ieee80211.h_ieee80211_get_hdrlen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@IEEE80211_QOS_DATAGRP = common dso_local global i32 0, align 4
@IEEE80211_FCTL_FROMDS = common dso_local global i32 0, align 4
@IEEE80211_FCTL_TODS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @ieee80211_get_hdrlen to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ieee80211_get_hdrlen(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i32 24, i32* %3, align 4
  %4 = load i32, i32* %2, align 4
  %5 = call i32 @WLAN_FC_GET_TYPE(i32 %4)
  switch i32 %5, label %34 [
    i32 130, label %6
    i32 131, label %28
  ]

6:                                                ; preds = %1
  %7 = load i32, i32* %2, align 4
  %8 = load i32, i32* @IEEE80211_QOS_DATAGRP, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %6
  %12 = load i32, i32* %3, align 4
  %13 = add nsw i32 %12, 2
  store i32 %13, i32* %3, align 4
  br label %14

14:                                               ; preds = %11, %6
  %15 = load i32, i32* %2, align 4
  %16 = load i32, i32* @IEEE80211_FCTL_FROMDS, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %27

19:                                               ; preds = %14
  %20 = load i32, i32* %2, align 4
  %21 = load i32, i32* @IEEE80211_FCTL_TODS, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %19
  %25 = load i32, i32* %3, align 4
  %26 = add nsw i32 %25, 6
  store i32 %26, i32* %3, align 4
  br label %27

27:                                               ; preds = %24, %19, %14
  br label %34

28:                                               ; preds = %1
  %29 = load i32, i32* %2, align 4
  %30 = call i32 @WLAN_FC_GET_STYPE(i32 %29)
  switch i32 %30, label %32 [
    i32 128, label %31
    i32 129, label %31
  ]

31:                                               ; preds = %28, %28
  store i32 10, i32* %3, align 4
  br label %33

32:                                               ; preds = %28
  store i32 16, i32* %3, align 4
  br label %33

33:                                               ; preds = %32, %31
  br label %34

34:                                               ; preds = %1, %33, %27
  %35 = load i32, i32* %3, align 4
  ret i32 %35
}

declare dso_local i32 @WLAN_FC_GET_TYPE(i32) #1

declare dso_local i32 @WLAN_FC_GET_STYPE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
