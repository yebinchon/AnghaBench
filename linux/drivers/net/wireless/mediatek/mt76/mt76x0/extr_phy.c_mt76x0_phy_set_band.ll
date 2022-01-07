; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/mt76x0/extr_phy.c_mt76x0_phy_set_band.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/mt76x0/extr_phy.c_mt76x0_phy_set_band.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mt76x02_dev = type { i32 }

@mt76x0_rf_2g_channel_0_tab = common dso_local global i32 0, align 4
@MT_TX_ALC_VGA3 = common dso_local global i32 0, align 4
@MT_TX0_RF_GAIN_CORR = common dso_local global i32 0, align 4
@mt76x0_rf_5g_channel_0_tab = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mt76x02_dev*, i32)* @mt76x0_phy_set_band to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mt76x0_phy_set_band(%struct.mt76x02_dev* %0, i32 %1) #0 {
  %3 = alloca %struct.mt76x02_dev*, align 8
  %4 = alloca i32, align 4
  store %struct.mt76x02_dev* %0, %struct.mt76x02_dev** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  switch i32 %5, label %38 [
    i32 129, label %6
    i32 128, label %22
  ]

6:                                                ; preds = %2
  %7 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %8 = load i32, i32* @mt76x0_rf_2g_channel_0_tab, align 4
  %9 = call i32 @RF_RANDOM_WRITE(%struct.mt76x02_dev* %7, i32 %8)
  %10 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %11 = call i32 @MT_RF(i32 5, i32 0)
  %12 = call i32 @mt76x0_rf_wr(%struct.mt76x02_dev* %10, i32 %11, i32 69)
  %13 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %14 = call i32 @MT_RF(i32 6, i32 0)
  %15 = call i32 @mt76x0_rf_wr(%struct.mt76x02_dev* %13, i32 %14, i32 68)
  %16 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %17 = load i32, i32* @MT_TX_ALC_VGA3, align 4
  %18 = call i32 @mt76_wr(%struct.mt76x02_dev* %16, i32 %17, i32 327687)
  %19 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %20 = load i32, i32* @MT_TX0_RF_GAIN_CORR, align 4
  %21 = call i32 @mt76_wr(%struct.mt76x02_dev* %19, i32 %20, i32 4063234)
  br label %39

22:                                               ; preds = %2
  %23 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %24 = load i32, i32* @mt76x0_rf_5g_channel_0_tab, align 4
  %25 = call i32 @RF_RANDOM_WRITE(%struct.mt76x02_dev* %23, i32 %24)
  %26 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %27 = call i32 @MT_RF(i32 5, i32 0)
  %28 = call i32 @mt76x0_rf_wr(%struct.mt76x02_dev* %26, i32 %27, i32 68)
  %29 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %30 = call i32 @MT_RF(i32 6, i32 0)
  %31 = call i32 @mt76x0_rf_wr(%struct.mt76x02_dev* %29, i32 %30, i32 69)
  %32 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %33 = load i32, i32* @MT_TX_ALC_VGA3, align 4
  %34 = call i32 @mt76_wr(%struct.mt76x02_dev* %32, i32 %33, i32 5)
  %35 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %36 = load i32, i32* @MT_TX0_RF_GAIN_CORR, align 4
  %37 = call i32 @mt76_wr(%struct.mt76x02_dev* %35, i32 %36, i32 16843010)
  br label %39

38:                                               ; preds = %2
  br label %39

39:                                               ; preds = %38, %22, %6
  ret void
}

declare dso_local i32 @RF_RANDOM_WRITE(%struct.mt76x02_dev*, i32) #1

declare dso_local i32 @mt76x0_rf_wr(%struct.mt76x02_dev*, i32, i32) #1

declare dso_local i32 @MT_RF(i32, i32) #1

declare dso_local i32 @mt76_wr(%struct.mt76x02_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
