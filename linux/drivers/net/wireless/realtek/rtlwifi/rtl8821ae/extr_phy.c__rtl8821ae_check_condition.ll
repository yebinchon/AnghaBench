; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8821ae/extr_phy.c__rtl8821ae_check_condition.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8821ae/extr_phy.c__rtl8821ae_check_condition.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_efuse = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_hw*, i32)* @_rtl8821ae_check_condition to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_rtl8821ae_check_condition(%struct.ieee80211_hw* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ieee80211_hw*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.rtl_efuse*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %12 = call i32 @rtl_priv(%struct.ieee80211_hw* %11)
  %13 = call %struct.rtl_efuse* @rtl_efuse(i32 %12)
  store %struct.rtl_efuse* %13, %struct.rtl_efuse** %6, align 8
  %14 = load %struct.rtl_efuse*, %struct.rtl_efuse** %6, align 8
  %15 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %7, align 4
  store i32 1, i32* %8, align 4
  store i32 8, i32* %9, align 4
  %17 = load i32, i32* %5, align 4
  store i32 %17, i32* %10, align 4
  %18 = load i32, i32* %5, align 4
  %19 = icmp eq i32 %18, -842150451
  br i1 %19, label %20, label %21

20:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %58

21:                                               ; preds = %2
  %22 = load i32, i32* %5, align 4
  %23 = and i32 %22, 255
  store i32 %23, i32* %10, align 4
  %24 = load i32, i32* %7, align 4
  %25 = load i32, i32* %10, align 4
  %26 = icmp ne i32 %24, %25
  br i1 %26, label %27, label %31

27:                                               ; preds = %21
  %28 = load i32, i32* %10, align 4
  %29 = icmp ne i32 %28, 255
  br i1 %29, label %30, label %31

30:                                               ; preds = %27
  store i32 0, i32* %3, align 4
  br label %58

31:                                               ; preds = %27, %21
  %32 = load i32, i32* %5, align 4
  %33 = and i32 %32, 65280
  store i32 %33, i32* %10, align 4
  %34 = load i32, i32* %10, align 4
  %35 = ashr i32 %34, 8
  store i32 %35, i32* %10, align 4
  %36 = load i32, i32* %8, align 4
  %37 = load i32, i32* %10, align 4
  %38 = and i32 %36, %37
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %31
  %41 = load i32, i32* %10, align 4
  %42 = icmp ne i32 %41, 7
  br i1 %42, label %43, label %44

43:                                               ; preds = %40
  store i32 0, i32* %3, align 4
  br label %58

44:                                               ; preds = %40, %31
  %45 = load i32, i32* %5, align 4
  %46 = and i32 %45, 16711680
  store i32 %46, i32* %10, align 4
  %47 = load i32, i32* %10, align 4
  %48 = ashr i32 %47, 16
  store i32 %48, i32* %10, align 4
  %49 = load i32, i32* %9, align 4
  %50 = load i32, i32* %10, align 4
  %51 = and i32 %49, %50
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %44
  %54 = load i32, i32* %10, align 4
  %55 = icmp ne i32 %54, 15
  br i1 %55, label %56, label %57

56:                                               ; preds = %53
  store i32 0, i32* %3, align 4
  br label %58

57:                                               ; preds = %53, %44
  store i32 1, i32* %3, align 4
  br label %58

58:                                               ; preds = %57, %56, %43, %30, %20
  %59 = load i32, i32* %3, align 4
  ret i32 %59
}

declare dso_local %struct.rtl_efuse* @rtl_efuse(i32) #1

declare dso_local i32 @rtl_priv(%struct.ieee80211_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
