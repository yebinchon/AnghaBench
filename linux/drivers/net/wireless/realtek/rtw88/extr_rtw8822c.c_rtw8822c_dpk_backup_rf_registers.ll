; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_rtw8822c.c_rtw8822c_dpk_backup_rf_registers.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_rtw8822c.c_rtw8822c_dpk_backup_rf_registers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtw_dev = type { i32 }

@DPK_RF_REG_NUM = common dso_local global i64 0, align 8
@RF_PATH_A = common dso_local global i64 0, align 8
@RFREG_MASK = common dso_local global i32 0, align 4
@RF_PATH_B = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rtw_dev*, i64*, [2 x i64]*)* @rtw8822c_dpk_backup_rf_registers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtw8822c_dpk_backup_rf_registers(%struct.rtw_dev* %0, i64* %1, [2 x i64]* %2) #0 {
  %4 = alloca %struct.rtw_dev*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca [2 x i64]*, align 8
  %7 = alloca i64, align 8
  store %struct.rtw_dev* %0, %struct.rtw_dev** %4, align 8
  store i64* %1, i64** %5, align 8
  store [2 x i64]* %2, [2 x i64]** %6, align 8
  store i64 0, i64* %7, align 8
  br label %8

8:                                                ; preds = %39, %3
  %9 = load i64, i64* %7, align 8
  %10 = load i64, i64* @DPK_RF_REG_NUM, align 8
  %11 = icmp ult i64 %9, %10
  br i1 %11, label %12, label %42

12:                                               ; preds = %8
  %13 = load %struct.rtw_dev*, %struct.rtw_dev** %4, align 8
  %14 = load i64, i64* @RF_PATH_A, align 8
  %15 = load i64*, i64** %5, align 8
  %16 = load i64, i64* %7, align 8
  %17 = getelementptr inbounds i64, i64* %15, i64 %16
  %18 = load i64, i64* %17, align 8
  %19 = load i32, i32* @RFREG_MASK, align 4
  %20 = call i64 @rtw_read_rf(%struct.rtw_dev* %13, i64 %14, i64 %18, i32 %19)
  %21 = load [2 x i64]*, [2 x i64]** %6, align 8
  %22 = load i64, i64* %7, align 8
  %23 = getelementptr inbounds [2 x i64], [2 x i64]* %21, i64 %22
  %24 = load i64, i64* @RF_PATH_A, align 8
  %25 = getelementptr inbounds [2 x i64], [2 x i64]* %23, i64 0, i64 %24
  store i64 %20, i64* %25, align 8
  %26 = load %struct.rtw_dev*, %struct.rtw_dev** %4, align 8
  %27 = load i64, i64* @RF_PATH_B, align 8
  %28 = load i64*, i64** %5, align 8
  %29 = load i64, i64* %7, align 8
  %30 = getelementptr inbounds i64, i64* %28, i64 %29
  %31 = load i64, i64* %30, align 8
  %32 = load i32, i32* @RFREG_MASK, align 4
  %33 = call i64 @rtw_read_rf(%struct.rtw_dev* %26, i64 %27, i64 %31, i32 %32)
  %34 = load [2 x i64]*, [2 x i64]** %6, align 8
  %35 = load i64, i64* %7, align 8
  %36 = getelementptr inbounds [2 x i64], [2 x i64]* %34, i64 %35
  %37 = load i64, i64* @RF_PATH_B, align 8
  %38 = getelementptr inbounds [2 x i64], [2 x i64]* %36, i64 0, i64 %37
  store i64 %33, i64* %38, align 8
  br label %39

39:                                               ; preds = %12
  %40 = load i64, i64* %7, align 8
  %41 = add i64 %40, 1
  store i64 %41, i64* %7, align 8
  br label %8

42:                                               ; preds = %8
  ret void
}

declare dso_local i64 @rtw_read_rf(%struct.rtw_dev*, i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
