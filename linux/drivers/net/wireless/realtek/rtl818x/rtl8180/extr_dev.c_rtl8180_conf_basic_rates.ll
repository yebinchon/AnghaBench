; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtl818x/rtl8180/extr_dev.c_rtl8180_conf_basic_rates.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtl818x/rtl8180/extr_dev.c_rtl8180_conf_basic_rates.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { %struct.rtl8180_priv* }
%struct.rtl8180_priv = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*, i32)* @rtl8180_conf_basic_rates to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtl8180_conf_basic_rates(%struct.ieee80211_hw* %0, i32 %1) #0 {
  %3 = alloca %struct.ieee80211_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.rtl8180_priv*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %3, align 8
  store i32 %1, i32* %4, align 4
  %11 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %12 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %11, i32 0, i32 0
  %13 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %12, align 8
  store %struct.rtl8180_priv* %13, %struct.rtl8180_priv** %5, align 8
  %14 = load i32, i32* %4, align 4
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* %7, align 4
  %16 = and i32 %15, 15
  %17 = load i32, i32* %7, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %19, label %22

19:                                               ; preds = %2
  %20 = load i32, i32* %7, align 4
  %21 = or i32 %20, 336
  store i32 %21, i32* %7, align 4
  br label %22

22:                                               ; preds = %19, %2
  %23 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %5, align 8
  %24 = getelementptr inbounds %struct.rtl8180_priv, %struct.rtl8180_priv* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  switch i32 %25, label %80 [
    i32 130, label %26
    i32 129, label %48
    i32 128, label %72
  ]

26:                                               ; preds = %22
  %27 = load i32, i32* %4, align 4
  %28 = call i32 @fls(i32 %27)
  %29 = sub nsw i32 %28, 1
  store i32 %29, i32* %8, align 4
  %30 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %5, align 8
  %31 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %5, align 8
  %32 = getelementptr inbounds %struct.rtl8180_priv, %struct.rtl8180_priv* %31, i32 0, i32 1
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 2
  %35 = call i32 @rtl818x_ioread16(%struct.rtl8180_priv* %30, i32* %34)
  store i32 %35, i32* %6, align 4
  %36 = load i32, i32* %6, align 4
  %37 = and i32 %36, -4
  store i32 %37, i32* %6, align 4
  %38 = load i32, i32* %8, align 4
  %39 = load i32, i32* %6, align 4
  %40 = or i32 %39, %38
  store i32 %40, i32* %6, align 4
  %41 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %5, align 8
  %42 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %5, align 8
  %43 = getelementptr inbounds %struct.rtl8180_priv, %struct.rtl8180_priv* %42, i32 0, i32 1
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 2
  %46 = load i32, i32* %6, align 4
  %47 = call i32 @rtl818x_iowrite16(%struct.rtl8180_priv* %41, i32* %45, i32 %46)
  br label %80

48:                                               ; preds = %22
  %49 = load i32, i32* %7, align 4
  %50 = call i32 @fls(i32 %49)
  %51 = sub nsw i32 %50, 1
  store i32 %51, i32* %9, align 4
  %52 = load i32, i32* %7, align 4
  %53 = call i32 @ffs(i32 %52)
  %54 = sub nsw i32 %53, 1
  store i32 %54, i32* %10, align 4
  %55 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %5, align 8
  %56 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %5, align 8
  %57 = getelementptr inbounds %struct.rtl8180_priv, %struct.rtl8180_priv* %56, i32 0, i32 1
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 2
  %60 = load i32, i32* %4, align 4
  %61 = call i32 @rtl818x_iowrite16(%struct.rtl8180_priv* %55, i32* %59, i32 %60)
  %62 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %5, align 8
  %63 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %5, align 8
  %64 = getelementptr inbounds %struct.rtl8180_priv, %struct.rtl8180_priv* %63, i32 0, i32 1
  %65 = load %struct.TYPE_2__*, %struct.TYPE_2__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 1
  %67 = load i32, i32* %9, align 4
  %68 = shl i32 %67, 4
  %69 = load i32, i32* %10, align 4
  %70 = or i32 %68, %69
  %71 = call i32 @rtl818x_iowrite8(%struct.rtl8180_priv* %62, i32* %66, i32 %70)
  br label %80

72:                                               ; preds = %22
  %73 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %5, align 8
  %74 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %5, align 8
  %75 = getelementptr inbounds %struct.rtl8180_priv, %struct.rtl8180_priv* %74, i32 0, i32 1
  %76 = load %struct.TYPE_2__*, %struct.TYPE_2__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 0
  %78 = load i32, i32* %7, align 4
  %79 = call i32 @rtl818x_iowrite16(%struct.rtl8180_priv* %73, i32* %77, i32 %78)
  br label %80

80:                                               ; preds = %22, %72, %48, %26
  ret void
}

declare dso_local i32 @fls(i32) #1

declare dso_local i32 @rtl818x_ioread16(%struct.rtl8180_priv*, i32*) #1

declare dso_local i32 @rtl818x_iowrite16(%struct.rtl8180_priv*, i32*, i32) #1

declare dso_local i32 @ffs(i32) #1

declare dso_local i32 @rtl818x_iowrite8(%struct.rtl8180_priv*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
