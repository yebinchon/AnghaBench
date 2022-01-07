; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192de/extr_phy.c_rtl92d_phy_query_bb_reg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192de/extr_phy.c_rtl92d_phy_query_bb_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_priv = type { i32 }
%struct.rtl_hal = type { i64, i64 }

@COMP_RF = common dso_local global i32 0, align 4
@DBG_TRACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"regaddr(%#x), bitmask(%#x)\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"BBR MASK=0x%x Addr[0x%x]=0x%x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rtl92d_phy_query_bb_reg(%struct.ieee80211_hw* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.ieee80211_hw*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.rtl_priv*, align 8
  %8 = alloca %struct.rtl_hal*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %13 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %14 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %13)
  store %struct.rtl_priv* %14, %struct.rtl_priv** %7, align 8
  %15 = load %struct.rtl_priv*, %struct.rtl_priv** %7, align 8
  %16 = call %struct.rtl_hal* @rtl_hal(%struct.rtl_priv* %15)
  store %struct.rtl_hal* %16, %struct.rtl_hal** %8, align 8
  %17 = load %struct.rtl_priv*, %struct.rtl_priv** %7, align 8
  %18 = load i32, i32* @COMP_RF, align 4
  %19 = load i32, i32* @DBG_TRACE, align 4
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* %6, align 4
  %22 = call i32 (%struct.rtl_priv*, i32, i32, i8*, i32, i32, ...) @RT_TRACE(%struct.rtl_priv* %17, i32 %18, i32 %19, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %20, i32 %21)
  %23 = load %struct.rtl_hal*, %struct.rtl_hal** %8, align 8
  %24 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %32, label %27

27:                                               ; preds = %3
  %28 = load %struct.rtl_hal*, %struct.rtl_hal** %8, align 8
  %29 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %54

32:                                               ; preds = %27, %3
  store i32 0, i32* %12, align 4
  %33 = load %struct.rtl_hal*, %struct.rtl_hal** %8, align 8
  %34 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %32
  %38 = call i32 @BIT(i32 3)
  store i32 %38, i32* %12, align 4
  br label %49

39:                                               ; preds = %32
  %40 = load %struct.rtl_hal*, %struct.rtl_hal** %8, align 8
  %41 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %39
  %45 = call i32 @BIT(i32 3)
  %46 = call i32 @BIT(i32 2)
  %47 = or i32 %45, %46
  store i32 %47, i32* %12, align 4
  br label %48

48:                                               ; preds = %44, %39
  br label %49

49:                                               ; preds = %48, %37
  %50 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %51 = load i32, i32* %5, align 4
  %52 = load i32, i32* %12, align 4
  %53 = call i32 @rtl92de_read_dword_dbi(%struct.ieee80211_hw* %50, i32 %51, i32 %52)
  store i32 %53, i32* %10, align 4
  br label %58

54:                                               ; preds = %27
  %55 = load %struct.rtl_priv*, %struct.rtl_priv** %7, align 8
  %56 = load i32, i32* %5, align 4
  %57 = call i32 @rtl_read_dword(%struct.rtl_priv* %55, i32 %56)
  store i32 %57, i32* %10, align 4
  br label %58

58:                                               ; preds = %54, %49
  %59 = load i32, i32* %6, align 4
  %60 = call i32 @_rtl92d_phy_calculate_bit_shift(i32 %59)
  store i32 %60, i32* %11, align 4
  %61 = load i32, i32* %10, align 4
  %62 = load i32, i32* %6, align 4
  %63 = and i32 %61, %62
  %64 = load i32, i32* %11, align 4
  %65 = ashr i32 %63, %64
  store i32 %65, i32* %9, align 4
  %66 = load %struct.rtl_priv*, %struct.rtl_priv** %7, align 8
  %67 = load i32, i32* @COMP_RF, align 4
  %68 = load i32, i32* @DBG_TRACE, align 4
  %69 = load i32, i32* %6, align 4
  %70 = load i32, i32* %5, align 4
  %71 = load i32, i32* %10, align 4
  %72 = call i32 (%struct.rtl_priv*, i32, i32, i8*, i32, i32, ...) @RT_TRACE(%struct.rtl_priv* %66, i32 %67, i32 %68, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %69, i32 %70, i32 %71)
  %73 = load i32, i32* %9, align 4
  ret i32 %73
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local %struct.rtl_hal* @rtl_hal(%struct.rtl_priv*) #1

declare dso_local i32 @RT_TRACE(%struct.rtl_priv*, i32, i32, i8*, i32, i32, ...) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @rtl92de_read_dword_dbi(%struct.ieee80211_hw*, i32, i32) #1

declare dso_local i32 @rtl_read_dword(%struct.rtl_priv*, i32) #1

declare dso_local i32 @_rtl92d_phy_calculate_bit_shift(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
