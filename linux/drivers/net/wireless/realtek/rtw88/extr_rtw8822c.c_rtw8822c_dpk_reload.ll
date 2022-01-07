; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_rtw8822c.c_rtw8822c_dpk_reload.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_rtw8822c.c_rtw8822c_dpk_reload.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtw_dev = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.rtw_dpk_info }
%struct.rtw_dpk_info = type { i32, i64 }

@RF_PATH_A = common dso_local global i32 0, align 4
@RFREG_MASK = common dso_local global i32 0, align 4
@RTW_DBG_RFK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"[DPK] DPK reload for CH%d!!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rtw_dev*)* @rtw8822c_dpk_reload to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtw8822c_dpk_reload(%struct.rtw_dev* %0) #0 {
  %2 = alloca %struct.rtw_dev*, align 8
  %3 = alloca %struct.rtw_dpk_info*, align 8
  %4 = alloca i64, align 8
  store %struct.rtw_dev* %0, %struct.rtw_dev** %2, align 8
  %5 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %6 = getelementptr inbounds %struct.rtw_dev, %struct.rtw_dev* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  store %struct.rtw_dpk_info* %7, %struct.rtw_dpk_info** %3, align 8
  %8 = load %struct.rtw_dpk_info*, %struct.rtw_dpk_info** %3, align 8
  %9 = getelementptr inbounds %struct.rtw_dpk_info, %struct.rtw_dpk_info* %8, i32 0, i32 0
  store i32 0, i32* %9, align 8
  %10 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %11 = load i32, i32* @RF_PATH_A, align 4
  %12 = load i32, i32* @RFREG_MASK, align 4
  %13 = call i32 @rtw_read_rf(%struct.rtw_dev* %10, i32 %11, i32 24, i32 %12)
  %14 = and i32 %13, 255
  %15 = sext i32 %14 to i64
  store i64 %15, i64* %4, align 8
  %16 = load i64, i64* %4, align 8
  %17 = load %struct.rtw_dpk_info*, %struct.rtw_dpk_info** %3, align 8
  %18 = getelementptr inbounds %struct.rtw_dpk_info, %struct.rtw_dpk_info* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = icmp eq i64 %16, %19
  br i1 %20, label %21, label %32

21:                                               ; preds = %1
  %22 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %23 = load i32, i32* @RTW_DBG_RFK, align 4
  %24 = load %struct.rtw_dpk_info*, %struct.rtw_dpk_info** %3, align 8
  %25 = getelementptr inbounds %struct.rtw_dpk_info, %struct.rtw_dpk_info* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = call i32 @rtw_dbg(%struct.rtw_dev* %22, i32 %23, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i64 %26)
  %28 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %29 = call i32 @rtw8822c_dpk_reload_data(%struct.rtw_dev* %28)
  %30 = load %struct.rtw_dpk_info*, %struct.rtw_dpk_info** %3, align 8
  %31 = getelementptr inbounds %struct.rtw_dpk_info, %struct.rtw_dpk_info* %30, i32 0, i32 0
  store i32 1, i32* %31, align 8
  br label %32

32:                                               ; preds = %21, %1
  %33 = load %struct.rtw_dpk_info*, %struct.rtw_dpk_info** %3, align 8
  %34 = getelementptr inbounds %struct.rtw_dpk_info, %struct.rtw_dpk_info* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  ret i32 %35
}

declare dso_local i32 @rtw_read_rf(%struct.rtw_dev*, i32, i32, i32) #1

declare dso_local i32 @rtw_dbg(%struct.rtw_dev*, i32, i8*, i64) #1

declare dso_local i32 @rtw8822c_dpk_reload_data(%struct.rtw_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
