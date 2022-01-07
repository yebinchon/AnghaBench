; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192ee/extr_phy.c__rtl92ee_config_rf_reg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192ee/extr_phy.c__rtl92ee_config_rf_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }

@RFREG_OFFSET_MASK = common dso_local global i32 0, align 4
@MASKDWORD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*, i32, i32, i32, i32)* @_rtl92ee_config_rf_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_rtl92ee_config_rf_reg(%struct.ieee80211_hw* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.ieee80211_hw*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %15 = load i32, i32* %7, align 4
  %16 = icmp eq i32 %15, 254
  br i1 %16, label %20, label %17

17:                                               ; preds = %5
  %18 = load i32, i32* %7, align 4
  %19 = icmp eq i32 %18, 4094
  br i1 %19, label %20, label %22

20:                                               ; preds = %17, %5
  %21 = call i32 @mdelay(i32 50)
  br label %105

22:                                               ; preds = %17
  %23 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %6, align 8
  %24 = load i32, i32* %9, align 4
  %25 = load i32, i32* %10, align 4
  %26 = load i32, i32* @RFREG_OFFSET_MASK, align 4
  %27 = load i32, i32* %8, align 4
  %28 = call i32 @rtl_set_rfreg(%struct.ieee80211_hw* %23, i32 %24, i32 %25, i32 %26, i32 %27)
  %29 = call i32 @udelay(i32 1)
  %30 = load i32, i32* %7, align 4
  %31 = icmp eq i32 %30, 182
  br i1 %31, label %32, label %65

32:                                               ; preds = %22
  store i32 0, i32* %12, align 4
  %33 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %6, align 8
  %34 = load i32, i32* %9, align 4
  %35 = load i32, i32* %7, align 4
  %36 = load i32, i32* @MASKDWORD, align 4
  %37 = call i32 @rtl_get_rfreg(%struct.ieee80211_hw* %33, i32 %34, i32 %35, i32 %36)
  store i32 %37, i32* %11, align 4
  %38 = call i32 @udelay(i32 1)
  br label %39

39:                                               ; preds = %63, %32
  %40 = load i32, i32* %11, align 4
  %41 = ashr i32 %40, 8
  %42 = load i32, i32* %8, align 4
  %43 = ashr i32 %42, 8
  %44 = icmp ne i32 %41, %43
  br i1 %44, label %45, label %64

45:                                               ; preds = %39
  %46 = load i32, i32* %12, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %12, align 4
  %48 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %6, align 8
  %49 = load i32, i32* %9, align 4
  %50 = load i32, i32* %10, align 4
  %51 = load i32, i32* @RFREG_OFFSET_MASK, align 4
  %52 = load i32, i32* %8, align 4
  %53 = call i32 @rtl_set_rfreg(%struct.ieee80211_hw* %48, i32 %49, i32 %50, i32 %51, i32 %52)
  %54 = call i32 @udelay(i32 1)
  %55 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %6, align 8
  %56 = load i32, i32* %9, align 4
  %57 = load i32, i32* %7, align 4
  %58 = load i32, i32* @MASKDWORD, align 4
  %59 = call i32 @rtl_get_rfreg(%struct.ieee80211_hw* %55, i32 %56, i32 %57, i32 %58)
  store i32 %59, i32* %11, align 4
  %60 = load i32, i32* %12, align 4
  %61 = icmp sgt i32 %60, 5
  br i1 %61, label %62, label %63

62:                                               ; preds = %45
  br label %64

63:                                               ; preds = %45
  br label %39

64:                                               ; preds = %62, %39
  br label %65

65:                                               ; preds = %64, %22
  %66 = load i32, i32* %7, align 4
  %67 = icmp eq i32 %66, 178
  br i1 %67, label %68, label %104

68:                                               ; preds = %65
  store i32 0, i32* %14, align 4
  %69 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %6, align 8
  %70 = load i32, i32* %9, align 4
  %71 = load i32, i32* %7, align 4
  %72 = load i32, i32* @MASKDWORD, align 4
  %73 = call i32 @rtl_get_rfreg(%struct.ieee80211_hw* %69, i32 %70, i32 %71, i32 %72)
  store i32 %73, i32* %13, align 4
  %74 = call i32 @udelay(i32 1)
  br label %75

75:                                               ; preds = %102, %68
  %76 = load i32, i32* %13, align 4
  %77 = load i32, i32* %8, align 4
  %78 = icmp ne i32 %76, %77
  br i1 %78, label %79, label %103

79:                                               ; preds = %75
  %80 = load i32, i32* %14, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %14, align 4
  %82 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %6, align 8
  %83 = load i32, i32* %9, align 4
  %84 = load i32, i32* %10, align 4
  %85 = load i32, i32* @RFREG_OFFSET_MASK, align 4
  %86 = load i32, i32* %8, align 4
  %87 = call i32 @rtl_set_rfreg(%struct.ieee80211_hw* %82, i32 %83, i32 %84, i32 %85, i32 %86)
  %88 = call i32 @udelay(i32 1)
  %89 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %6, align 8
  %90 = load i32, i32* %9, align 4
  %91 = load i32, i32* @RFREG_OFFSET_MASK, align 4
  %92 = call i32 @rtl_set_rfreg(%struct.ieee80211_hw* %89, i32 %90, i32 24, i32 %91, i32 64519)
  %93 = call i32 @udelay(i32 1)
  %94 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %6, align 8
  %95 = load i32, i32* %9, align 4
  %96 = load i32, i32* %7, align 4
  %97 = load i32, i32* @MASKDWORD, align 4
  %98 = call i32 @rtl_get_rfreg(%struct.ieee80211_hw* %94, i32 %95, i32 %96, i32 %97)
  store i32 %98, i32* %13, align 4
  %99 = load i32, i32* %14, align 4
  %100 = icmp sgt i32 %99, 5
  br i1 %100, label %101, label %102

101:                                              ; preds = %79
  br label %103

102:                                              ; preds = %79
  br label %75

103:                                              ; preds = %101, %75
  br label %104

104:                                              ; preds = %103, %65
  br label %105

105:                                              ; preds = %104, %20
  ret void
}

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @rtl_set_rfreg(%struct.ieee80211_hw*, i32, i32, i32, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @rtl_get_rfreg(%struct.ieee80211_hw*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
