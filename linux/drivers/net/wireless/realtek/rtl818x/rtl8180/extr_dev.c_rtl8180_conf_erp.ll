; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtl818x/rtl8180/extr_dev.c_rtl8180_conf_erp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtl818x/rtl8180/extr_dev.c_rtl8180_conf_erp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { %struct.rtl8180_priv* }
%struct.rtl8180_priv = type { i64, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32 }
%struct.ieee80211_bss_conf = type { i64 }

@RTL818X_CHIP_FAMILY_RTL8180 = common dso_local global i64 0, align 8
@RTL818X_CHIP_FAMILY_RTL8187SE = common dso_local global i64 0, align 8
@RTL818X_CHIP_FAMILY_RTL8185 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*, %struct.ieee80211_bss_conf*)* @rtl8180_conf_erp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtl8180_conf_erp(%struct.ieee80211_hw* %0, %struct.ieee80211_bss_conf* %1) #0 {
  %3 = alloca %struct.ieee80211_hw*, align 8
  %4 = alloca %struct.ieee80211_bss_conf*, align 8
  %5 = alloca %struct.rtl8180_priv*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %3, align 8
  store %struct.ieee80211_bss_conf* %1, %struct.ieee80211_bss_conf** %4, align 8
  %10 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %11 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %10, i32 0, i32 0
  %12 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %11, align 8
  store %struct.rtl8180_priv* %12, %struct.rtl8180_priv** %5, align 8
  %13 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %5, align 8
  %14 = getelementptr inbounds %struct.rtl8180_priv, %struct.rtl8180_priv* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @RTL818X_CHIP_FAMILY_RTL8180, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %2
  br label %106

19:                                               ; preds = %2
  store i32 34, i32* %6, align 4
  %20 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %4, align 8
  %21 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %19
  %25 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %5, align 8
  %26 = getelementptr inbounds %struct.rtl8180_priv, %struct.rtl8180_priv* %25, i32 0, i32 1
  store i32 9, i32* %26, align 8
  br label %30

27:                                               ; preds = %19
  %28 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %5, align 8
  %29 = getelementptr inbounds %struct.rtl8180_priv, %struct.rtl8180_priv* %28, i32 0, i32 1
  store i32 20, i32* %29, align 8
  br label %30

30:                                               ; preds = %27, %24
  %31 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %5, align 8
  %32 = getelementptr inbounds %struct.rtl8180_priv, %struct.rtl8180_priv* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = mul nsw i32 2, %33
  %35 = add nsw i32 10, %34
  store i32 %35, i32* %7, align 4
  %36 = load i32, i32* %7, align 4
  %37 = add nsw i32 10, %36
  %38 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %5, align 8
  %39 = getelementptr inbounds %struct.rtl8180_priv, %struct.rtl8180_priv* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = add nsw i32 %37, %40
  store i32 %41, i32* %8, align 4
  %42 = load i32, i32* %8, align 4
  %43 = call i32 @DIV_ROUND_UP(i32 %42, i32 4)
  store i32 %43, i32* %9, align 4
  %44 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %5, align 8
  %45 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %5, align 8
  %46 = getelementptr inbounds %struct.rtl8180_priv, %struct.rtl8180_priv* %45, i32 0, i32 3
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 5
  %49 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %5, align 8
  %50 = getelementptr inbounds %struct.rtl8180_priv, %struct.rtl8180_priv* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @rtl818x_iowrite8(%struct.rtl8180_priv* %44, i32* %48, i32 %51)
  %53 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %5, align 8
  %54 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %5, align 8
  %55 = getelementptr inbounds %struct.rtl8180_priv, %struct.rtl8180_priv* %54, i32 0, i32 3
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 4
  %58 = load i32, i32* %6, align 4
  %59 = call i32 @rtl818x_iowrite8(%struct.rtl8180_priv* %53, i32* %57, i32 %58)
  %60 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %5, align 8
  %61 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %5, align 8
  %62 = getelementptr inbounds %struct.rtl8180_priv, %struct.rtl8180_priv* %61, i32 0, i32 3
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 3
  %65 = load i32, i32* %7, align 4
  %66 = call i32 @rtl818x_iowrite8(%struct.rtl8180_priv* %60, i32* %64, i32 %65)
  %67 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %5, align 8
  %68 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %5, align 8
  %69 = getelementptr inbounds %struct.rtl8180_priv, %struct.rtl8180_priv* %68, i32 0, i32 3
  %70 = load %struct.TYPE_2__*, %struct.TYPE_2__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 2
  %72 = load i32, i32* %9, align 4
  %73 = call i32 @rtl818x_iowrite8(%struct.rtl8180_priv* %67, i32* %71, i32 %72)
  %74 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %5, align 8
  %75 = getelementptr inbounds %struct.rtl8180_priv, %struct.rtl8180_priv* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* @RTL818X_CHIP_FAMILY_RTL8187SE, align 8
  %78 = icmp eq i64 %76, %77
  br i1 %78, label %79, label %87

79:                                               ; preds = %30
  %80 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %5, align 8
  %81 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %5, align 8
  %82 = getelementptr inbounds %struct.rtl8180_priv, %struct.rtl8180_priv* %81, i32 0, i32 3
  %83 = load %struct.TYPE_2__*, %struct.TYPE_2__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 1
  %85 = load i32, i32* %9, align 4
  %86 = call i32 @rtl818x_iowrite8(%struct.rtl8180_priv* %80, i32* %84, i32 %85)
  br label %106

87:                                               ; preds = %30
  %88 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %5, align 8
  %89 = getelementptr inbounds %struct.rtl8180_priv, %struct.rtl8180_priv* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = load i64, i64* @RTL818X_CHIP_FAMILY_RTL8185, align 8
  %92 = icmp eq i64 %90, %91
  br i1 %92, label %93, label %105

93:                                               ; preds = %87
  %94 = load i32, i32* %8, align 4
  %95 = load i32, i32* %7, align 4
  %96 = sub nsw i32 %94, %95
  %97 = call i32 @DIV_ROUND_UP(i32 %96, i32 4)
  store i32 %97, i32* %9, align 4
  %98 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %5, align 8
  %99 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %5, align 8
  %100 = getelementptr inbounds %struct.rtl8180_priv, %struct.rtl8180_priv* %99, i32 0, i32 3
  %101 = load %struct.TYPE_2__*, %struct.TYPE_2__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %101, i32 0, i32 0
  %103 = load i32, i32* %9, align 4
  %104 = call i32 @rtl818x_iowrite8(%struct.rtl8180_priv* %98, i32* %102, i32 %103)
  br label %105

105:                                              ; preds = %93, %87
  br label %106

106:                                              ; preds = %18, %105, %79
  ret void
}

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

declare dso_local i32 @rtl818x_iowrite8(%struct.rtl8180_priv*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
