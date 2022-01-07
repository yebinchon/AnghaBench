; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8821ae/extr_phy.c__rtl8821ae_config_bb_reg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8821ae/extr_phy.c__rtl8821ae_config_bb_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }

@MASKDWORD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*, i32, i32)* @_rtl8821ae_config_bb_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_rtl8821ae_config_bb_reg(%struct.ieee80211_hw* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.ieee80211_hw*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %5, align 4
  %8 = icmp eq i32 %7, 254
  br i1 %8, label %9, label %11

9:                                                ; preds = %3
  %10 = call i32 @mdelay(i32 50)
  br label %47

11:                                               ; preds = %3
  %12 = load i32, i32* %5, align 4
  %13 = icmp eq i32 %12, 253
  br i1 %13, label %14, label %16

14:                                               ; preds = %11
  %15 = call i32 @mdelay(i32 5)
  br label %46

16:                                               ; preds = %11
  %17 = load i32, i32* %5, align 4
  %18 = icmp eq i32 %17, 252
  br i1 %18, label %19, label %21

19:                                               ; preds = %16
  %20 = call i32 @mdelay(i32 1)
  br label %45

21:                                               ; preds = %16
  %22 = load i32, i32* %5, align 4
  %23 = icmp eq i32 %22, 251
  br i1 %23, label %24, label %26

24:                                               ; preds = %21
  %25 = call i32 @udelay(i32 50)
  br label %44

26:                                               ; preds = %21
  %27 = load i32, i32* %5, align 4
  %28 = icmp eq i32 %27, 250
  br i1 %28, label %29, label %31

29:                                               ; preds = %26
  %30 = call i32 @udelay(i32 5)
  br label %43

31:                                               ; preds = %26
  %32 = load i32, i32* %5, align 4
  %33 = icmp eq i32 %32, 249
  br i1 %33, label %34, label %36

34:                                               ; preds = %31
  %35 = call i32 @udelay(i32 1)
  br label %42

36:                                               ; preds = %31
  %37 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %38 = load i32, i32* %5, align 4
  %39 = load i32, i32* @MASKDWORD, align 4
  %40 = load i32, i32* %6, align 4
  %41 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %37, i32 %38, i32 %39, i32 %40)
  br label %42

42:                                               ; preds = %36, %34
  br label %43

43:                                               ; preds = %42, %29
  br label %44

44:                                               ; preds = %43, %24
  br label %45

45:                                               ; preds = %44, %19
  br label %46

46:                                               ; preds = %45, %14
  br label %47

47:                                               ; preds = %46, %9
  %48 = call i32 @udelay(i32 1)
  ret void
}

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @rtl_set_bbreg(%struct.ieee80211_hw*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
