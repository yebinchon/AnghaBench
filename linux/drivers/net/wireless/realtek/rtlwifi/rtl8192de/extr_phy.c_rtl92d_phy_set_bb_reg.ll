; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192de/extr_phy.c_rtl92d_phy_set_bb_reg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192de/extr_phy.c_rtl92d_phy_set_bb_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_priv = type { i32 }
%struct.rtl_hal = type { i64, i64 }

@COMP_RF = common dso_local global i32 0, align 4
@DBG_TRACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"regaddr(%#x), bitmask(%#x), data(%#x)\0A\00", align 1
@MASKDWORD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rtl92d_phy_set_bb_reg(%struct.ieee80211_hw* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.ieee80211_hw*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.rtl_priv*, align 8
  %10 = alloca %struct.rtl_hal*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %14 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %15 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %14)
  store %struct.rtl_priv* %15, %struct.rtl_priv** %9, align 8
  %16 = load %struct.rtl_priv*, %struct.rtl_priv** %9, align 8
  %17 = call %struct.rtl_hal* @rtl_hal(%struct.rtl_priv* %16)
  store %struct.rtl_hal* %17, %struct.rtl_hal** %10, align 8
  store i32 0, i32* %11, align 4
  %18 = load %struct.rtl_priv*, %struct.rtl_priv** %9, align 8
  %19 = load i32, i32* @COMP_RF, align 4
  %20 = load i32, i32* @DBG_TRACE, align 4
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* %7, align 4
  %23 = load i32, i32* %8, align 4
  %24 = call i32 @RT_TRACE(%struct.rtl_priv* %18, i32 %19, i32 %20, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %21, i32 %22, i32 %23)
  %25 = load %struct.rtl_hal*, %struct.rtl_hal** %10, align 8
  %26 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %4
  %30 = call i32 @BIT(i32 3)
  store i32 %30, i32* %11, align 4
  br label %41

31:                                               ; preds = %4
  %32 = load %struct.rtl_hal*, %struct.rtl_hal** %10, align 8
  %33 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %31
  %37 = call i32 @BIT(i32 3)
  %38 = call i32 @BIT(i32 2)
  %39 = or i32 %37, %38
  store i32 %39, i32* %11, align 4
  br label %40

40:                                               ; preds = %36, %31
  br label %41

41:                                               ; preds = %40, %29
  %42 = load i32, i32* %7, align 4
  %43 = load i32, i32* @MASKDWORD, align 4
  %44 = icmp ne i32 %42, %43
  br i1 %44, label %45, label %75

45:                                               ; preds = %41
  %46 = load %struct.rtl_hal*, %struct.rtl_hal** %10, align 8
  %47 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %55, label %50

50:                                               ; preds = %45
  %51 = load %struct.rtl_hal*, %struct.rtl_hal** %10, align 8
  %52 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %60

55:                                               ; preds = %50, %45
  %56 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %57 = load i32, i32* %6, align 4
  %58 = load i32, i32* %11, align 4
  %59 = call i32 @rtl92de_read_dword_dbi(%struct.ieee80211_hw* %56, i32 %57, i32 %58)
  store i32 %59, i32* %12, align 4
  br label %64

60:                                               ; preds = %50
  %61 = load %struct.rtl_priv*, %struct.rtl_priv** %9, align 8
  %62 = load i32, i32* %6, align 4
  %63 = call i32 @rtl_read_dword(%struct.rtl_priv* %61, i32 %62)
  store i32 %63, i32* %12, align 4
  br label %64

64:                                               ; preds = %60, %55
  %65 = load i32, i32* %7, align 4
  %66 = call i32 @_rtl92d_phy_calculate_bit_shift(i32 %65)
  store i32 %66, i32* %13, align 4
  %67 = load i32, i32* %12, align 4
  %68 = load i32, i32* %7, align 4
  %69 = xor i32 %68, -1
  %70 = and i32 %67, %69
  %71 = load i32, i32* %8, align 4
  %72 = load i32, i32* %13, align 4
  %73 = shl i32 %71, %72
  %74 = or i32 %70, %73
  store i32 %74, i32* %8, align 4
  br label %75

75:                                               ; preds = %64, %41
  %76 = load %struct.rtl_hal*, %struct.rtl_hal** %10, align 8
  %77 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %85, label %80

80:                                               ; preds = %75
  %81 = load %struct.rtl_hal*, %struct.rtl_hal** %10, align 8
  %82 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %91

85:                                               ; preds = %80, %75
  %86 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %87 = load i32, i32* %6, align 4
  %88 = load i32, i32* %8, align 4
  %89 = load i32, i32* %11, align 4
  %90 = call i32 @rtl92de_write_dword_dbi(%struct.ieee80211_hw* %86, i32 %87, i32 %88, i32 %89)
  br label %96

91:                                               ; preds = %80
  %92 = load %struct.rtl_priv*, %struct.rtl_priv** %9, align 8
  %93 = load i32, i32* %6, align 4
  %94 = load i32, i32* %8, align 4
  %95 = call i32 @rtl_write_dword(%struct.rtl_priv* %92, i32 %93, i32 %94)
  br label %96

96:                                               ; preds = %91, %85
  %97 = load %struct.rtl_priv*, %struct.rtl_priv** %9, align 8
  %98 = load i32, i32* @COMP_RF, align 4
  %99 = load i32, i32* @DBG_TRACE, align 4
  %100 = load i32, i32* %6, align 4
  %101 = load i32, i32* %7, align 4
  %102 = load i32, i32* %8, align 4
  %103 = call i32 @RT_TRACE(%struct.rtl_priv* %97, i32 %98, i32 %99, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %100, i32 %101, i32 %102)
  ret void
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local %struct.rtl_hal* @rtl_hal(%struct.rtl_priv*) #1

declare dso_local i32 @RT_TRACE(%struct.rtl_priv*, i32, i32, i8*, i32, i32, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @rtl92de_read_dword_dbi(%struct.ieee80211_hw*, i32, i32) #1

declare dso_local i32 @rtl_read_dword(%struct.rtl_priv*, i32) #1

declare dso_local i32 @_rtl92d_phy_calculate_bit_shift(i32) #1

declare dso_local i32 @rtl92de_write_dword_dbi(%struct.ieee80211_hw*, i32, i32, i32) #1

declare dso_local i32 @rtl_write_dword(%struct.rtl_priv*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
