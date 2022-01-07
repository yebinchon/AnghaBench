; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192de/extr_phy.c_rtl92d_phy_config_maccoexist_rfpage.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192de/extr_phy.c_rtl92d_phy_config_maccoexist_rfpage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_priv = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@REG_DMC = common dso_local global i32 0, align 4
@REG_RX_PKT_LIMIT = common dso_local global i32 0, align 4
@REG_TRXFF_BNDY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rtl92d_phy_config_maccoexist_rfpage(%struct.ieee80211_hw* %0) #0 {
  %2 = alloca %struct.ieee80211_hw*, align 8
  %3 = alloca %struct.rtl_priv*, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %2, align 8
  %4 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %5 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %4)
  store %struct.rtl_priv* %5, %struct.rtl_priv** %3, align 8
  %6 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %7 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  switch i32 %9, label %43 [
    i32 130, label %10
    i32 129, label %21
    i32 128, label %32
  ]

10:                                               ; preds = %1
  %11 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %12 = load i32, i32* @REG_DMC, align 4
  %13 = call i32 @rtl_write_byte(%struct.rtl_priv* %11, i32 %12, i32 0)
  %14 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %15 = load i32, i32* @REG_RX_PKT_LIMIT, align 4
  %16 = call i32 @rtl_write_byte(%struct.rtl_priv* %14, i32 %15, i32 8)
  %17 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %18 = load i32, i32* @REG_TRXFF_BNDY, align 4
  %19 = add nsw i32 %18, 2
  %20 = call i32 @rtl_write_word(%struct.rtl_priv* %17, i32 %19, i32 5119)
  br label %44

21:                                               ; preds = %1
  %22 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %23 = load i32, i32* @REG_DMC, align 4
  %24 = call i32 @rtl_write_byte(%struct.rtl_priv* %22, i32 %23, i32 248)
  %25 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %26 = load i32, i32* @REG_RX_PKT_LIMIT, align 4
  %27 = call i32 @rtl_write_byte(%struct.rtl_priv* %25, i32 %26, i32 8)
  %28 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %29 = load i32, i32* @REG_TRXFF_BNDY, align 4
  %30 = add nsw i32 %29, 2
  %31 = call i32 @rtl_write_word(%struct.rtl_priv* %28, i32 %30, i32 5119)
  br label %44

32:                                               ; preds = %1
  %33 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %34 = load i32, i32* @REG_DMC, align 4
  %35 = call i32 @rtl_write_byte(%struct.rtl_priv* %33, i32 %34, i32 0)
  %36 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %37 = load i32, i32* @REG_RX_PKT_LIMIT, align 4
  %38 = call i32 @rtl_write_byte(%struct.rtl_priv* %36, i32 %37, i32 16)
  %39 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %40 = load i32, i32* @REG_TRXFF_BNDY, align 4
  %41 = add nsw i32 %40, 2
  %42 = call i32 @rtl_write_word(%struct.rtl_priv* %39, i32 %41, i32 10239)
  br label %44

43:                                               ; preds = %1
  br label %44

44:                                               ; preds = %43, %32, %21, %10
  ret void
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local i32 @rtl_write_byte(%struct.rtl_priv*, i32, i32) #1

declare dso_local i32 @rtl_write_word(%struct.rtl_priv*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
