; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtl818x/rtl8180/extr_dev.c_rtl8187se_mac_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtl818x/rtl8180/extr_dev.c_rtl8187se_mac_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { %struct.rtl8180_priv* }
%struct.rtl8180_priv = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@PI_DATA_REG = common dso_local global i32 0, align 4
@SI_DATA_REG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*)* @rtl8187se_mac_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtl8187se_mac_config(%struct.ieee80211_hw* %0) #0 {
  %2 = alloca %struct.ieee80211_hw*, align 8
  %3 = alloca %struct.rtl8180_priv*, align 8
  %4 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %2, align 8
  %5 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %6 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %5, i32 0, i32 0
  %7 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %6, align 8
  store %struct.rtl8180_priv* %7, %struct.rtl8180_priv** %3, align 8
  %8 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %3, align 8
  %9 = call i32 @REG_ADDR4(i32 496)
  %10 = call i32 @rtl818x_iowrite32(%struct.rtl8180_priv* %8, i32 %9, i32 0)
  %11 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %3, align 8
  %12 = call i32 @REG_ADDR4(i32 496)
  %13 = call i32 @rtl818x_ioread32(%struct.rtl8180_priv* %11, i32 %12)
  %14 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %3, align 8
  %15 = call i32 @REG_ADDR4(i32 500)
  %16 = call i32 @rtl818x_iowrite32(%struct.rtl8180_priv* %14, i32 %15, i32 0)
  %17 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %3, align 8
  %18 = call i32 @REG_ADDR4(i32 500)
  %19 = call i32 @rtl818x_ioread32(%struct.rtl8180_priv* %17, i32 %18)
  %20 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %3, align 8
  %21 = call i32* @REG_ADDR1(i32 504)
  %22 = call i32 @rtl818x_iowrite8(%struct.rtl8180_priv* %20, i32* %21, i32 0)
  %23 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %3, align 8
  %24 = call i32* @REG_ADDR1(i32 504)
  %25 = call i32 @rtl818x_ioread8(%struct.rtl8180_priv* %23, i32* %24)
  %26 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %3, align 8
  %27 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %3, align 8
  %28 = getelementptr inbounds %struct.rtl8180_priv, %struct.rtl8180_priv* %27, i32 0, i32 0
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = call i32 @rtl818x_ioread8(%struct.rtl8180_priv* %26, i32* %30)
  store i32 %31, i32* %4, align 4
  %32 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %3, align 8
  %33 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %3, align 8
  %34 = getelementptr inbounds %struct.rtl8180_priv, %struct.rtl8180_priv* %33, i32 0, i32 0
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32, i32* %4, align 4
  %38 = or i32 %37, 4
  %39 = call i32 @rtl818x_iowrite8(%struct.rtl8180_priv* %32, i32* %36, i32 %38)
  %40 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %3, align 8
  %41 = load i32, i32* @PI_DATA_REG, align 4
  %42 = call i32 @rtl818x_iowrite16(%struct.rtl8180_priv* %40, i32 %41, i32 4096)
  %43 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %3, align 8
  %44 = load i32, i32* @SI_DATA_REG, align 4
  %45 = call i32 @rtl818x_iowrite16(%struct.rtl8180_priv* %43, i32 %44, i32 4096)
  %46 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %3, align 8
  %47 = call i32 @REG_ADDR2(i32 880)
  %48 = call i32 @rtl818x_iowrite16(%struct.rtl8180_priv* %46, i32 %47, i32 1376)
  %49 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %3, align 8
  %50 = call i32 @REG_ADDR2(i32 882)
  %51 = call i32 @rtl818x_iowrite16(%struct.rtl8180_priv* %49, i32 %50, i32 1376)
  %52 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %3, align 8
  %53 = call i32 @REG_ADDR2(i32 884)
  %54 = call i32 @rtl818x_iowrite16(%struct.rtl8180_priv* %52, i32 %53, i32 3492)
  %55 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %3, align 8
  %56 = call i32 @REG_ADDR2(i32 886)
  %57 = call i32 @rtl818x_iowrite16(%struct.rtl8180_priv* %55, i32 %56, i32 3492)
  %58 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %3, align 8
  %59 = call i32 @REG_ADDR2(i32 888)
  %60 = call i32 @rtl818x_iowrite16(%struct.rtl8180_priv* %58, i32 %59, i32 1376)
  %61 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %3, align 8
  %62 = call i32 @REG_ADDR2(i32 890)
  %63 = call i32 @rtl818x_iowrite16(%struct.rtl8180_priv* %61, i32 %62, i32 1376)
  %64 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %3, align 8
  %65 = call i32 @REG_ADDR2(i32 892)
  %66 = call i32 @rtl818x_iowrite16(%struct.rtl8180_priv* %64, i32 %65, i32 236)
  %67 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %3, align 8
  %68 = call i32 @REG_ADDR2(i32 894)
  %69 = call i32 @rtl818x_iowrite16(%struct.rtl8180_priv* %67, i32 %68, i32 236)
  %70 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %3, align 8
  %71 = call i32* @REG_ADDR1(i32 590)
  %72 = call i32 @rtl818x_iowrite8(%struct.rtl8180_priv* %70, i32* %71, i32 1)
  %73 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %3, align 8
  %74 = call i32* @REG_ADDR1(i32 10)
  %75 = call i32 @rtl818x_iowrite8(%struct.rtl8180_priv* %73, i32* %74, i32 114)
  ret void
}

declare dso_local i32 @rtl818x_iowrite32(%struct.rtl8180_priv*, i32, i32) #1

declare dso_local i32 @REG_ADDR4(i32) #1

declare dso_local i32 @rtl818x_ioread32(%struct.rtl8180_priv*, i32) #1

declare dso_local i32 @rtl818x_iowrite8(%struct.rtl8180_priv*, i32*, i32) #1

declare dso_local i32* @REG_ADDR1(i32) #1

declare dso_local i32 @rtl818x_ioread8(%struct.rtl8180_priv*, i32*) #1

declare dso_local i32 @rtl818x_iowrite16(%struct.rtl8180_priv*, i32, i32) #1

declare dso_local i32 @REG_ADDR2(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
