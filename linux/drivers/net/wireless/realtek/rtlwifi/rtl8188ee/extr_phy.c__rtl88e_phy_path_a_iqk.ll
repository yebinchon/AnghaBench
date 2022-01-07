; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8188ee/extr_phy.c__rtl88e_phy_path_a_iqk.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8188ee/extr_phy.c__rtl88e_phy_path_a_iqk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }

@MASKDWORD = common dso_local global i32 0, align 4
@IQK_DELAY_TIME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_hw*, i32)* @_rtl88e_phy_path_a_iqk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_rtl88e_phy_path_a_iqk(%struct.ieee80211_hw* %0, i32 %1) #0 {
  %3 = alloca %struct.ieee80211_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %9, align 4
  %10 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %11 = load i32, i32* @MASKDWORD, align 4
  %12 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %10, i32 3632, i32 %11, i32 268471324)
  %13 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %14 = load i32, i32* @MASKDWORD, align 4
  %15 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %13, i32 3636, i32 %14, i32 805342236)
  %16 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %17 = load i32, i32* @MASKDWORD, align 4
  %18 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %16, i32 3640, i32 %17, i32 -2112617686)
  %19 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %20 = load i32, i32* @MASKDWORD, align 4
  %21 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %19, i32 3644, i32 %20, i32 672530432)
  %22 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %23 = load i32, i32* @MASKDWORD, align 4
  %24 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %22, i32 3660, i32 %23, i32 4598033)
  %25 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %26 = load i32, i32* @MASKDWORD, align 4
  %27 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %25, i32 3656, i32 %26, i32 -117440512)
  %28 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %29 = load i32, i32* @MASKDWORD, align 4
  %30 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %28, i32 3656, i32 %29, i32 -134217728)
  %31 = load i32, i32* @IQK_DELAY_TIME, align 4
  %32 = call i32 @mdelay(i32 %31)
  %33 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %34 = load i32, i32* @MASKDWORD, align 4
  %35 = call i32 @rtl_get_bbreg(%struct.ieee80211_hw* %33, i32 3756, i32 %34)
  store i32 %35, i32* %5, align 4
  %36 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %37 = load i32, i32* @MASKDWORD, align 4
  %38 = call i32 @rtl_get_bbreg(%struct.ieee80211_hw* %36, i32 3732, i32 %37)
  store i32 %38, i32* %6, align 4
  %39 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %40 = load i32, i32* @MASKDWORD, align 4
  %41 = call i32 @rtl_get_bbreg(%struct.ieee80211_hw* %39, i32 3740, i32 %40)
  store i32 %41, i32* %7, align 4
  %42 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %43 = load i32, i32* @MASKDWORD, align 4
  %44 = call i32 @rtl_get_bbreg(%struct.ieee80211_hw* %42, i32 3748, i32 %43)
  store i32 %44, i32* %8, align 4
  %45 = load i32, i32* %5, align 4
  %46 = call i32 @BIT(i32 28)
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %62, label %49

49:                                               ; preds = %2
  %50 = load i32, i32* %6, align 4
  %51 = and i32 %50, 67043328
  %52 = ashr i32 %51, 16
  %53 = icmp ne i32 %52, 322
  br i1 %53, label %54, label %62

54:                                               ; preds = %49
  %55 = load i32, i32* %7, align 4
  %56 = and i32 %55, 67043328
  %57 = ashr i32 %56, 16
  %58 = icmp ne i32 %57, 66
  br i1 %58, label %59, label %62

59:                                               ; preds = %54
  %60 = load i32, i32* %9, align 4
  %61 = or i32 %60, 1
  store i32 %61, i32* %9, align 4
  br label %62

62:                                               ; preds = %59, %54, %49, %2
  %63 = load i32, i32* %9, align 4
  ret i32 %63
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
