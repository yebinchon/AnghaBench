; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8188ee/extr_phy.c__rtl88e_check_condition.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8188ee/extr_phy.c__rtl88e_check_condition.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_hal = type { i32 }
%struct.rtl_efuse = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_hw*, i32)* @_rtl88e_check_condition to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_rtl88e_check_condition(%struct.ieee80211_hw* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ieee80211_hw*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.rtl_hal*, align 8
  %7 = alloca %struct.rtl_efuse*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %4, align 8
  store i32 %1, i32* %5, align 4
  %12 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %13 = call i32 @rtl_priv(%struct.ieee80211_hw* %12)
  %14 = call %struct.rtl_hal* @rtl_hal(i32 %13)
  store %struct.rtl_hal* %14, %struct.rtl_hal** %6, align 8
  %15 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %16 = call i32 @rtl_priv(%struct.ieee80211_hw* %15)
  %17 = call %struct.rtl_efuse* @rtl_efuse(i32 %16)
  store %struct.rtl_efuse* %17, %struct.rtl_efuse** %7, align 8
  %18 = load %struct.rtl_efuse*, %struct.rtl_efuse** %7, align 8
  %19 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %8, align 4
  %21 = load %struct.rtl_hal*, %struct.rtl_hal** %6, align 8
  %22 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %9, align 4
  store i32 8, i32* %10, align 4
  %24 = load i32, i32* %5, align 4
  store i32 %24, i32* %11, align 4
  %25 = load i32, i32* %5, align 4
  %26 = icmp eq i32 %25, -842150451
  br i1 %26, label %27, label %28

27:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %66

28:                                               ; preds = %2
  %29 = load i32, i32* %5, align 4
  %30 = and i32 %29, 255
  store i32 %30, i32* %11, align 4
  %31 = load i32, i32* %8, align 4
  %32 = load i32, i32* %11, align 4
  %33 = and i32 %31, %32
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %28
  %36 = load i32, i32* %11, align 4
  %37 = icmp ne i32 %36, 31
  br i1 %37, label %38, label %39

38:                                               ; preds = %35
  store i32 0, i32* %3, align 4
  br label %66

39:                                               ; preds = %35, %28
  %40 = load i32, i32* %5, align 4
  %41 = and i32 %40, 65280
  store i32 %41, i32* %11, align 4
  %42 = load i32, i32* %11, align 4
  %43 = ashr i32 %42, 8
  store i32 %43, i32* %11, align 4
  %44 = load i32, i32* %9, align 4
  %45 = load i32, i32* %11, align 4
  %46 = and i32 %44, %45
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %39
  %49 = load i32, i32* %11, align 4
  %50 = icmp ne i32 %49, 7
  br i1 %50, label %51, label %52

51:                                               ; preds = %48
  store i32 0, i32* %3, align 4
  br label %66

52:                                               ; preds = %48, %39
  %53 = load i32, i32* %5, align 4
  %54 = and i32 %53, 16711680
  store i32 %54, i32* %11, align 4
  %55 = load i32, i32* %11, align 4
  %56 = ashr i32 %55, 16
  store i32 %56, i32* %11, align 4
  %57 = load i32, i32* %10, align 4
  %58 = load i32, i32* %11, align 4
  %59 = and i32 %57, %58
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %65

61:                                               ; preds = %52
  %62 = load i32, i32* %11, align 4
  %63 = icmp ne i32 %62, 15
  br i1 %63, label %64, label %65

64:                                               ; preds = %61
  store i32 0, i32* %3, align 4
  br label %66

65:                                               ; preds = %61, %52
  store i32 1, i32* %3, align 4
  br label %66

66:                                               ; preds = %65, %64, %51, %38, %27
  %67 = load i32, i32* %3, align 4
  ret i32 %67
}

declare dso_local %struct.rtl_hal* @rtl_hal(i32) #1

declare dso_local i32 @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local %struct.rtl_efuse* @rtl_efuse(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
