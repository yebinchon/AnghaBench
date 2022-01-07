; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/hal/extr_HalBtc8723b2Ant.c_halbtc8723b2ant_WifiOffHwCfg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/hal/extr_HalBtc8723b2Ant.c_halbtc8723b2ant_WifiOffHwCfg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32 (%struct.TYPE_11__*, i32, i32, i32)*, i32 (%struct.TYPE_11__*, i32, i32*)*, i32 (%struct.TYPE_11__*, i32, i32)*, i32 (%struct.TYPE_11__*, i32, i32, i32*)*, i32 (%struct.TYPE_11__*, i32, i32, i32, i32)* }

@BTC_RF_A = common dso_local global i32 0, align 4
@BTC_GET_U4_WIFI_FW_VER = common dso_local global i32 0, align 4
@BTC_GET_BL_WIFI_IS_IN_MP_MODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_11__*)* @halbtc8723b2ant_WifiOffHwCfg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @halbtc8723b2ant_WifiOffHwCfg(%struct.TYPE_11__* %0) #0 {
  %2 = alloca %struct.TYPE_11__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca [2 x i32], align 4
  %5 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %2, align 8
  store i32 0, i32* %3, align 4
  %6 = bitcast [2 x i32]* %4 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %6, i8 0, i64 8, i1 false)
  store i32 0, i32* %5, align 4
  %7 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 2
  %9 = load i32 (%struct.TYPE_11__*, i32, i32)*, i32 (%struct.TYPE_11__*, i32, i32)** %8, align 8
  %10 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %11 = call i32 %9(%struct.TYPE_11__* %10, i32 1902, i32 4)
  %12 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %13 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %12, i32 0, i32 4
  %14 = load i32 (%struct.TYPE_11__*, i32, i32, i32, i32)*, i32 (%struct.TYPE_11__*, i32, i32, i32, i32)** %13, align 8
  %15 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %16 = load i32, i32* @BTC_RF_A, align 4
  %17 = call i32 %14(%struct.TYPE_11__* %15, i32 %16, i32 1, i32 1048575, i32 1920)
  %18 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %19 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %18, i32 0, i32 1
  %20 = load i32 (%struct.TYPE_11__*, i32, i32*)*, i32 (%struct.TYPE_11__*, i32, i32*)** %19, align 8
  %21 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %22 = load i32, i32* @BTC_GET_U4_WIFI_FW_VER, align 4
  %23 = call i32 %20(%struct.TYPE_11__* %21, i32 %22, i32* %5)
  %24 = load i32, i32* %5, align 4
  %25 = icmp sge i32 %24, 1572864
  br i1 %25, label %26, label %34

26:                                               ; preds = %1
  %27 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 0
  store i32 1, i32* %27, align 4
  %28 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %29 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %28, i32 0, i32 3
  %30 = load i32 (%struct.TYPE_11__*, i32, i32, i32*)*, i32 (%struct.TYPE_11__*, i32, i32, i32*)** %29, align 8
  %31 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %32 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 0
  %33 = call i32 %30(%struct.TYPE_11__* %31, i32 110, i32 1, i32* %32)
  br label %40

34:                                               ; preds = %1
  %35 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %36 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %35, i32 0, i32 2
  %37 = load i32 (%struct.TYPE_11__*, i32, i32)*, i32 (%struct.TYPE_11__*, i32, i32)** %36, align 8
  %38 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %39 = call i32 %37(%struct.TYPE_11__* %38, i32 1893, i32 24)
  br label %40

40:                                               ; preds = %34, %26
  %41 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %42 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %41, i32 0, i32 1
  %43 = load i32 (%struct.TYPE_11__*, i32, i32*)*, i32 (%struct.TYPE_11__*, i32, i32*)** %42, align 8
  %44 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %45 = load i32, i32* @BTC_GET_BL_WIFI_IS_IN_MP_MODE, align 4
  %46 = call i32 %43(%struct.TYPE_11__* %44, i32 %45, i32* %3)
  %47 = load i32, i32* %3, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %55, label %49

49:                                               ; preds = %40
  %50 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %51 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %50, i32 0, i32 0
  %52 = load i32 (%struct.TYPE_11__*, i32, i32, i32)*, i32 (%struct.TYPE_11__*, i32, i32, i32)** %51, align 8
  %53 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %54 = call i32 %52(%struct.TYPE_11__* %53, i32 103, i32 32, i32 0)
  br label %61

55:                                               ; preds = %40
  %56 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %57 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %56, i32 0, i32 0
  %58 = load i32 (%struct.TYPE_11__*, i32, i32, i32)*, i32 (%struct.TYPE_11__*, i32, i32, i32)** %57, align 8
  %59 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %60 = call i32 %58(%struct.TYPE_11__* %59, i32 103, i32 32, i32 1)
  br label %61

61:                                               ; preds = %55, %49
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
