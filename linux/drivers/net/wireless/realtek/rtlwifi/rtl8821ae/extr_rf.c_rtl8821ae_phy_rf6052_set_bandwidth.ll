; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8821ae/extr_rf.c_rtl8821ae_phy_rf6052_set_bandwidth.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8821ae/extr_rf.c_rtl8821ae_phy_rf6052_set_bandwidth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }

@RF90_PATH_A = common dso_local global i32 0, align 4
@RF_CHNLBW = common dso_local global i32 0, align 4
@RF90_PATH_B = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"unknown bandwidth: %#X\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rtl8821ae_phy_rf6052_set_bandwidth(%struct.ieee80211_hw* %0, i32 %1) #0 {
  %3 = alloca %struct.ieee80211_hw*, align 8
  %4 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  switch i32 %5, label %51 [
    i32 130, label %6
    i32 129, label %21
    i32 128, label %36
  ]

6:                                                ; preds = %2
  %7 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %8 = load i32, i32* @RF90_PATH_A, align 4
  %9 = load i32, i32* @RF_CHNLBW, align 4
  %10 = call i32 @BIT(i32 11)
  %11 = call i32 @BIT(i32 10)
  %12 = or i32 %10, %11
  %13 = call i32 @rtl_set_rfreg(%struct.ieee80211_hw* %7, i32 %8, i32 %9, i32 %12, i32 3)
  %14 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %15 = load i32, i32* @RF90_PATH_B, align 4
  %16 = load i32, i32* @RF_CHNLBW, align 4
  %17 = call i32 @BIT(i32 11)
  %18 = call i32 @BIT(i32 10)
  %19 = or i32 %17, %18
  %20 = call i32 @rtl_set_rfreg(%struct.ieee80211_hw* %14, i32 %15, i32 %16, i32 %19, i32 3)
  br label %54

21:                                               ; preds = %2
  %22 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %23 = load i32, i32* @RF90_PATH_A, align 4
  %24 = load i32, i32* @RF_CHNLBW, align 4
  %25 = call i32 @BIT(i32 11)
  %26 = call i32 @BIT(i32 10)
  %27 = or i32 %25, %26
  %28 = call i32 @rtl_set_rfreg(%struct.ieee80211_hw* %22, i32 %23, i32 %24, i32 %27, i32 1)
  %29 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %30 = load i32, i32* @RF90_PATH_B, align 4
  %31 = load i32, i32* @RF_CHNLBW, align 4
  %32 = call i32 @BIT(i32 11)
  %33 = call i32 @BIT(i32 10)
  %34 = or i32 %32, %33
  %35 = call i32 @rtl_set_rfreg(%struct.ieee80211_hw* %29, i32 %30, i32 %31, i32 %34, i32 1)
  br label %54

36:                                               ; preds = %2
  %37 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %38 = load i32, i32* @RF90_PATH_A, align 4
  %39 = load i32, i32* @RF_CHNLBW, align 4
  %40 = call i32 @BIT(i32 11)
  %41 = call i32 @BIT(i32 10)
  %42 = or i32 %40, %41
  %43 = call i32 @rtl_set_rfreg(%struct.ieee80211_hw* %37, i32 %38, i32 %39, i32 %42, i32 0)
  %44 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %45 = load i32, i32* @RF90_PATH_B, align 4
  %46 = load i32, i32* @RF_CHNLBW, align 4
  %47 = call i32 @BIT(i32 11)
  %48 = call i32 @BIT(i32 10)
  %49 = or i32 %47, %48
  %50 = call i32 @rtl_set_rfreg(%struct.ieee80211_hw* %44, i32 %45, i32 %46, i32 %49, i32 0)
  br label %54

51:                                               ; preds = %2
  %52 = load i32, i32* %4, align 4
  %53 = call i32 @pr_err(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %52)
  br label %54

54:                                               ; preds = %51, %36, %21, %6
  ret void
}

declare dso_local i32 @rtl_set_rfreg(%struct.ieee80211_hw*, i32, i32, i32, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @pr_err(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
