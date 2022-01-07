; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_main.c_rtw_hw_config_rf_ant_num.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_main.c_rtw_hw_config_rf_ant_num.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtw_dev = type { %struct.rtw_hal }
%struct.rtw_hal = type { i64, i8*, i8*, i32 }

@EFUSE_HW_CAP_IGNORE = common dso_local global i64 0, align 8
@RF_1T1R = common dso_local global i32 0, align 4
@BB_PATH_A = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [37 x i8] c"invalid hw configuration from efuse\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rtw_dev*, i64)* @rtw_hw_config_rf_ant_num to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtw_hw_config_rf_ant_num(%struct.rtw_dev* %0, i64 %1) #0 {
  %3 = alloca %struct.rtw_dev*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.rtw_hal*, align 8
  store %struct.rtw_dev* %0, %struct.rtw_dev** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %7 = getelementptr inbounds %struct.rtw_dev, %struct.rtw_dev* %6, i32 0, i32 0
  store %struct.rtw_hal* %7, %struct.rtw_hal** %5, align 8
  %8 = load i64, i64* %4, align 8
  %9 = load i64, i64* @EFUSE_HW_CAP_IGNORE, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %17, label %11

11:                                               ; preds = %2
  %12 = load i64, i64* %4, align 8
  %13 = load %struct.rtw_hal*, %struct.rtw_hal** %5, align 8
  %14 = getelementptr inbounds %struct.rtw_hal, %struct.rtw_hal* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp sge i64 %12, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %11, %2
  br label %34

18:                                               ; preds = %11
  %19 = load i64, i64* %4, align 8
  switch i64 %19, label %32 [
    i64 1, label %20
  ]

20:                                               ; preds = %18
  %21 = load i32, i32* @RF_1T1R, align 4
  %22 = load %struct.rtw_hal*, %struct.rtw_hal** %5, align 8
  %23 = getelementptr inbounds %struct.rtw_hal, %struct.rtw_hal* %22, i32 0, i32 3
  store i32 %21, i32* %23, align 8
  %24 = load %struct.rtw_hal*, %struct.rtw_hal** %5, align 8
  %25 = getelementptr inbounds %struct.rtw_hal, %struct.rtw_hal* %24, i32 0, i32 0
  store i64 1, i64* %25, align 8
  %26 = load i8*, i8** @BB_PATH_A, align 8
  %27 = load %struct.rtw_hal*, %struct.rtw_hal** %5, align 8
  %28 = getelementptr inbounds %struct.rtw_hal, %struct.rtw_hal* %27, i32 0, i32 2
  store i8* %26, i8** %28, align 8
  %29 = load i8*, i8** @BB_PATH_A, align 8
  %30 = load %struct.rtw_hal*, %struct.rtw_hal** %5, align 8
  %31 = getelementptr inbounds %struct.rtw_hal, %struct.rtw_hal* %30, i32 0, i32 1
  store i8* %29, i8** %31, align 8
  br label %34

32:                                               ; preds = %18
  %33 = call i32 @WARN(i32 1, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  br label %34

34:                                               ; preds = %17, %32, %20
  ret void
}

declare dso_local i32 @WARN(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
