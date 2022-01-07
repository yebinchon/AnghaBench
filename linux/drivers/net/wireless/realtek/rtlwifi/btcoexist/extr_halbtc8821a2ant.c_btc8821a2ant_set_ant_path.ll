; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/btcoexist/extr_halbtc8821a2ant.c_btc8821a2ant_set_ant_path.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/btcoexist/extr_halbtc8821a2ant.c_btc8821a2ant_set_ant_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btc_coexist = type { i32 (%struct.btc_coexist*, i32)*, i32 (%struct.btc_coexist*, i32, i32, i32)*, i32 (%struct.btc_coexist*, i32, i32, i32*)*, i32 (%struct.btc_coexist*, i32, i32)*, %struct.btc_board_info }
%struct.btc_board_info = type { i64 }

@BIT23 = common dso_local global i32 0, align 4
@BIT24 = common dso_local global i32 0, align 4
@BTC_ANTENNA_AT_MAIN_PORT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.btc_coexist*, i32, i32, i32)* @btc8821a2ant_set_ant_path to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @btc8821a2ant_set_ant_path(%struct.btc_coexist* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.btc_coexist*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.btc_board_info*, align 8
  %10 = alloca i32, align 4
  %11 = alloca [2 x i32], align 4
  store %struct.btc_coexist* %0, %struct.btc_coexist** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %12 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %13 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %12, i32 0, i32 4
  store %struct.btc_board_info* %13, %struct.btc_board_info** %9, align 8
  store i32 0, i32* %10, align 4
  %14 = bitcast [2 x i32]* %11 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %14, i8 0, i64 8, i1 false)
  %15 = load i32, i32* %7, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %65

17:                                               ; preds = %4
  %18 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %19 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %18, i32 0, i32 0
  %20 = load i32 (%struct.btc_coexist*, i32)*, i32 (%struct.btc_coexist*, i32)** %19, align 8
  %21 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %22 = call i32 %20(%struct.btc_coexist* %21, i32 76)
  store i32 %22, i32* %10, align 4
  %23 = load i32, i32* @BIT23, align 4
  %24 = xor i32 %23, -1
  %25 = load i32, i32* %10, align 4
  %26 = and i32 %25, %24
  store i32 %26, i32* %10, align 4
  %27 = load i32, i32* @BIT24, align 4
  %28 = load i32, i32* %10, align 4
  %29 = or i32 %28, %27
  store i32 %29, i32* %10, align 4
  %30 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %31 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %30, i32 0, i32 3
  %32 = load i32 (%struct.btc_coexist*, i32, i32)*, i32 (%struct.btc_coexist*, i32, i32)** %31, align 8
  %33 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %34 = load i32, i32* %10, align 4
  %35 = call i32 %32(%struct.btc_coexist* %33, i32 76, i32 %34)
  %36 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %37 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %36, i32 0, i32 3
  %38 = load i32 (%struct.btc_coexist*, i32, i32)*, i32 (%struct.btc_coexist*, i32, i32)** %37, align 8
  %39 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %40 = call i32 %38(%struct.btc_coexist* %39, i32 2420, i32 1023)
  %41 = load %struct.btc_board_info*, %struct.btc_board_info** %9, align 8
  %42 = getelementptr inbounds %struct.btc_board_info, %struct.btc_board_info* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @BTC_ANTENNA_AT_MAIN_PORT, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %55

46:                                               ; preds = %17
  %47 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 0
  store i32 1, i32* %47, align 4
  %48 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 1
  store i32 1, i32* %48, align 4
  %49 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %50 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %49, i32 0, i32 2
  %51 = load i32 (%struct.btc_coexist*, i32, i32, i32*)*, i32 (%struct.btc_coexist*, i32, i32, i32*)** %50, align 8
  %52 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %53 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 0
  %54 = call i32 %51(%struct.btc_coexist* %52, i32 101, i32 2, i32* %53)
  br label %64

55:                                               ; preds = %17
  %56 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 0
  store i32 0, i32* %56, align 4
  %57 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 1
  store i32 1, i32* %57, align 4
  %58 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %59 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %58, i32 0, i32 2
  %60 = load i32 (%struct.btc_coexist*, i32, i32, i32*)*, i32 (%struct.btc_coexist*, i32, i32, i32*)** %59, align 8
  %61 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %62 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 0
  %63 = call i32 %60(%struct.btc_coexist* %61, i32 101, i32 2, i32* %62)
  br label %64

64:                                               ; preds = %55, %46
  br label %65

65:                                               ; preds = %64, %4
  %66 = load i32, i32* %6, align 4
  switch i32 %66, label %79 [
    i32 128, label %67
    i32 129, label %73
  ]

67:                                               ; preds = %65
  %68 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %69 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %68, i32 0, i32 1
  %70 = load i32 (%struct.btc_coexist*, i32, i32, i32)*, i32 (%struct.btc_coexist*, i32, i32, i32)** %69, align 8
  %71 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %72 = call i32 %70(%struct.btc_coexist* %71, i32 3255, i32 48, i32 1)
  br label %79

73:                                               ; preds = %65
  %74 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %75 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %74, i32 0, i32 1
  %76 = load i32 (%struct.btc_coexist*, i32, i32, i32)*, i32 (%struct.btc_coexist*, i32, i32, i32)** %75, align 8
  %77 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %78 = call i32 %76(%struct.btc_coexist* %77, i32 3255, i32 48, i32 2)
  br label %79

79:                                               ; preds = %65, %73, %67
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
