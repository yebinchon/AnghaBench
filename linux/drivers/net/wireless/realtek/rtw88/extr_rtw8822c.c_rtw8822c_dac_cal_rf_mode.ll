; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_rtw8822c.c_rtw8822c_dac_cal_rf_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_rtw8822c.c_rtw8822c_dac_cal_rf_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtw_dev = type { i32 }

@DACK_SN_8822C = common dso_local global i32 0, align 4
@RF_PATH_A = common dso_local global i32 0, align 4
@RFREG_MASK = common dso_local global i32 0, align 4
@RF_PATH_B = common dso_local global i32 0, align 4
@RTW_DBG_RFK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"[DACK] RF path-A=0x%05x\0A\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"[DACK] RF path-B=0x%05x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rtw_dev*, i32*, i32*)* @rtw8822c_dac_cal_rf_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtw8822c_dac_cal_rf_mode(%struct.rtw_dev* %0, i32* %1, i32* %2) #0 {
  %4 = alloca %struct.rtw_dev*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.rtw_dev* %0, %struct.rtw_dev** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %12 = load i32, i32* @DACK_SN_8822C, align 4
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %7, align 8
  %15 = alloca i32, i64 %13, align 16
  store i64 %13, i64* %8, align 8
  %16 = load i32, i32* @DACK_SN_8822C, align 4
  %17 = zext i32 %16 to i64
  %18 = alloca i32, i64 %17, align 16
  store i64 %17, i64* %9, align 8
  %19 = load %struct.rtw_dev*, %struct.rtw_dev** %4, align 8
  %20 = load i32, i32* @RF_PATH_A, align 4
  %21 = load i32, i32* @RFREG_MASK, align 4
  %22 = call i32 @rtw_read_rf(%struct.rtw_dev* %19, i32 %20, i32 0, i32 %21)
  store i32 %22, i32* %10, align 4
  %23 = load %struct.rtw_dev*, %struct.rtw_dev** %4, align 8
  %24 = load i32, i32* @RF_PATH_B, align 4
  %25 = load i32, i32* @RFREG_MASK, align 4
  %26 = call i32 @rtw_read_rf(%struct.rtw_dev* %23, i32 %24, i32 0, i32 %25)
  store i32 %26, i32* %11, align 4
  %27 = load %struct.rtw_dev*, %struct.rtw_dev** %4, align 8
  %28 = load i32, i32* @RTW_DBG_RFK, align 4
  %29 = load i32, i32* %10, align 4
  %30 = call i32 @rtw_dbg(%struct.rtw_dev* %27, i32 %28, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %29)
  %31 = load %struct.rtw_dev*, %struct.rtw_dev** %4, align 8
  %32 = load i32, i32* @RTW_DBG_RFK, align 4
  %33 = load i32, i32* %11, align 4
  %34 = call i32 @rtw_dbg(%struct.rtw_dev* %31, i32 %32, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %33)
  %35 = load %struct.rtw_dev*, %struct.rtw_dev** %4, align 8
  %36 = call i32 @rtw8822c_dac_cal_iq_sample(%struct.rtw_dev* %35, i32* %15, i32* %18)
  %37 = load %struct.rtw_dev*, %struct.rtw_dev** %4, align 8
  %38 = load i32*, i32** %5, align 8
  %39 = load i32*, i32** %6, align 8
  %40 = call i32 @rtw8822c_dac_cal_iq_search(%struct.rtw_dev* %37, i32* %15, i32* %18, i32* %38, i32* %39)
  %41 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %41)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @rtw_read_rf(%struct.rtw_dev*, i32, i32, i32) #2

declare dso_local i32 @rtw_dbg(%struct.rtw_dev*, i32, i8*, i32) #2

declare dso_local i32 @rtw8822c_dac_cal_iq_sample(%struct.rtw_dev*, i32*, i32*) #2

declare dso_local i32 @rtw8822c_dac_cal_iq_search(%struct.rtw_dev*, i32*, i32*, i32*, i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
