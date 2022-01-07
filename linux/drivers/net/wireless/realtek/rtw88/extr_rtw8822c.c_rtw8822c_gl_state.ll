; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_rtw8822c.c_rtw8822c_gl_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_rtw8822c.c_rtw8822c_gl_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtw_dev = type { i32 }
%struct.rtw8822c_dpk_data = type { i32, i64, i32 }

@__const.rtw8822c_gl_state.txbb_bound = private unnamed_addr constant [2 x i32] [i32 31, i32 0], align 4
@RTW_DPK_AGC_OUT = common dso_local global i32 0, align 4
@RF_TX_GAIN = common dso_local global i32 0, align 4
@BIT_GAIN_TXBB = common dso_local global i32 0, align 4
@RTW_DPK_GAIN_CHECK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rtw_dev*, %struct.rtw8822c_dpk_data*, i32)* @rtw8822c_gl_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtw8822c_gl_state(%struct.rtw_dev* %0, %struct.rtw8822c_dpk_data* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.rtw_dev*, align 8
  %6 = alloca %struct.rtw8822c_dpk_data*, align 8
  %7 = alloca i32, align 4
  %8 = alloca [2 x i32], align 4
  store %struct.rtw_dev* %0, %struct.rtw_dev** %5, align 8
  store %struct.rtw8822c_dpk_data* %1, %struct.rtw8822c_dpk_data** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = bitcast [2 x i32]* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %9, i8* align 4 bitcast ([2 x i32]* @__const.rtw8822c_gl_state.txbb_bound to i8*), i64 8, i1 false)
  %10 = load %struct.rtw8822c_dpk_data*, %struct.rtw8822c_dpk_data** %6, align 8
  %11 = getelementptr inbounds %struct.rtw8822c_dpk_data, %struct.rtw8822c_dpk_data* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* %7, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 %14
  %16 = load i32, i32* %15, align 4
  %17 = icmp eq i32 %12, %16
  br i1 %17, label %18, label %20

18:                                               ; preds = %3
  %19 = load i32, i32* @RTW_DPK_AGC_OUT, align 4
  store i32 %19, i32* %4, align 4
  br label %47

20:                                               ; preds = %3
  %21 = load i32, i32* %7, align 4
  %22 = icmp eq i32 %21, 1
  br i1 %22, label %23, label %28

23:                                               ; preds = %20
  %24 = load %struct.rtw8822c_dpk_data*, %struct.rtw8822c_dpk_data** %6, align 8
  %25 = getelementptr inbounds %struct.rtw8822c_dpk_data, %struct.rtw8822c_dpk_data* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = sub nsw i32 %26, 2
  store i32 %27, i32* %25, align 8
  br label %33

28:                                               ; preds = %20
  %29 = load %struct.rtw8822c_dpk_data*, %struct.rtw8822c_dpk_data** %6, align 8
  %30 = getelementptr inbounds %struct.rtw8822c_dpk_data, %struct.rtw8822c_dpk_data* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = add nsw i32 %31, 3
  store i32 %32, i32* %30, align 8
  br label %33

33:                                               ; preds = %28, %23
  %34 = load %struct.rtw_dev*, %struct.rtw_dev** %5, align 8
  %35 = load %struct.rtw8822c_dpk_data*, %struct.rtw8822c_dpk_data** %6, align 8
  %36 = getelementptr inbounds %struct.rtw8822c_dpk_data, %struct.rtw8822c_dpk_data* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @RF_TX_GAIN, align 4
  %39 = load i32, i32* @BIT_GAIN_TXBB, align 4
  %40 = load %struct.rtw8822c_dpk_data*, %struct.rtw8822c_dpk_data** %6, align 8
  %41 = getelementptr inbounds %struct.rtw8822c_dpk_data, %struct.rtw8822c_dpk_data* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @rtw_write_rf(%struct.rtw_dev* %34, i32 %37, i32 %38, i32 %39, i32 %42)
  %44 = load %struct.rtw8822c_dpk_data*, %struct.rtw8822c_dpk_data** %6, align 8
  %45 = getelementptr inbounds %struct.rtw8822c_dpk_data, %struct.rtw8822c_dpk_data* %44, i32 0, i32 1
  store i64 0, i64* %45, align 8
  %46 = load i32, i32* @RTW_DPK_GAIN_CHECK, align 4
  store i32 %46, i32* %4, align 4
  br label %47

47:                                               ; preds = %33, %18
  %48 = load i32, i32* %4, align 4
  ret i32 %48
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @rtw_write_rf(%struct.rtw_dev*, i32, i32, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
