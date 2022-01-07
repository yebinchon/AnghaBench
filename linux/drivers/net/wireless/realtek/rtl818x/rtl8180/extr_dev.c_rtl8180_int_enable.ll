; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtl818x/rtl8180/extr_dev.c_rtl8180_int_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtl818x/rtl8180/extr_dev.c_rtl8180_int_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { %struct.rtl8180_priv* }
%struct.rtl8180_priv = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@RTL818X_CHIP_FAMILY_RTL8187SE = common dso_local global i64 0, align 8
@IMR_TBDER = common dso_local global i32 0, align 4
@IMR_TBDOK = common dso_local global i32 0, align 4
@IMR_TVODER = common dso_local global i32 0, align 4
@IMR_TVODOK = common dso_local global i32 0, align 4
@IMR_TVIDER = common dso_local global i32 0, align 4
@IMR_TVIDOK = common dso_local global i32 0, align 4
@IMR_TBEDER = common dso_local global i32 0, align 4
@IMR_TBEDOK = common dso_local global i32 0, align 4
@IMR_TBKDER = common dso_local global i32 0, align 4
@IMR_TBKDOK = common dso_local global i32 0, align 4
@IMR_RDU = common dso_local global i32 0, align 4
@IMR_RER = common dso_local global i32 0, align 4
@IMR_ROK = common dso_local global i32 0, align 4
@IMR_RQOSOK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*)* @rtl8180_int_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtl8180_int_enable(%struct.ieee80211_hw* %0) #0 {
  %2 = alloca %struct.ieee80211_hw*, align 8
  %3 = alloca %struct.rtl8180_priv*, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %2, align 8
  %4 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %5 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %4, i32 0, i32 0
  %6 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %5, align 8
  store %struct.rtl8180_priv* %6, %struct.rtl8180_priv** %3, align 8
  %7 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %3, align 8
  %8 = getelementptr inbounds %struct.rtl8180_priv, %struct.rtl8180_priv* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @RTL818X_CHIP_FAMILY_RTL8187SE, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %46

12:                                               ; preds = %1
  %13 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %3, align 8
  %14 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %3, align 8
  %15 = getelementptr inbounds %struct.rtl8180_priv, %struct.rtl8180_priv* %14, i32 0, i32 1
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 1
  %18 = load i32, i32* @IMR_TBDER, align 4
  %19 = load i32, i32* @IMR_TBDOK, align 4
  %20 = or i32 %18, %19
  %21 = load i32, i32* @IMR_TVODER, align 4
  %22 = or i32 %20, %21
  %23 = load i32, i32* @IMR_TVODOK, align 4
  %24 = or i32 %22, %23
  %25 = load i32, i32* @IMR_TVIDER, align 4
  %26 = or i32 %24, %25
  %27 = load i32, i32* @IMR_TVIDOK, align 4
  %28 = or i32 %26, %27
  %29 = load i32, i32* @IMR_TBEDER, align 4
  %30 = or i32 %28, %29
  %31 = load i32, i32* @IMR_TBEDOK, align 4
  %32 = or i32 %30, %31
  %33 = load i32, i32* @IMR_TBKDER, align 4
  %34 = or i32 %32, %33
  %35 = load i32, i32* @IMR_TBKDOK, align 4
  %36 = or i32 %34, %35
  %37 = load i32, i32* @IMR_RDU, align 4
  %38 = or i32 %36, %37
  %39 = load i32, i32* @IMR_RER, align 4
  %40 = or i32 %38, %39
  %41 = load i32, i32* @IMR_ROK, align 4
  %42 = or i32 %40, %41
  %43 = load i32, i32* @IMR_RQOSOK, align 4
  %44 = or i32 %42, %43
  %45 = call i32 @rtl818x_iowrite32(%struct.rtl8180_priv* %13, i32* %17, i32 %44)
  br label %53

46:                                               ; preds = %1
  %47 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %3, align 8
  %48 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %3, align 8
  %49 = getelementptr inbounds %struct.rtl8180_priv, %struct.rtl8180_priv* %48, i32 0, i32 1
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = call i32 @rtl818x_iowrite16(%struct.rtl8180_priv* %47, i32* %51, i32 65535)
  br label %53

53:                                               ; preds = %46, %12
  ret void
}

declare dso_local i32 @rtl818x_iowrite32(%struct.rtl8180_priv*, i32*, i32) #1

declare dso_local i32 @rtl818x_iowrite16(%struct.rtl8180_priv*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
