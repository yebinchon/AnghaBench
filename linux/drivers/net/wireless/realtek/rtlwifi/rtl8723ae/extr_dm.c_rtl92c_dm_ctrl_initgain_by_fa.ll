; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8723ae/extr_dm.c_rtl92c_dm_ctrl_initgain_by_fa.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8723ae/extr_dm.c_rtl92c_dm_ctrl_initgain_by_fa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_priv = type { %struct.TYPE_2__, %struct.dig_t }
%struct.TYPE_2__ = type { i32 }
%struct.dig_t = type { i32 }

@DM_DIG_FA_TH0 = common dso_local global i32 0, align 4
@DM_DIG_FA_TH1 = common dso_local global i32 0, align 4
@DM_DIG_FA_TH2 = common dso_local global i32 0, align 4
@DM_DIG_FA_UPPER = common dso_local global i32 0, align 4
@DM_DIG_FA_LOWER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*)* @rtl92c_dm_ctrl_initgain_by_fa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtl92c_dm_ctrl_initgain_by_fa(%struct.ieee80211_hw* %0) #0 {
  %2 = alloca %struct.ieee80211_hw*, align 8
  %3 = alloca %struct.rtl_priv*, align 8
  %4 = alloca %struct.dig_t*, align 8
  %5 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %2, align 8
  %6 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %7 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %6)
  store %struct.rtl_priv* %7, %struct.rtl_priv** %3, align 8
  %8 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %9 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %8, i32 0, i32 1
  store %struct.dig_t* %9, %struct.dig_t** %4, align 8
  %10 = load %struct.dig_t*, %struct.dig_t** %4, align 8
  %11 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %5, align 4
  %13 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %14 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @DM_DIG_FA_TH0, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %22

19:                                               ; preds = %1
  %20 = load i32, i32* %5, align 4
  %21 = add nsw i32 %20, -1
  store i32 %21, i32* %5, align 4
  br label %55

22:                                               ; preds = %1
  %23 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %24 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @DM_DIG_FA_TH1, align 4
  %28 = icmp slt i32 %26, %27
  br i1 %28, label %29, label %32

29:                                               ; preds = %22
  %30 = load i32, i32* %5, align 4
  %31 = add nsw i32 %30, 0
  store i32 %31, i32* %5, align 4
  br label %54

32:                                               ; preds = %22
  %33 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %34 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @DM_DIG_FA_TH2, align 4
  %38 = icmp slt i32 %36, %37
  br i1 %38, label %39, label %42

39:                                               ; preds = %32
  %40 = load i32, i32* %5, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %5, align 4
  br label %53

42:                                               ; preds = %32
  %43 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %44 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @DM_DIG_FA_TH2, align 4
  %48 = icmp sge i32 %46, %47
  br i1 %48, label %49, label %52

49:                                               ; preds = %42
  %50 = load i32, i32* %5, align 4
  %51 = add nsw i32 %50, 2
  store i32 %51, i32* %5, align 4
  br label %52

52:                                               ; preds = %49, %42
  br label %53

53:                                               ; preds = %52, %39
  br label %54

54:                                               ; preds = %53, %29
  br label %55

55:                                               ; preds = %54, %19
  %56 = load i32, i32* %5, align 4
  %57 = load i32, i32* @DM_DIG_FA_UPPER, align 4
  %58 = icmp sgt i32 %56, %57
  br i1 %58, label %59, label %61

59:                                               ; preds = %55
  %60 = load i32, i32* @DM_DIG_FA_UPPER, align 4
  store i32 %60, i32* %5, align 4
  br label %68

61:                                               ; preds = %55
  %62 = load i32, i32* %5, align 4
  %63 = load i32, i32* @DM_DIG_FA_LOWER, align 4
  %64 = icmp slt i32 %62, %63
  br i1 %64, label %65, label %67

65:                                               ; preds = %61
  %66 = load i32, i32* @DM_DIG_FA_LOWER, align 4
  store i32 %66, i32* %5, align 4
  br label %67

67:                                               ; preds = %65, %61
  br label %68

68:                                               ; preds = %67, %59
  %69 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %70 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = icmp sgt i32 %72, 10000
  br i1 %73, label %74, label %75

74:                                               ; preds = %68
  store i32 50, i32* %5, align 4
  br label %75

75:                                               ; preds = %74, %68
  %76 = load i32, i32* %5, align 4
  %77 = load %struct.dig_t*, %struct.dig_t** %4, align 8
  %78 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %77, i32 0, i32 0
  store i32 %76, i32* %78, align 4
  %79 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %80 = call i32 @rtl8723e_dm_write_dig(%struct.ieee80211_hw* %79)
  ret void
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local i32 @rtl8723e_dm_write_dig(%struct.ieee80211_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
