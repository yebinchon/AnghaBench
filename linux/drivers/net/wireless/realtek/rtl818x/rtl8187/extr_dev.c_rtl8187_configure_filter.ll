; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtl818x/rtl8187/extr_dev.c_rtl8187_configure_filter.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtl818x/rtl8187/extr_dev.c_rtl8187_configure_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { %struct.rtl8187_priv* }
%struct.rtl8187_priv = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@FIF_FCSFAIL = common dso_local global i32 0, align 4
@RTL818X_RX_CONF_FCS = common dso_local global i32 0, align 4
@FIF_CONTROL = common dso_local global i32 0, align 4
@RTL818X_RX_CONF_CTRL = common dso_local global i32 0, align 4
@FIF_OTHER_BSS = common dso_local global i32 0, align 4
@FIF_ALLMULTI = common dso_local global i32 0, align 4
@RTL818X_RX_CONF_MONITOR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*, i32, i32*, i64)* @rtl8187_configure_filter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtl8187_configure_filter(%struct.ieee80211_hw* %0, i32 %1, i32* %2, i64 %3) #0 {
  %5 = alloca %struct.ieee80211_hw*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.rtl8187_priv*, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i64 %3, i64* %8, align 8
  %10 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %11 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %10, i32 0, i32 0
  %12 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %11, align 8
  store %struct.rtl8187_priv* %12, %struct.rtl8187_priv** %9, align 8
  %13 = load i32, i32* %6, align 4
  %14 = load i32, i32* @FIF_FCSFAIL, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %23

17:                                               ; preds = %4
  %18 = load i32, i32* @RTL818X_RX_CONF_FCS, align 4
  %19 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %9, align 8
  %20 = getelementptr inbounds %struct.rtl8187_priv, %struct.rtl8187_priv* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = xor i32 %21, %18
  store i32 %22, i32* %20, align 8
  br label %23

23:                                               ; preds = %17, %4
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* @FIF_CONTROL, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %34

28:                                               ; preds = %23
  %29 = load i32, i32* @RTL818X_RX_CONF_CTRL, align 4
  %30 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %9, align 8
  %31 = getelementptr inbounds %struct.rtl8187_priv, %struct.rtl8187_priv* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = xor i32 %32, %29
  store i32 %33, i32* %31, align 8
  br label %34

34:                                               ; preds = %28, %23
  %35 = load i32*, i32** %7, align 8
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @FIF_OTHER_BSS, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %49, label %40

40:                                               ; preds = %34
  %41 = load i32*, i32** %7, align 8
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @FIF_ALLMULTI, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %49, label %46

46:                                               ; preds = %40
  %47 = load i64, i64* %8, align 8
  %48 = icmp sgt i64 %47, 0
  br i1 %48, label %49, label %55

49:                                               ; preds = %46, %40, %34
  %50 = load i32, i32* @RTL818X_RX_CONF_MONITOR, align 4
  %51 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %9, align 8
  %52 = getelementptr inbounds %struct.rtl8187_priv, %struct.rtl8187_priv* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = or i32 %53, %50
  store i32 %54, i32* %52, align 8
  br label %62

55:                                               ; preds = %46
  %56 = load i32, i32* @RTL818X_RX_CONF_MONITOR, align 4
  %57 = xor i32 %56, -1
  %58 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %9, align 8
  %59 = getelementptr inbounds %struct.rtl8187_priv, %struct.rtl8187_priv* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = and i32 %60, %57
  store i32 %61, i32* %59, align 8
  br label %62

62:                                               ; preds = %55, %49
  %63 = load i32*, i32** %7, align 8
  store i32 0, i32* %63, align 4
  %64 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %9, align 8
  %65 = getelementptr inbounds %struct.rtl8187_priv, %struct.rtl8187_priv* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* @RTL818X_RX_CONF_FCS, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %75

70:                                               ; preds = %62
  %71 = load i32, i32* @FIF_FCSFAIL, align 4
  %72 = load i32*, i32** %7, align 8
  %73 = load i32, i32* %72, align 4
  %74 = or i32 %73, %71
  store i32 %74, i32* %72, align 4
  br label %75

75:                                               ; preds = %70, %62
  %76 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %9, align 8
  %77 = getelementptr inbounds %struct.rtl8187_priv, %struct.rtl8187_priv* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = load i32, i32* @RTL818X_RX_CONF_CTRL, align 4
  %80 = and i32 %78, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %87

82:                                               ; preds = %75
  %83 = load i32, i32* @FIF_CONTROL, align 4
  %84 = load i32*, i32** %7, align 8
  %85 = load i32, i32* %84, align 4
  %86 = or i32 %85, %83
  store i32 %86, i32* %84, align 4
  br label %87

87:                                               ; preds = %82, %75
  %88 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %9, align 8
  %89 = getelementptr inbounds %struct.rtl8187_priv, %struct.rtl8187_priv* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = load i32, i32* @RTL818X_RX_CONF_MONITOR, align 4
  %92 = and i32 %90, %91
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %103

94:                                               ; preds = %87
  %95 = load i32, i32* @FIF_OTHER_BSS, align 4
  %96 = load i32*, i32** %7, align 8
  %97 = load i32, i32* %96, align 4
  %98 = or i32 %97, %95
  store i32 %98, i32* %96, align 4
  %99 = load i32, i32* @FIF_ALLMULTI, align 4
  %100 = load i32*, i32** %7, align 8
  %101 = load i32, i32* %100, align 4
  %102 = or i32 %101, %99
  store i32 %102, i32* %100, align 4
  br label %103

103:                                              ; preds = %94, %87
  %104 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %9, align 8
  %105 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %9, align 8
  %106 = getelementptr inbounds %struct.rtl8187_priv, %struct.rtl8187_priv* %105, i32 0, i32 1
  %107 = load %struct.TYPE_2__*, %struct.TYPE_2__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %107, i32 0, i32 0
  %109 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %9, align 8
  %110 = getelementptr inbounds %struct.rtl8187_priv, %struct.rtl8187_priv* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = call i32 @rtl818x_iowrite32_async(%struct.rtl8187_priv* %104, i32* %108, i32 %111)
  ret void
}

declare dso_local i32 @rtl818x_iowrite32_async(%struct.rtl8187_priv*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
