; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtl818x/rtl8180/extr_rtl8225.c_rtl8180_detect_rf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtl818x/rtl8180/extr_rtl8225.c_rtl8180_detect_rf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtl818x_rf_ops = type { i32 }
%struct.ieee80211_hw = type { %struct.rtl8180_priv* }
%struct.rtl8180_priv = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }

@rtl8225_ops = common dso_local global %struct.rtl818x_rf_ops zeroinitializer, align 4
@rtl8225z2_ops = common dso_local global %struct.rtl818x_rf_ops zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.rtl818x_rf_ops* @rtl8180_detect_rf(%struct.ieee80211_hw* %0) #0 {
  %2 = alloca %struct.rtl818x_rf_ops*, align 8
  %3 = alloca %struct.ieee80211_hw*, align 8
  %4 = alloca %struct.rtl8180_priv*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %3, align 8
  %7 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %8 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %7, i32 0, i32 0
  %9 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %8, align 8
  store %struct.rtl8180_priv* %9, %struct.rtl8180_priv** %4, align 8
  %10 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %4, align 8
  %11 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %4, align 8
  %12 = getelementptr inbounds %struct.rtl8180_priv, %struct.rtl8180_priv* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 3
  %15 = call i32 @rtl818x_iowrite16(%struct.rtl8180_priv* %10, i32* %14, i32 1152)
  %16 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %4, align 8
  %17 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %4, align 8
  %18 = getelementptr inbounds %struct.rtl8180_priv, %struct.rtl8180_priv* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 2
  %21 = call i32 @rtl818x_iowrite16(%struct.rtl8180_priv* %16, i32* %20, i32 1160)
  %22 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %4, align 8
  %23 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %4, align 8
  %24 = getelementptr inbounds %struct.rtl8180_priv, %struct.rtl8180_priv* %23, i32 0, i32 0
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 1
  %27 = call i32 @rtl818x_iowrite16(%struct.rtl8180_priv* %22, i32* %26, i32 8191)
  %28 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %4, align 8
  %29 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %4, align 8
  %30 = getelementptr inbounds %struct.rtl8180_priv, %struct.rtl8180_priv* %29, i32 0, i32 0
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = call i32 @rtl818x_ioread8(%struct.rtl8180_priv* %28, i32* %32)
  %34 = call i32 @msleep(i32 100)
  %35 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %36 = call i32 @rtl8225_write(%struct.ieee80211_hw* %35, i32 0, i32 439)
  %37 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %38 = call i32 @rtl8225_read(%struct.ieee80211_hw* %37, i32 8)
  store i32 %38, i32* %5, align 4
  %39 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %40 = call i32 @rtl8225_read(%struct.ieee80211_hw* %39, i32 9)
  store i32 %40, i32* %6, align 4
  %41 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %42 = call i32 @rtl8225_write(%struct.ieee80211_hw* %41, i32 0, i32 183)
  %43 = load i32, i32* %5, align 4
  %44 = icmp ne i32 %43, 1416
  br i1 %44, label %48, label %45

45:                                               ; preds = %1
  %46 = load i32, i32* %6, align 4
  %47 = icmp ne i32 %46, 1792
  br i1 %47, label %48, label %49

48:                                               ; preds = %45, %1
  store %struct.rtl818x_rf_ops* @rtl8225_ops, %struct.rtl818x_rf_ops** %2, align 8
  br label %50

49:                                               ; preds = %45
  store %struct.rtl818x_rf_ops* @rtl8225z2_ops, %struct.rtl818x_rf_ops** %2, align 8
  br label %50

50:                                               ; preds = %49, %48
  %51 = load %struct.rtl818x_rf_ops*, %struct.rtl818x_rf_ops** %2, align 8
  ret %struct.rtl818x_rf_ops* %51
}

declare dso_local i32 @rtl818x_iowrite16(%struct.rtl8180_priv*, i32*, i32) #1

declare dso_local i32 @rtl818x_ioread8(%struct.rtl8180_priv*, i32*) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @rtl8225_write(%struct.ieee80211_hw*, i32, i32) #1

declare dso_local i32 @rtl8225_read(%struct.ieee80211_hw*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
