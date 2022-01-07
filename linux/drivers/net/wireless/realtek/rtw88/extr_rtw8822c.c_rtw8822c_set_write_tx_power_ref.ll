; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_rtw8822c.c_rtw8822c_set_write_tx_power_ref.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_rtw8822c.c_rtw8822c_set_write_tx_power_ref.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtw_dev = type { %struct.rtw_hal }
%struct.rtw_hal = type { i64 }

@__const.rtw8822c_set_write_tx_power_ref.txref_cck = private unnamed_addr constant [2 x i32] [i32 6304, i32 16800], align 4
@__const.rtw8822c_set_write_tx_power_ref.txref_ofdm = private unnamed_addr constant [2 x i32] [i32 6376, i32 16872], align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rtw_dev*, i64*, i64*)* @rtw8822c_set_write_tx_power_ref to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtw8822c_set_write_tx_power_ref(%struct.rtw_dev* %0, i64* %1, i64* %2) #0 {
  %4 = alloca %struct.rtw_dev*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca %struct.rtw_hal*, align 8
  %8 = alloca [2 x i32], align 4
  %9 = alloca [2 x i32], align 4
  %10 = alloca i64, align 8
  store %struct.rtw_dev* %0, %struct.rtw_dev** %4, align 8
  store i64* %1, i64** %5, align 8
  store i64* %2, i64** %6, align 8
  %11 = load %struct.rtw_dev*, %struct.rtw_dev** %4, align 8
  %12 = getelementptr inbounds %struct.rtw_dev, %struct.rtw_dev* %11, i32 0, i32 0
  store %struct.rtw_hal* %12, %struct.rtw_hal** %7, align 8
  %13 = bitcast [2 x i32]* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %13, i8* align 4 bitcast ([2 x i32]* @__const.rtw8822c_set_write_tx_power_ref.txref_cck to i8*), i64 8, i1 false)
  %14 = bitcast [2 x i32]* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %14, i8* align 4 bitcast ([2 x i32]* @__const.rtw8822c_set_write_tx_power_ref.txref_ofdm to i8*), i64 8, i1 false)
  store i64 0, i64* %10, align 8
  br label %15

15:                                               ; preds = %34, %3
  %16 = load i64, i64* %10, align 8
  %17 = load %struct.rtw_hal*, %struct.rtw_hal** %7, align 8
  %18 = getelementptr inbounds %struct.rtw_hal, %struct.rtw_hal* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ult i64 %16, %19
  br i1 %20, label %21, label %37

21:                                               ; preds = %15
  %22 = load %struct.rtw_dev*, %struct.rtw_dev** %4, align 8
  %23 = call i32 @BIT(i32 15)
  %24 = call i32 @rtw_write32_mask(%struct.rtw_dev* %22, i32 7312, i32 %23, i64 0)
  %25 = load %struct.rtw_dev*, %struct.rtw_dev** %4, align 8
  %26 = load i64, i64* %10, align 8
  %27 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 %26
  %28 = load i32, i32* %27, align 4
  %29 = load i64*, i64** %5, align 8
  %30 = load i64, i64* %10, align 8
  %31 = getelementptr inbounds i64, i64* %29, i64 %30
  %32 = load i64, i64* %31, align 8
  %33 = call i32 @rtw_write32_mask(%struct.rtw_dev* %25, i32 %28, i32 8323072, i64 %32)
  br label %34

34:                                               ; preds = %21
  %35 = load i64, i64* %10, align 8
  %36 = add i64 %35, 1
  store i64 %36, i64* %10, align 8
  br label %15

37:                                               ; preds = %15
  store i64 0, i64* %10, align 8
  br label %38

38:                                               ; preds = %57, %37
  %39 = load i64, i64* %10, align 8
  %40 = load %struct.rtw_hal*, %struct.rtw_hal** %7, align 8
  %41 = getelementptr inbounds %struct.rtw_hal, %struct.rtw_hal* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp ult i64 %39, %42
  br i1 %43, label %44, label %60

44:                                               ; preds = %38
  %45 = load %struct.rtw_dev*, %struct.rtw_dev** %4, align 8
  %46 = call i32 @BIT(i32 15)
  %47 = call i32 @rtw_write32_mask(%struct.rtw_dev* %45, i32 7312, i32 %46, i64 0)
  %48 = load %struct.rtw_dev*, %struct.rtw_dev** %4, align 8
  %49 = load i64, i64* %10, align 8
  %50 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = load i64*, i64** %6, align 8
  %53 = load i64, i64* %10, align 8
  %54 = getelementptr inbounds i64, i64* %52, i64 %53
  %55 = load i64, i64* %54, align 8
  %56 = call i32 @rtw_write32_mask(%struct.rtw_dev* %48, i32 %51, i32 130048, i64 %55)
  br label %57

57:                                               ; preds = %44
  %58 = load i64, i64* %10, align 8
  %59 = add i64 %58, 1
  store i64 %59, i64* %10, align 8
  br label %38

60:                                               ; preds = %38
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @rtw_write32_mask(%struct.rtw_dev*, i32, i32, i64) #2

declare dso_local i32 @BIT(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
