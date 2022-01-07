; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_rtw8822c.c_rtw8822c_dpk_calibrate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_rtw8822c.c_rtw8822c_dpk_calibrate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtw_dev = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.rtw_dpk_info }
%struct.rtw_dpk_info = type { i32, i64* }

@RTW_DBG_RFK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"[DPK] s%d dpk start\0A\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"failed to do dpk calibration\0A\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"[DPK] s%d dpk finish\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rtw_dev*, i64)* @rtw8822c_dpk_calibrate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtw8822c_dpk_calibrate(%struct.rtw_dev* %0, i64 %1) #0 {
  %3 = alloca %struct.rtw_dev*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.rtw_dpk_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.rtw_dev* %0, %struct.rtw_dev** %3, align 8
  store i64 %1, i64* %4, align 8
  %8 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %9 = getelementptr inbounds %struct.rtw_dev, %struct.rtw_dev* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  store %struct.rtw_dpk_info* %10, %struct.rtw_dpk_info** %5, align 8
  %11 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %12 = load i32, i32* @RTW_DBG_RFK, align 4
  %13 = load i64, i64* %4, align 8
  %14 = call i32 @rtw_dbg(%struct.rtw_dev* %11, i32 %12, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i64 %13)
  %15 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %16 = load i64, i64* %4, align 8
  %17 = call i32 @rtw8822c_dpk_gainloss(%struct.rtw_dev* %15, i64 %16)
  store i32 %17, i32* %6, align 4
  %18 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %19 = load i32, i32* %6, align 4
  %20 = load i64, i64* %4, align 8
  %21 = call i64 @rtw8822c_dpk_by_path(%struct.rtw_dev* %18, i32 %19, i64 %20)
  store i64 %21, i64* %7, align 8
  %22 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %23 = load i64, i64* %7, align 8
  %24 = load i32, i32* %6, align 4
  %25 = load i64, i64* %4, align 8
  %26 = call i32 @rtw8822c_dpk_check_pass(%struct.rtw_dev* %22, i64 %23, i32 %24, i64 %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %2
  %29 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %30 = call i32 @rtw_err(%struct.rtw_dev* %29, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  br label %31

31:                                               ; preds = %28, %2
  %32 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %33 = load i32, i32* @RTW_DBG_RFK, align 4
  %34 = load i64, i64* %4, align 8
  %35 = call i32 @rtw_dbg(%struct.rtw_dev* %32, i32 %33, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i64 %34)
  %36 = load %struct.rtw_dpk_info*, %struct.rtw_dpk_info** %5, align 8
  %37 = getelementptr inbounds %struct.rtw_dpk_info, %struct.rtw_dpk_info* %36, i32 0, i32 1
  %38 = load i64*, i64** %37, align 8
  %39 = load i64, i64* %4, align 8
  %40 = getelementptr inbounds i64, i64* %38, i64 %39
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %49

43:                                               ; preds = %31
  %44 = load i64, i64* %4, align 8
  %45 = load %struct.rtw_dpk_info*, %struct.rtw_dpk_info** %5, align 8
  %46 = getelementptr inbounds %struct.rtw_dpk_info, %struct.rtw_dpk_info* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @set_bit(i64 %44, i32 %47)
  br label %49

49:                                               ; preds = %43, %31
  ret void
}

declare dso_local i32 @rtw_dbg(%struct.rtw_dev*, i32, i8*, i64) #1

declare dso_local i32 @rtw8822c_dpk_gainloss(%struct.rtw_dev*, i64) #1

declare dso_local i64 @rtw8822c_dpk_by_path(%struct.rtw_dev*, i32, i64) #1

declare dso_local i32 @rtw8822c_dpk_check_pass(%struct.rtw_dev*, i64, i32, i64) #1

declare dso_local i32 @rtw_err(%struct.rtw_dev*, i8*) #1

declare dso_local i32 @set_bit(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
