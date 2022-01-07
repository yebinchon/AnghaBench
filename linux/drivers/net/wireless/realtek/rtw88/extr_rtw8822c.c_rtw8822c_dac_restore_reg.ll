; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_rtw8822c.c_rtw8822c_dac_restore_reg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_rtw8822c.c_rtw8822c_dac_restore_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtw_dev = type { i32 }
%struct.rtw_backup_info = type { i64, i64 }

@DACK_REG_8822C = common dso_local global i32 0, align 4
@DACK_PATH_8822C = common dso_local global i64 0, align 8
@DACK_RF_8822C = common dso_local global i64 0, align 8
@RFREG_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rtw_dev*, %struct.rtw_backup_info*, %struct.rtw_backup_info*)* @rtw8822c_dac_restore_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtw8822c_dac_restore_reg(%struct.rtw_dev* %0, %struct.rtw_backup_info* %1, %struct.rtw_backup_info* %2) #0 {
  %4 = alloca %struct.rtw_dev*, align 8
  %5 = alloca %struct.rtw_backup_info*, align 8
  %6 = alloca %struct.rtw_backup_info*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.rtw_dev* %0, %struct.rtw_dev** %4, align 8
  store %struct.rtw_backup_info* %1, %struct.rtw_backup_info** %5, align 8
  store %struct.rtw_backup_info* %2, %struct.rtw_backup_info** %6, align 8
  %11 = load %struct.rtw_dev*, %struct.rtw_dev** %4, align 8
  %12 = load %struct.rtw_backup_info*, %struct.rtw_backup_info** %5, align 8
  %13 = load i32, i32* @DACK_REG_8822C, align 4
  %14 = call i32 @rtw_restore_reg(%struct.rtw_dev* %11, %struct.rtw_backup_info* %12, i32 %13)
  store i64 0, i64* %7, align 8
  br label %15

15:                                               ; preds = %53, %3
  %16 = load i64, i64* %7, align 8
  %17 = load i64, i64* @DACK_PATH_8822C, align 8
  %18 = icmp ult i64 %16, %17
  br i1 %18, label %19, label %56

19:                                               ; preds = %15
  store i64 0, i64* %8, align 8
  br label %20

20:                                               ; preds = %49, %19
  %21 = load i64, i64* %8, align 8
  %22 = load i64, i64* @DACK_RF_8822C, align 8
  %23 = icmp ult i64 %21, %22
  br i1 %23, label %24, label %52

24:                                               ; preds = %20
  %25 = load %struct.rtw_backup_info*, %struct.rtw_backup_info** %6, align 8
  %26 = load i64, i64* %7, align 8
  %27 = load i64, i64* %8, align 8
  %28 = mul i64 %26, %27
  %29 = load i64, i64* %8, align 8
  %30 = add i64 %28, %29
  %31 = getelementptr inbounds %struct.rtw_backup_info, %struct.rtw_backup_info* %25, i64 %30
  %32 = getelementptr inbounds %struct.rtw_backup_info, %struct.rtw_backup_info* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  store i64 %33, i64* %9, align 8
  %34 = load %struct.rtw_backup_info*, %struct.rtw_backup_info** %6, align 8
  %35 = load i64, i64* %7, align 8
  %36 = load i64, i64* %8, align 8
  %37 = mul i64 %35, %36
  %38 = load i64, i64* %8, align 8
  %39 = add i64 %37, %38
  %40 = getelementptr inbounds %struct.rtw_backup_info, %struct.rtw_backup_info* %34, i64 %39
  %41 = getelementptr inbounds %struct.rtw_backup_info, %struct.rtw_backup_info* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  store i64 %42, i64* %10, align 8
  %43 = load %struct.rtw_dev*, %struct.rtw_dev** %4, align 8
  %44 = load i64, i64* %7, align 8
  %45 = load i64, i64* %10, align 8
  %46 = load i32, i32* @RFREG_MASK, align 4
  %47 = load i64, i64* %9, align 8
  %48 = call i32 @rtw_write_rf(%struct.rtw_dev* %43, i64 %44, i64 %45, i32 %46, i64 %47)
  br label %49

49:                                               ; preds = %24
  %50 = load i64, i64* %8, align 8
  %51 = add i64 %50, 1
  store i64 %51, i64* %8, align 8
  br label %20

52:                                               ; preds = %20
  br label %53

53:                                               ; preds = %52
  %54 = load i64, i64* %7, align 8
  %55 = add i64 %54, 1
  store i64 %55, i64* %7, align 8
  br label %15

56:                                               ; preds = %15
  ret void
}

declare dso_local i32 @rtw_restore_reg(%struct.rtw_dev*, %struct.rtw_backup_info*, i32) #1

declare dso_local i32 @rtw_write_rf(%struct.rtw_dev*, i64, i64, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
