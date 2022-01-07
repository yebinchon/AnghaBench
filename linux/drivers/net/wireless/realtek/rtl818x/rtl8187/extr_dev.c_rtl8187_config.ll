; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtl818x/rtl8187/extr_dev.c_rtl8187_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtl818x/rtl8187/extr_dev.c_rtl8187_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { %struct.ieee80211_conf, %struct.rtl8187_priv* }
%struct.ieee80211_conf = type { i32 }
%struct.rtl8187_priv = type { i32, %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_3__ = type { i32 (%struct.ieee80211_hw*, %struct.ieee80211_conf*)* }

@RTL818X_TX_CONF_LOOPBACK_MAC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_hw*, i32)* @rtl8187_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtl8187_config(%struct.ieee80211_hw* %0, i32 %1) #0 {
  %3 = alloca %struct.ieee80211_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.rtl8187_priv*, align 8
  %6 = alloca %struct.ieee80211_conf*, align 8
  %7 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %9 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %8, i32 0, i32 1
  %10 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %9, align 8
  store %struct.rtl8187_priv* %10, %struct.rtl8187_priv** %5, align 8
  %11 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %12 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %11, i32 0, i32 0
  store %struct.ieee80211_conf* %12, %struct.ieee80211_conf** %6, align 8
  %13 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %5, align 8
  %14 = getelementptr inbounds %struct.rtl8187_priv, %struct.rtl8187_priv* %13, i32 0, i32 0
  %15 = call i32 @mutex_lock(i32* %14)
  %16 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %5, align 8
  %17 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %5, align 8
  %18 = getelementptr inbounds %struct.rtl8187_priv, %struct.rtl8187_priv* %17, i32 0, i32 1
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 4
  %21 = call i32 @rtl818x_ioread32(%struct.rtl8187_priv* %16, i32* %20)
  store i32 %21, i32* %7, align 4
  %22 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %5, align 8
  %23 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %5, align 8
  %24 = getelementptr inbounds %struct.rtl8187_priv, %struct.rtl8187_priv* %23, i32 0, i32 1
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 4
  %27 = load i32, i32* %7, align 4
  %28 = load i32, i32* @RTL818X_TX_CONF_LOOPBACK_MAC, align 4
  %29 = or i32 %27, %28
  %30 = call i32 @rtl818x_iowrite32(%struct.rtl8187_priv* %22, i32* %26, i32 %29)
  %31 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %5, align 8
  %32 = getelementptr inbounds %struct.rtl8187_priv, %struct.rtl8187_priv* %31, i32 0, i32 2
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load i32 (%struct.ieee80211_hw*, %struct.ieee80211_conf*)*, i32 (%struct.ieee80211_hw*, %struct.ieee80211_conf*)** %34, align 8
  %36 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %37 = load %struct.ieee80211_conf*, %struct.ieee80211_conf** %6, align 8
  %38 = call i32 %35(%struct.ieee80211_hw* %36, %struct.ieee80211_conf* %37)
  %39 = call i32 @msleep(i32 10)
  %40 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %5, align 8
  %41 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %5, align 8
  %42 = getelementptr inbounds %struct.rtl8187_priv, %struct.rtl8187_priv* %41, i32 0, i32 1
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 4
  %45 = load i32, i32* %7, align 4
  %46 = call i32 @rtl818x_iowrite32(%struct.rtl8187_priv* %40, i32* %44, i32 %45)
  %47 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %5, align 8
  %48 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %5, align 8
  %49 = getelementptr inbounds %struct.rtl8187_priv, %struct.rtl8187_priv* %48, i32 0, i32 1
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 3
  %52 = call i32 @rtl818x_iowrite16(%struct.rtl8187_priv* %47, i32* %51, i32 2)
  %53 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %5, align 8
  %54 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %5, align 8
  %55 = getelementptr inbounds %struct.rtl8187_priv, %struct.rtl8187_priv* %54, i32 0, i32 1
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 2
  %58 = call i32 @rtl818x_iowrite16(%struct.rtl8187_priv* %53, i32* %57, i32 100)
  %59 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %5, align 8
  %60 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %5, align 8
  %61 = getelementptr inbounds %struct.rtl8187_priv, %struct.rtl8187_priv* %60, i32 0, i32 1
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 1
  %64 = call i32 @rtl818x_iowrite16(%struct.rtl8187_priv* %59, i32* %63, i32 100)
  %65 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %5, align 8
  %66 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %5, align 8
  %67 = getelementptr inbounds %struct.rtl8187_priv, %struct.rtl8187_priv* %66, i32 0, i32 1
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 0
  %70 = call i32 @rtl818x_iowrite16(%struct.rtl8187_priv* %65, i32* %69, i32 100)
  %71 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %5, align 8
  %72 = getelementptr inbounds %struct.rtl8187_priv, %struct.rtl8187_priv* %71, i32 0, i32 0
  %73 = call i32 @mutex_unlock(i32* %72)
  ret i32 0
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @rtl818x_ioread32(%struct.rtl8187_priv*, i32*) #1

declare dso_local i32 @rtl818x_iowrite32(%struct.rtl8187_priv*, i32*, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @rtl818x_iowrite16(%struct.rtl8187_priv*, i32*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
