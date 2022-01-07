; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8723ae/extr_phy.c__rtl8723e_phy_path_b_iqk.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8723ae/extr_phy.c__rtl8723e_phy_path_b_iqk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }

@MASKDWORD = common dso_local global i32 0, align 4
@IQK_DELAY_TIME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_hw*)* @_rtl8723e_phy_path_b_iqk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_rtl8723e_phy_path_b_iqk(%struct.ieee80211_hw* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ieee80211_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %3, align 8
  store i32 0, i32* %9, align 4
  %10 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %11 = load i32, i32* @MASKDWORD, align 4
  %12 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %10, i32 3680, i32 %11, i32 2)
  %13 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %14 = load i32, i32* @MASKDWORD, align 4
  %15 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %13, i32 3680, i32 %14, i32 0)
  %16 = load i32, i32* @IQK_DELAY_TIME, align 4
  %17 = call i32 @mdelay(i32 %16)
  %18 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %19 = load i32, i32* @MASKDWORD, align 4
  %20 = call i32 @rtl_get_bbreg(%struct.ieee80211_hw* %18, i32 3756, i32 %19)
  store i32 %20, i32* %4, align 4
  %21 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %22 = load i32, i32* @MASKDWORD, align 4
  %23 = call i32 @rtl_get_bbreg(%struct.ieee80211_hw* %21, i32 3764, i32 %22)
  store i32 %23, i32* %5, align 4
  %24 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %25 = load i32, i32* @MASKDWORD, align 4
  %26 = call i32 @rtl_get_bbreg(%struct.ieee80211_hw* %24, i32 3772, i32 %25)
  store i32 %26, i32* %6, align 4
  %27 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %28 = load i32, i32* @MASKDWORD, align 4
  %29 = call i32 @rtl_get_bbreg(%struct.ieee80211_hw* %27, i32 3780, i32 %28)
  store i32 %29, i32* %7, align 4
  %30 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %31 = load i32, i32* @MASKDWORD, align 4
  %32 = call i32 @rtl_get_bbreg(%struct.ieee80211_hw* %30, i32 3788, i32 %31)
  store i32 %32, i32* %8, align 4
  %33 = load i32, i32* %4, align 4
  %34 = call i32 @BIT(i32 31)
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %50, label %37

37:                                               ; preds = %1
  %38 = load i32, i32* %5, align 4
  %39 = and i32 %38, 67043328
  %40 = ashr i32 %39, 16
  %41 = icmp ne i32 %40, 322
  br i1 %41, label %42, label %50

42:                                               ; preds = %37
  %43 = load i32, i32* %6, align 4
  %44 = and i32 %43, 67043328
  %45 = ashr i32 %44, 16
  %46 = icmp ne i32 %45, 66
  br i1 %46, label %47, label %50

47:                                               ; preds = %42
  %48 = load i32, i32* %9, align 4
  %49 = or i32 %48, 1
  store i32 %49, i32* %9, align 4
  br label %52

50:                                               ; preds = %42, %37, %1
  %51 = load i32, i32* %9, align 4
  store i32 %51, i32* %2, align 4
  br label %72

52:                                               ; preds = %47
  %53 = load i32, i32* %4, align 4
  %54 = call i32 @BIT(i32 30)
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %70, label %57

57:                                               ; preds = %52
  %58 = load i32, i32* %7, align 4
  %59 = and i32 %58, 67043328
  %60 = ashr i32 %59, 16
  %61 = icmp ne i32 %60, 306
  br i1 %61, label %62, label %70

62:                                               ; preds = %57
  %63 = load i32, i32* %8, align 4
  %64 = and i32 %63, 67043328
  %65 = ashr i32 %64, 16
  %66 = icmp ne i32 %65, 54
  br i1 %66, label %67, label %70

67:                                               ; preds = %62
  %68 = load i32, i32* %9, align 4
  %69 = or i32 %68, 2
  store i32 %69, i32* %9, align 4
  br label %70

70:                                               ; preds = %67, %62, %57, %52
  %71 = load i32, i32* %9, align 4
  store i32 %71, i32* %2, align 4
  br label %72

72:                                               ; preds = %70, %50
  %73 = load i32, i32* %2, align 4
  ret i32 %73
}

declare dso_local i32 @rtl_set_bbreg(%struct.ieee80211_hw*, i32, i32, i32) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @rtl_get_bbreg(%struct.ieee80211_hw*, i32, i32) #1

declare dso_local i32 @BIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
