; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_phy.h_rtw_get_rfe_def.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_phy.h_rtw_get_rfe_def.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtw_rfe_def = type { i32 }
%struct.rtw_dev = type { %struct.rtw_efuse, %struct.rtw_chip_info* }
%struct.rtw_efuse = type { i64 }
%struct.rtw_chip_info = type { i64, %struct.rtw_rfe_def* }

@RTW_DBG_PHY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"use rfe_def[%d]\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.rtw_rfe_def* (%struct.rtw_dev*)* @rtw_get_rfe_def to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.rtw_rfe_def* @rtw_get_rfe_def(%struct.rtw_dev* %0) #0 {
  %2 = alloca %struct.rtw_rfe_def*, align 8
  %3 = alloca %struct.rtw_dev*, align 8
  %4 = alloca %struct.rtw_chip_info*, align 8
  %5 = alloca %struct.rtw_efuse*, align 8
  %6 = alloca %struct.rtw_rfe_def*, align 8
  store %struct.rtw_dev* %0, %struct.rtw_dev** %3, align 8
  %7 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %8 = getelementptr inbounds %struct.rtw_dev, %struct.rtw_dev* %7, i32 0, i32 1
  %9 = load %struct.rtw_chip_info*, %struct.rtw_chip_info** %8, align 8
  store %struct.rtw_chip_info* %9, %struct.rtw_chip_info** %4, align 8
  %10 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %11 = getelementptr inbounds %struct.rtw_dev, %struct.rtw_dev* %10, i32 0, i32 0
  store %struct.rtw_efuse* %11, %struct.rtw_efuse** %5, align 8
  store %struct.rtw_rfe_def* null, %struct.rtw_rfe_def** %6, align 8
  %12 = load %struct.rtw_chip_info*, %struct.rtw_chip_info** %4, align 8
  %13 = getelementptr inbounds %struct.rtw_chip_info, %struct.rtw_chip_info* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %1
  store %struct.rtw_rfe_def* null, %struct.rtw_rfe_def** %2, align 8
  br label %41

17:                                               ; preds = %1
  %18 = load %struct.rtw_efuse*, %struct.rtw_efuse** %5, align 8
  %19 = getelementptr inbounds %struct.rtw_efuse, %struct.rtw_efuse* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load %struct.rtw_chip_info*, %struct.rtw_chip_info** %4, align 8
  %22 = getelementptr inbounds %struct.rtw_chip_info, %struct.rtw_chip_info* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp slt i64 %20, %23
  br i1 %24, label %25, label %33

25:                                               ; preds = %17
  %26 = load %struct.rtw_chip_info*, %struct.rtw_chip_info** %4, align 8
  %27 = getelementptr inbounds %struct.rtw_chip_info, %struct.rtw_chip_info* %26, i32 0, i32 1
  %28 = load %struct.rtw_rfe_def*, %struct.rtw_rfe_def** %27, align 8
  %29 = load %struct.rtw_efuse*, %struct.rtw_efuse** %5, align 8
  %30 = getelementptr inbounds %struct.rtw_efuse, %struct.rtw_efuse* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = getelementptr inbounds %struct.rtw_rfe_def, %struct.rtw_rfe_def* %28, i64 %31
  store %struct.rtw_rfe_def* %32, %struct.rtw_rfe_def** %6, align 8
  br label %33

33:                                               ; preds = %25, %17
  %34 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %35 = load i32, i32* @RTW_DBG_PHY, align 4
  %36 = load %struct.rtw_efuse*, %struct.rtw_efuse** %5, align 8
  %37 = getelementptr inbounds %struct.rtw_efuse, %struct.rtw_efuse* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = call i32 @rtw_dbg(%struct.rtw_dev* %34, i32 %35, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i64 %38)
  %40 = load %struct.rtw_rfe_def*, %struct.rtw_rfe_def** %6, align 8
  store %struct.rtw_rfe_def* %40, %struct.rtw_rfe_def** %2, align 8
  br label %41

41:                                               ; preds = %33, %16
  %42 = load %struct.rtw_rfe_def*, %struct.rtw_rfe_def** %2, align 8
  ret %struct.rtw_rfe_def* %42
}

declare dso_local i32 @rtw_dbg(%struct.rtw_dev*, i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
