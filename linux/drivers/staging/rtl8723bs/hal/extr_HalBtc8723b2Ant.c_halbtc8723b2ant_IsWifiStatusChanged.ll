; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/hal/extr_HalBtc8723b2Ant.c_halbtc8723b2ant_IsWifiStatusChanged.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/hal/extr_HalBtc8723b2Ant.c_halbtc8723b2ant_IsWifiStatusChanged.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 (%struct.TYPE_7__*, i32, i32*)* }

@halbtc8723b2ant_IsWifiStatusChanged.bPreWifiBusy = internal global i32 0, align 4
@halbtc8723b2ant_IsWifiStatusChanged.bPreUnder4way = internal global i32 0, align 4
@halbtc8723b2ant_IsWifiStatusChanged.bPreBtHsOn = internal global i32 0, align 4
@BTC_GET_BL_WIFI_CONNECTED = common dso_local global i32 0, align 4
@BTC_GET_BL_WIFI_BUSY = common dso_local global i32 0, align 4
@BTC_GET_BL_HS_OPERATION = common dso_local global i32 0, align 4
@BTC_GET_BL_WIFI_4_WAY_PROGRESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*)* @halbtc8723b2ant_IsWifiStatusChanged to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @halbtc8723b2ant_IsWifiStatusChanged(%struct.TYPE_7__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %3, align 8
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %8 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 0
  %10 = load i32 (%struct.TYPE_7__*, i32, i32*)*, i32 (%struct.TYPE_7__*, i32, i32*)** %9, align 8
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %12 = load i32, i32* @BTC_GET_BL_WIFI_CONNECTED, align 4
  %13 = call i32 %10(%struct.TYPE_7__* %11, i32 %12, i32* %7)
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 0
  %16 = load i32 (%struct.TYPE_7__*, i32, i32*)*, i32 (%struct.TYPE_7__*, i32, i32*)** %15, align 8
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %18 = load i32, i32* @BTC_GET_BL_WIFI_BUSY, align 4
  %19 = call i32 %16(%struct.TYPE_7__* %17, i32 %18, i32* %4)
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 0
  %22 = load i32 (%struct.TYPE_7__*, i32, i32*)*, i32 (%struct.TYPE_7__*, i32, i32*)** %21, align 8
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %24 = load i32, i32* @BTC_GET_BL_HS_OPERATION, align 4
  %25 = call i32 %22(%struct.TYPE_7__* %23, i32 %24, i32* %6)
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 0
  %28 = load i32 (%struct.TYPE_7__*, i32, i32*)*, i32 (%struct.TYPE_7__*, i32, i32*)** %27, align 8
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %30 = load i32, i32* @BTC_GET_BL_WIFI_4_WAY_PROGRESS, align 4
  %31 = call i32 %28(%struct.TYPE_7__* %29, i32 %30, i32* %5)
  %32 = load i32, i32* %7, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %53

34:                                               ; preds = %1
  %35 = load i32, i32* %4, align 4
  %36 = load i32, i32* @halbtc8723b2ant_IsWifiStatusChanged.bPreWifiBusy, align 4
  %37 = icmp ne i32 %35, %36
  br i1 %37, label %38, label %40

38:                                               ; preds = %34
  %39 = load i32, i32* %4, align 4
  store i32 %39, i32* @halbtc8723b2ant_IsWifiStatusChanged.bPreWifiBusy, align 4
  store i32 1, i32* %2, align 4
  br label %54

40:                                               ; preds = %34
  %41 = load i32, i32* %5, align 4
  %42 = load i32, i32* @halbtc8723b2ant_IsWifiStatusChanged.bPreUnder4way, align 4
  %43 = icmp ne i32 %41, %42
  br i1 %43, label %44, label %46

44:                                               ; preds = %40
  %45 = load i32, i32* %5, align 4
  store i32 %45, i32* @halbtc8723b2ant_IsWifiStatusChanged.bPreUnder4way, align 4
  store i32 1, i32* %2, align 4
  br label %54

46:                                               ; preds = %40
  %47 = load i32, i32* %6, align 4
  %48 = load i32, i32* @halbtc8723b2ant_IsWifiStatusChanged.bPreBtHsOn, align 4
  %49 = icmp ne i32 %47, %48
  br i1 %49, label %50, label %52

50:                                               ; preds = %46
  %51 = load i32, i32* %6, align 4
  store i32 %51, i32* @halbtc8723b2ant_IsWifiStatusChanged.bPreBtHsOn, align 4
  store i32 1, i32* %2, align 4
  br label %54

52:                                               ; preds = %46
  br label %53

53:                                               ; preds = %52, %1
  store i32 0, i32* %2, align 4
  br label %54

54:                                               ; preds = %53, %50, %44, %38
  %55 = load i32, i32* %2, align 4
  ret i32 %55
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
