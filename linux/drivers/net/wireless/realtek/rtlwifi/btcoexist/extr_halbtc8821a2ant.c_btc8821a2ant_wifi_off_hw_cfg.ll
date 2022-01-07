; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/btcoexist/extr_halbtc8821a2ant.c_btc8821a2ant_wifi_off_hw_cfg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/btcoexist/extr_halbtc8821a2ant.c_btc8821a2ant_wifi_off_hw_cfg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btc_coexist = type { i32 (%struct.btc_coexist*, i32, i32)*, i32 (%struct.btc_coexist*, i32, i32, i32*)*, i32 (%struct.btc_coexist*, i32, i32*)*, i32 (%struct.btc_coexist*, i32, i32, i32, i32)* }

@BTC_RF_A = common dso_local global i32 0, align 4
@BTC_GET_U4_WIFI_FW_VER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.btc_coexist*)* @btc8821a2ant_wifi_off_hw_cfg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @btc8821a2ant_wifi_off_hw_cfg(%struct.btc_coexist* %0) #0 {
  %2 = alloca %struct.btc_coexist*, align 8
  %3 = alloca [2 x i32], align 4
  %4 = alloca i32, align 4
  store %struct.btc_coexist* %0, %struct.btc_coexist** %2, align 8
  %5 = bitcast [2 x i32]* %3 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %5, i8 0, i64 8, i1 false)
  store i32 0, i32* %4, align 4
  %6 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %7 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %6, i32 0, i32 0
  %8 = load i32 (%struct.btc_coexist*, i32, i32)*, i32 (%struct.btc_coexist*, i32, i32)** %7, align 8
  %9 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %10 = call i32 %8(%struct.btc_coexist* %9, i32 1902, i32 4)
  %11 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %12 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %11, i32 0, i32 3
  %13 = load i32 (%struct.btc_coexist*, i32, i32, i32, i32)*, i32 (%struct.btc_coexist*, i32, i32, i32, i32)** %12, align 8
  %14 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %15 = load i32, i32* @BTC_RF_A, align 4
  %16 = call i32 %13(%struct.btc_coexist* %14, i32 %15, i32 1, i32 1048575, i32 1920)
  %17 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %18 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %17, i32 0, i32 2
  %19 = load i32 (%struct.btc_coexist*, i32, i32*)*, i32 (%struct.btc_coexist*, i32, i32*)** %18, align 8
  %20 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %21 = load i32, i32* @BTC_GET_U4_WIFI_FW_VER, align 4
  %22 = call i32 %19(%struct.btc_coexist* %20, i32 %21, i32* %4)
  %23 = load i32, i32* %4, align 4
  %24 = icmp sge i32 %23, 1572864
  br i1 %24, label %25, label %33

25:                                               ; preds = %1
  %26 = getelementptr inbounds [2 x i32], [2 x i32]* %3, i64 0, i64 0
  store i32 1, i32* %26, align 4
  %27 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %28 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %27, i32 0, i32 1
  %29 = load i32 (%struct.btc_coexist*, i32, i32, i32*)*, i32 (%struct.btc_coexist*, i32, i32, i32*)** %28, align 8
  %30 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %31 = getelementptr inbounds [2 x i32], [2 x i32]* %3, i64 0, i64 0
  %32 = call i32 %29(%struct.btc_coexist* %30, i32 110, i32 1, i32* %31)
  br label %39

33:                                               ; preds = %1
  %34 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %35 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %34, i32 0, i32 0
  %36 = load i32 (%struct.btc_coexist*, i32, i32)*, i32 (%struct.btc_coexist*, i32, i32)** %35, align 8
  %37 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %38 = call i32 %36(%struct.btc_coexist* %37, i32 1893, i32 24)
  br label %39

39:                                               ; preds = %33, %25
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
