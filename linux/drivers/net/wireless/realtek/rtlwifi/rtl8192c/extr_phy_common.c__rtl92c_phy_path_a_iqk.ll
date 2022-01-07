; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192c/extr_phy_common.c__rtl92c_phy_path_a_iqk.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192c/extr_phy_common.c__rtl92c_phy_path_a_iqk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }

@MASKDWORD = common dso_local global i32 0, align 4
@IQK_DELAY_TIME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_hw*, i32)* @_rtl92c_phy_path_a_iqk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_rtl92c_phy_path_a_iqk(%struct.ieee80211_hw* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ieee80211_hw*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %10, align 4
  %11 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %12 = load i32, i32* @MASKDWORD, align 4
  %13 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %11, i32 3632, i32 %12, i32 268471327)
  %14 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %15 = load i32, i32* @MASKDWORD, align 4
  %16 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %14, i32 3636, i32 %15, i32 268471327)
  %17 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %18 = load i32, i32* @MASKDWORD, align 4
  %19 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %17, i32 3640, i32 %18, i32 -2112618238)
  %20 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %21 = load i32, i32* @MASKDWORD, align 4
  %22 = load i32, i32* %5, align 4
  %23 = icmp ne i32 %22, 0
  %24 = zext i1 %23 to i64
  %25 = select i1 %23, i32 672530946, i32 672531714
  %26 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %20, i32 3644, i32 %21, i32 %25)
  %27 = load i32, i32* %5, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %42

29:                                               ; preds = %2
  %30 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %31 = load i32, i32* @MASKDWORD, align 4
  %32 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %30, i32 3664, i32 %31, i32 268471330)
  %33 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %34 = load i32, i32* @MASKDWORD, align 4
  %35 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %33, i32 3668, i32 %34, i32 268471330)
  %36 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %37 = load i32, i32* @MASKDWORD, align 4
  %38 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %36, i32 3672, i32 %37, i32 -2112618238)
  %39 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %40 = load i32, i32* @MASKDWORD, align 4
  %41 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %39, i32 3676, i32 %40, i32 672530946)
  br label %42

42:                                               ; preds = %29, %2
  %43 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %44 = load i32, i32* @MASKDWORD, align 4
  %45 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %43, i32 3660, i32 %44, i32 1059025)
  %46 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %47 = load i32, i32* @MASKDWORD, align 4
  %48 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %46, i32 3656, i32 %47, i32 -117440512)
  %49 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %50 = load i32, i32* @MASKDWORD, align 4
  %51 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %49, i32 3656, i32 %50, i32 -134217728)
  %52 = load i32, i32* @IQK_DELAY_TIME, align 4
  %53 = call i32 @mdelay(i32 %52)
  %54 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %55 = load i32, i32* @MASKDWORD, align 4
  %56 = call i32 @rtl_get_bbreg(%struct.ieee80211_hw* %54, i32 3756, i32 %55)
  store i32 %56, i32* %6, align 4
  %57 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %58 = load i32, i32* @MASKDWORD, align 4
  %59 = call i32 @rtl_get_bbreg(%struct.ieee80211_hw* %57, i32 3732, i32 %58)
  store i32 %59, i32* %7, align 4
  %60 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %61 = load i32, i32* @MASKDWORD, align 4
  %62 = call i32 @rtl_get_bbreg(%struct.ieee80211_hw* %60, i32 3740, i32 %61)
  store i32 %62, i32* %8, align 4
  %63 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %64 = load i32, i32* @MASKDWORD, align 4
  %65 = call i32 @rtl_get_bbreg(%struct.ieee80211_hw* %63, i32 3748, i32 %64)
  store i32 %65, i32* %9, align 4
  %66 = load i32, i32* %6, align 4
  %67 = call i32 @BIT(i32 28)
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %83, label %70

70:                                               ; preds = %42
  %71 = load i32, i32* %7, align 4
  %72 = and i32 %71, 67043328
  %73 = ashr i32 %72, 16
  %74 = icmp ne i32 %73, 322
  br i1 %74, label %75, label %83

75:                                               ; preds = %70
  %76 = load i32, i32* %8, align 4
  %77 = and i32 %76, 67043328
  %78 = ashr i32 %77, 16
  %79 = icmp ne i32 %78, 66
  br i1 %79, label %80, label %83

80:                                               ; preds = %75
  %81 = load i32, i32* %10, align 4
  %82 = or i32 %81, 1
  store i32 %82, i32* %10, align 4
  br label %85

83:                                               ; preds = %75, %70, %42
  %84 = load i32, i32* %10, align 4
  store i32 %84, i32* %3, align 4
  br label %105

85:                                               ; preds = %80
  %86 = load i32, i32* %6, align 4
  %87 = call i32 @BIT(i32 27)
  %88 = and i32 %86, %87
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %103, label %90

90:                                               ; preds = %85
  %91 = load i32, i32* %9, align 4
  %92 = and i32 %91, 67043328
  %93 = ashr i32 %92, 16
  %94 = icmp ne i32 %93, 306
  br i1 %94, label %95, label %103

95:                                               ; preds = %90
  %96 = load i32, i32* %6, align 4
  %97 = and i32 %96, 67043328
  %98 = ashr i32 %97, 16
  %99 = icmp ne i32 %98, 54
  br i1 %99, label %100, label %103

100:                                              ; preds = %95
  %101 = load i32, i32* %10, align 4
  %102 = or i32 %101, 2
  store i32 %102, i32* %10, align 4
  br label %103

103:                                              ; preds = %100, %95, %90, %85
  %104 = load i32, i32* %10, align 4
  store i32 %104, i32* %3, align 4
  br label %105

105:                                              ; preds = %103, %83
  %106 = load i32, i32* %3, align 4
  ret i32 %106
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
