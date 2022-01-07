; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtl818x/rtl8180/extr_rtl8225se.c_rtl8187se_write_initial_gain.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtl818x/rtl8180/extr_rtl8225se.c_rtl8187se_write_initial_gain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*, i32)* @rtl8187se_write_initial_gain to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtl8187se_write_initial_gain(%struct.ieee80211_hw* %0, i32 %1) #0 {
  %3 = alloca %struct.ieee80211_hw*, align 8
  %4 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  switch i32 %5, label %6 [
    i32 2, label %16
    i32 3, label %26
    i32 4, label %36
    i32 5, label %46
    i32 6, label %56
    i32 7, label %66
    i32 8, label %76
  ]

6:                                                ; preds = %2
  %7 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %8 = call i32 @rtl8225se_write_phy_ofdm(%struct.ieee80211_hw* %7, i32 23, i32 38)
  %9 = call i32 @mdelay(i32 1)
  %10 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %11 = call i32 @rtl8225se_write_phy_ofdm(%struct.ieee80211_hw* %10, i32 36, i32 134)
  %12 = call i32 @mdelay(i32 1)
  %13 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %14 = call i32 @rtl8225se_write_phy_ofdm(%struct.ieee80211_hw* %13, i32 5, i32 250)
  %15 = call i32 @mdelay(i32 1)
  br label %86

16:                                               ; preds = %2
  %17 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %18 = call i32 @rtl8225se_write_phy_ofdm(%struct.ieee80211_hw* %17, i32 23, i32 54)
  %19 = call i32 @mdelay(i32 1)
  %20 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %21 = call i32 @rtl8225se_write_phy_ofdm(%struct.ieee80211_hw* %20, i32 36, i32 134)
  %22 = call i32 @mdelay(i32 1)
  %23 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %24 = call i32 @rtl8225se_write_phy_ofdm(%struct.ieee80211_hw* %23, i32 5, i32 250)
  %25 = call i32 @mdelay(i32 1)
  br label %86

26:                                               ; preds = %2
  %27 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %28 = call i32 @rtl8225se_write_phy_ofdm(%struct.ieee80211_hw* %27, i32 23, i32 54)
  %29 = call i32 @mdelay(i32 1)
  %30 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %31 = call i32 @rtl8225se_write_phy_ofdm(%struct.ieee80211_hw* %30, i32 36, i32 134)
  %32 = call i32 @mdelay(i32 1)
  %33 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %34 = call i32 @rtl8225se_write_phy_ofdm(%struct.ieee80211_hw* %33, i32 5, i32 251)
  %35 = call i32 @mdelay(i32 1)
  br label %86

36:                                               ; preds = %2
  %37 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %38 = call i32 @rtl8225se_write_phy_ofdm(%struct.ieee80211_hw* %37, i32 23, i32 70)
  %39 = call i32 @mdelay(i32 1)
  %40 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %41 = call i32 @rtl8225se_write_phy_ofdm(%struct.ieee80211_hw* %40, i32 36, i32 134)
  %42 = call i32 @mdelay(i32 1)
  %43 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %44 = call i32 @rtl8225se_write_phy_ofdm(%struct.ieee80211_hw* %43, i32 5, i32 251)
  %45 = call i32 @mdelay(i32 1)
  br label %86

46:                                               ; preds = %2
  %47 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %48 = call i32 @rtl8225se_write_phy_ofdm(%struct.ieee80211_hw* %47, i32 23, i32 70)
  %49 = call i32 @mdelay(i32 1)
  %50 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %51 = call i32 @rtl8225se_write_phy_ofdm(%struct.ieee80211_hw* %50, i32 36, i32 150)
  %52 = call i32 @mdelay(i32 1)
  %53 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %54 = call i32 @rtl8225se_write_phy_ofdm(%struct.ieee80211_hw* %53, i32 5, i32 251)
  %55 = call i32 @mdelay(i32 1)
  br label %86

56:                                               ; preds = %2
  %57 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %58 = call i32 @rtl8225se_write_phy_ofdm(%struct.ieee80211_hw* %57, i32 23, i32 86)
  %59 = call i32 @mdelay(i32 1)
  %60 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %61 = call i32 @rtl8225se_write_phy_ofdm(%struct.ieee80211_hw* %60, i32 36, i32 150)
  %62 = call i32 @mdelay(i32 1)
  %63 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %64 = call i32 @rtl8225se_write_phy_ofdm(%struct.ieee80211_hw* %63, i32 5, i32 252)
  %65 = call i32 @mdelay(i32 1)
  br label %86

66:                                               ; preds = %2
  %67 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %68 = call i32 @rtl8225se_write_phy_ofdm(%struct.ieee80211_hw* %67, i32 23, i32 86)
  %69 = call i32 @mdelay(i32 1)
  %70 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %71 = call i32 @rtl8225se_write_phy_ofdm(%struct.ieee80211_hw* %70, i32 36, i32 166)
  %72 = call i32 @mdelay(i32 1)
  %73 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %74 = call i32 @rtl8225se_write_phy_ofdm(%struct.ieee80211_hw* %73, i32 5, i32 252)
  %75 = call i32 @mdelay(i32 1)
  br label %86

76:                                               ; preds = %2
  %77 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %78 = call i32 @rtl8225se_write_phy_ofdm(%struct.ieee80211_hw* %77, i32 23, i32 102)
  %79 = call i32 @mdelay(i32 1)
  %80 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %81 = call i32 @rtl8225se_write_phy_ofdm(%struct.ieee80211_hw* %80, i32 36, i32 182)
  %82 = call i32 @mdelay(i32 1)
  %83 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %84 = call i32 @rtl8225se_write_phy_ofdm(%struct.ieee80211_hw* %83, i32 5, i32 252)
  %85 = call i32 @mdelay(i32 1)
  br label %86

86:                                               ; preds = %76, %66, %56, %46, %36, %26, %16, %6
  ret void
}

declare dso_local i32 @rtl8225se_write_phy_ofdm(%struct.ieee80211_hw*, i32, i32) #1

declare dso_local i32 @mdelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
