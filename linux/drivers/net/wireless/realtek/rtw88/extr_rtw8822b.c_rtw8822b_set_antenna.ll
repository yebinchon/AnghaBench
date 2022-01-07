; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_rtw8822b.c_rtw8822b_set_antenna.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_rtw8822b.c_rtw8822b_set_antenna.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtw_dev = type { %struct.rtw_hal }
%struct.rtw_hal = type { i8*, i8* }

@RTW_DBG_PHY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"config RF path, tx=0x%x rx=0x%x\0A\00", align 1
@.str.1 = private unnamed_addr constant [43 x i8] c"unsupport tx path, set to default path ab\0A\00", align 1
@BB_PATH_AB = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [43 x i8] c"unsupport rx path, set to default path ab\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rtw_dev*, i8*, i8*)* @rtw8822b_set_antenna to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtw8822b_set_antenna(%struct.rtw_dev* %0, i8* %1, i8* %2) #0 {
  %4 = alloca %struct.rtw_dev*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.rtw_hal*, align 8
  store %struct.rtw_dev* %0, %struct.rtw_dev** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %8 = load %struct.rtw_dev*, %struct.rtw_dev** %4, align 8
  %9 = getelementptr inbounds %struct.rtw_dev, %struct.rtw_dev* %8, i32 0, i32 0
  store %struct.rtw_hal* %9, %struct.rtw_hal** %7, align 8
  %10 = load %struct.rtw_dev*, %struct.rtw_dev** %4, align 8
  %11 = load i32, i32* @RTW_DBG_PHY, align 4
  %12 = load i8*, i8** %5, align 8
  %13 = load i8*, i8** %6, align 8
  %14 = call i32 @rtw_dbg(%struct.rtw_dev* %10, i32 %11, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i8* %12, i8* %13)
  %15 = load i8*, i8** %5, align 8
  %16 = call i32 @rtw8822b_check_rf_path(i8* %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %22, label %18

18:                                               ; preds = %3
  %19 = load %struct.rtw_dev*, %struct.rtw_dev** %4, align 8
  %20 = call i32 @rtw_info(%struct.rtw_dev* %19, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0))
  %21 = load i8*, i8** @BB_PATH_AB, align 8
  store i8* %21, i8** %5, align 8
  br label %22

22:                                               ; preds = %18, %3
  %23 = load i8*, i8** %6, align 8
  %24 = call i32 @rtw8822b_check_rf_path(i8* %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %30, label %26

26:                                               ; preds = %22
  %27 = load %struct.rtw_dev*, %struct.rtw_dev** %4, align 8
  %28 = call i32 @rtw_info(%struct.rtw_dev* %27, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0))
  %29 = load i8*, i8** @BB_PATH_AB, align 8
  store i8* %29, i8** %6, align 8
  br label %30

30:                                               ; preds = %26, %22
  %31 = load i8*, i8** %5, align 8
  %32 = load %struct.rtw_hal*, %struct.rtw_hal** %7, align 8
  %33 = getelementptr inbounds %struct.rtw_hal, %struct.rtw_hal* %32, i32 0, i32 1
  store i8* %31, i8** %33, align 8
  %34 = load i8*, i8** %6, align 8
  %35 = load %struct.rtw_hal*, %struct.rtw_hal** %7, align 8
  %36 = getelementptr inbounds %struct.rtw_hal, %struct.rtw_hal* %35, i32 0, i32 0
  store i8* %34, i8** %36, align 8
  %37 = load %struct.rtw_dev*, %struct.rtw_dev** %4, align 8
  %38 = load i8*, i8** %5, align 8
  %39 = load i8*, i8** %6, align 8
  %40 = call i32 @rtw8822b_config_trx_mode(%struct.rtw_dev* %37, i8* %38, i8* %39, i32 0)
  ret void
}

declare dso_local i32 @rtw_dbg(%struct.rtw_dev*, i32, i8*, i8*, i8*) #1

declare dso_local i32 @rtw8822b_check_rf_path(i8*) #1

declare dso_local i32 @rtw_info(%struct.rtw_dev*, i8*) #1

declare dso_local i32 @rtw8822b_config_trx_mode(%struct.rtw_dev*, i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
