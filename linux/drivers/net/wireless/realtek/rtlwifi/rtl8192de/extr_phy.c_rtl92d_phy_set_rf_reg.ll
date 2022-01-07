; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192de/extr_phy.c_rtl92d_phy_set_rf_reg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192de/extr_phy.c_rtl92d_phy_set_rf_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_priv = type { %struct.TYPE_2__, %struct.rtl_phy }
%struct.TYPE_2__ = type { i32 }
%struct.rtl_phy = type { i64 }

@COMP_RF = common dso_local global i32 0, align 4
@DBG_TRACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"regaddr(%#x), bitmask(%#x), data(%#x), rfpath(%#x)\0A\00", align 1
@RF_OP_BY_FW = common dso_local global i64 0, align 8
@RFREG_OFFSET_MASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rtl92d_phy_set_rf_reg(%struct.ieee80211_hw* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.ieee80211_hw*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.rtl_priv*, align 8
  %12 = alloca %struct.rtl_phy*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %16 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %6, align 8
  %17 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %16)
  store %struct.rtl_priv* %17, %struct.rtl_priv** %11, align 8
  %18 = load %struct.rtl_priv*, %struct.rtl_priv** %11, align 8
  %19 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %18, i32 0, i32 1
  store %struct.rtl_phy* %19, %struct.rtl_phy** %12, align 8
  %20 = load %struct.rtl_priv*, %struct.rtl_priv** %11, align 8
  %21 = load i32, i32* @COMP_RF, align 4
  %22 = load i32, i32* @DBG_TRACE, align 4
  %23 = load i32, i32* %8, align 4
  %24 = load i32, i32* %9, align 4
  %25 = load i32, i32* %10, align 4
  %26 = load i32, i32* %7, align 4
  %27 = call i32 @RT_TRACE(%struct.rtl_priv* %20, i32 %21, i32 %22, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i32 %23, i32 %24, i32 %25, i32 %26)
  %28 = load i32, i32* %9, align 4
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %5
  br label %81

31:                                               ; preds = %5
  %32 = load %struct.rtl_priv*, %struct.rtl_priv** %11, align 8
  %33 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i64, i64* %15, align 8
  %36 = call i32 @spin_lock_irqsave(i32* %34, i64 %35)
  %37 = load %struct.rtl_phy*, %struct.rtl_phy** %12, align 8
  %38 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @RF_OP_BY_FW, align 8
  %41 = icmp ne i64 %39, %40
  br i1 %41, label %42, label %67

42:                                               ; preds = %31
  %43 = load i32, i32* %9, align 4
  %44 = load i32, i32* @RFREG_OFFSET_MASK, align 4
  %45 = icmp ne i32 %43, %44
  br i1 %45, label %46, label %61

46:                                               ; preds = %42
  %47 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %6, align 8
  %48 = load i32, i32* %7, align 4
  %49 = load i32, i32* %8, align 4
  %50 = call i32 @_rtl92d_phy_rf_serial_read(%struct.ieee80211_hw* %47, i32 %48, i32 %49)
  store i32 %50, i32* %13, align 4
  %51 = load i32, i32* %9, align 4
  %52 = call i32 @_rtl92d_phy_calculate_bit_shift(i32 %51)
  store i32 %52, i32* %14, align 4
  %53 = load i32, i32* %13, align 4
  %54 = load i32, i32* %9, align 4
  %55 = xor i32 %54, -1
  %56 = and i32 %53, %55
  %57 = load i32, i32* %10, align 4
  %58 = load i32, i32* %14, align 4
  %59 = shl i32 %57, %58
  %60 = or i32 %56, %59
  store i32 %60, i32* %10, align 4
  br label %61

61:                                               ; preds = %46, %42
  %62 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %6, align 8
  %63 = load i32, i32* %7, align 4
  %64 = load i32, i32* %8, align 4
  %65 = load i32, i32* %10, align 4
  %66 = call i32 @_rtl92d_phy_rf_serial_write(%struct.ieee80211_hw* %62, i32 %63, i32 %64, i32 %65)
  br label %67

67:                                               ; preds = %61, %31
  %68 = load %struct.rtl_priv*, %struct.rtl_priv** %11, align 8
  %69 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 0
  %71 = load i64, i64* %15, align 8
  %72 = call i32 @spin_unlock_irqrestore(i32* %70, i64 %71)
  %73 = load %struct.rtl_priv*, %struct.rtl_priv** %11, align 8
  %74 = load i32, i32* @COMP_RF, align 4
  %75 = load i32, i32* @DBG_TRACE, align 4
  %76 = load i32, i32* %8, align 4
  %77 = load i32, i32* %9, align 4
  %78 = load i32, i32* %10, align 4
  %79 = load i32, i32* %7, align 4
  %80 = call i32 @RT_TRACE(%struct.rtl_priv* %73, i32 %74, i32 %75, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i32 %76, i32 %77, i32 %78, i32 %79)
  br label %81

81:                                               ; preds = %67, %30
  ret void
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local i32 @RT_TRACE(%struct.rtl_priv*, i32, i32, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @_rtl92d_phy_rf_serial_read(%struct.ieee80211_hw*, i32, i32) #1

declare dso_local i32 @_rtl92d_phy_calculate_bit_shift(i32) #1

declare dso_local i32 @_rtl92d_phy_rf_serial_write(%struct.ieee80211_hw*, i32, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
