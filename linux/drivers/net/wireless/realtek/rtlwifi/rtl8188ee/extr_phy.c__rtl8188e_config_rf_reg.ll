; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8188ee/extr_phy.c__rtl8188e_config_rf_reg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8188ee/extr_phy.c__rtl8188e_config_rf_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }

@RFREG_OFFSET_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*, i32, i32, i32, i32)* @_rtl8188e_config_rf_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_rtl8188e_config_rf_reg(%struct.ieee80211_hw* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.ieee80211_hw*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %11 = load i32, i32* %7, align 4
  %12 = icmp eq i32 %11, 4094
  br i1 %12, label %13, label %15

13:                                               ; preds = %5
  %14 = call i32 @mdelay(i32 50)
  br label %53

15:                                               ; preds = %5
  %16 = load i32, i32* %7, align 4
  %17 = icmp eq i32 %16, 253
  br i1 %17, label %18, label %20

18:                                               ; preds = %15
  %19 = call i32 @mdelay(i32 5)
  br label %52

20:                                               ; preds = %15
  %21 = load i32, i32* %7, align 4
  %22 = icmp eq i32 %21, 252
  br i1 %22, label %23, label %25

23:                                               ; preds = %20
  %24 = call i32 @mdelay(i32 1)
  br label %51

25:                                               ; preds = %20
  %26 = load i32, i32* %7, align 4
  %27 = icmp eq i32 %26, 251
  br i1 %27, label %28, label %30

28:                                               ; preds = %25
  %29 = call i32 @udelay(i32 50)
  br label %50

30:                                               ; preds = %25
  %31 = load i32, i32* %7, align 4
  %32 = icmp eq i32 %31, 250
  br i1 %32, label %33, label %35

33:                                               ; preds = %30
  %34 = call i32 @udelay(i32 5)
  br label %49

35:                                               ; preds = %30
  %36 = load i32, i32* %7, align 4
  %37 = icmp eq i32 %36, 249
  br i1 %37, label %38, label %40

38:                                               ; preds = %35
  %39 = call i32 @udelay(i32 1)
  br label %48

40:                                               ; preds = %35
  %41 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %6, align 8
  %42 = load i32, i32* %9, align 4
  %43 = load i32, i32* %10, align 4
  %44 = load i32, i32* @RFREG_OFFSET_MASK, align 4
  %45 = load i32, i32* %8, align 4
  %46 = call i32 @rtl_set_rfreg(%struct.ieee80211_hw* %41, i32 %42, i32 %43, i32 %44, i32 %45)
  %47 = call i32 @udelay(i32 1)
  br label %48

48:                                               ; preds = %40, %38
  br label %49

49:                                               ; preds = %48, %33
  br label %50

50:                                               ; preds = %49, %28
  br label %51

51:                                               ; preds = %50, %23
  br label %52

52:                                               ; preds = %51, %18
  br label %53

53:                                               ; preds = %52, %13
  ret void
}

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @rtl_set_rfreg(%struct.ieee80211_hw*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
