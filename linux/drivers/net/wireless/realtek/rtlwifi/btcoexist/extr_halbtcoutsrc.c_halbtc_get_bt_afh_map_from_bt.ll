; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/btcoexist/extr_halbtcoutsrc.c_halbtc_get_bt_afh_map_from_bt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/btcoexist/extr_halbtcoutsrc.c_halbtc_get_bt_afh_map_from_bt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btc_coexist = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32 }

@BT_OP_GET_AFH_MAP_L = common dso_local global i32 0, align 4
@BT_OP_GET_AFH_MAP_M = common dso_local global i32 0, align 4
@BT_OP_GET_AFH_MAP_H = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i32*)* @halbtc_get_bt_afh_map_from_bt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @halbtc_get_bt_afh_map_from_bt(i8* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.btc_coexist*, align 8
  %8 = alloca [2 x i32], align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %13 = load i8*, i8** %4, align 8
  %14 = bitcast i8* %13 to %struct.btc_coexist*
  store %struct.btc_coexist* %14, %struct.btc_coexist** %7, align 8
  %15 = bitcast [2 x i32]* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %15, i8 0, i64 8, i1 false)
  %16 = load i32*, i32** %6, align 8
  store i32* %16, i32** %10, align 8
  %17 = load i32*, i32** %6, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 4
  store i32* %18, i32** %11, align 8
  %19 = load i32*, i32** %6, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 8
  store i32* %20, i32** %12, align 8
  %21 = load %struct.btc_coexist*, %struct.btc_coexist** %7, align 8
  %22 = load i32, i32* @BT_OP_GET_AFH_MAP_L, align 4
  %23 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0
  %24 = call i32 @halbtc_send_bt_mp_operation(%struct.btc_coexist* %21, i32 %22, i32* %23, i32 2, i32 200)
  store i32 %24, i32* %9, align 4
  %25 = load i32, i32* %9, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %3
  br label %60

28:                                               ; preds = %3
  %29 = load %struct.btc_coexist*, %struct.btc_coexist** %7, align 8
  %30 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = load i32*, i32** %10, align 8
  store i32 %32, i32* %33, align 4
  %34 = load %struct.btc_coexist*, %struct.btc_coexist** %7, align 8
  %35 = load i32, i32* @BT_OP_GET_AFH_MAP_M, align 4
  %36 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0
  %37 = call i32 @halbtc_send_bt_mp_operation(%struct.btc_coexist* %34, i32 %35, i32* %36, i32 2, i32 200)
  store i32 %37, i32* %9, align 4
  %38 = load i32, i32* %9, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %28
  br label %60

41:                                               ; preds = %28
  %42 = load %struct.btc_coexist*, %struct.btc_coexist** %7, align 8
  %43 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load i32*, i32** %11, align 8
  store i32 %45, i32* %46, align 4
  %47 = load %struct.btc_coexist*, %struct.btc_coexist** %7, align 8
  %48 = load i32, i32* @BT_OP_GET_AFH_MAP_H, align 4
  %49 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0
  %50 = call i32 @halbtc_send_bt_mp_operation(%struct.btc_coexist* %47, i32 %48, i32* %49, i32 2, i32 200)
  store i32 %50, i32* %9, align 4
  %51 = load i32, i32* %9, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %54, label %53

53:                                               ; preds = %41
  br label %60

54:                                               ; preds = %41
  %55 = load %struct.btc_coexist*, %struct.btc_coexist** %7, align 8
  %56 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32*, i32** %12, align 8
  store i32 %58, i32* %59, align 4
  br label %60

60:                                               ; preds = %54, %53, %40, %27
  %61 = load i32, i32* %9, align 4
  ret i32 %61
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @halbtc_send_bt_mp_operation(%struct.btc_coexist*, i32, i32*, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
