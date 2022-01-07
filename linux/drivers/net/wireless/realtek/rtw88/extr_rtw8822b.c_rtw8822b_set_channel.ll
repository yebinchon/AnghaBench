; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_rtw8822b.c_rtw8822b_set_channel.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_rtw8822b.c_rtw8822b_set_channel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtw8822b_rfe_info = type { i32 (%struct.rtw_dev*, i32)* }
%struct.rtw_dev = type { %struct.rtw_efuse }
%struct.rtw_efuse = type { i64 }

@rtw8822b_rfe_info = common dso_local global %struct.rtw8822b_rfe_info* null, align 8
@.str = private unnamed_addr constant [34 x i8] c"rfe_option %d is out of boundary\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rtw_dev*, i32, i32, i32)* @rtw8822b_set_channel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtw8822b_set_channel(%struct.rtw_dev* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.rtw_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.rtw_efuse*, align 8
  %10 = alloca %struct.rtw8822b_rfe_info*, align 8
  store %struct.rtw_dev* %0, %struct.rtw_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = load %struct.rtw_dev*, %struct.rtw_dev** %5, align 8
  %12 = getelementptr inbounds %struct.rtw_dev, %struct.rtw_dev* %11, i32 0, i32 0
  store %struct.rtw_efuse* %12, %struct.rtw_efuse** %9, align 8
  %13 = load %struct.rtw_efuse*, %struct.rtw_efuse** %9, align 8
  %14 = getelementptr inbounds %struct.rtw_efuse, %struct.rtw_efuse* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load %struct.rtw8822b_rfe_info*, %struct.rtw8822b_rfe_info** @rtw8822b_rfe_info, align 8
  %17 = call i64 @ARRAY_SIZE(%struct.rtw8822b_rfe_info* %16)
  %18 = icmp uge i64 %15, %17
  %19 = zext i1 %18 to i32
  %20 = load %struct.rtw_efuse*, %struct.rtw_efuse** %9, align 8
  %21 = getelementptr inbounds %struct.rtw_efuse, %struct.rtw_efuse* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = call i64 @WARN(i32 %19, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i64 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %4
  br label %62

26:                                               ; preds = %4
  %27 = load %struct.rtw8822b_rfe_info*, %struct.rtw8822b_rfe_info** @rtw8822b_rfe_info, align 8
  %28 = load %struct.rtw_efuse*, %struct.rtw_efuse** %9, align 8
  %29 = getelementptr inbounds %struct.rtw_efuse, %struct.rtw_efuse* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = getelementptr inbounds %struct.rtw8822b_rfe_info, %struct.rtw8822b_rfe_info* %27, i64 %30
  store %struct.rtw8822b_rfe_info* %31, %struct.rtw8822b_rfe_info** %10, align 8
  %32 = load %struct.rtw_dev*, %struct.rtw_dev** %5, align 8
  %33 = load i32, i32* %6, align 4
  %34 = load i32, i32* %7, align 4
  %35 = load i32, i32* %8, align 4
  %36 = call i32 @rtw8822b_set_channel_bb(%struct.rtw_dev* %32, i32 %33, i32 %34, i32 %35)
  %37 = load %struct.rtw_dev*, %struct.rtw_dev** %5, align 8
  %38 = load i32, i32* %6, align 4
  %39 = load i32, i32* %7, align 4
  %40 = load i32, i32* %8, align 4
  %41 = call i32 @rtw_set_channel_mac(%struct.rtw_dev* %37, i32 %38, i32 %39, i32 %40)
  %42 = load %struct.rtw_dev*, %struct.rtw_dev** %5, align 8
  %43 = load i32, i32* %6, align 4
  %44 = load i32, i32* %7, align 4
  %45 = call i32 @rtw8822b_set_channel_rf(%struct.rtw_dev* %42, i32 %43, i32 %44)
  %46 = load %struct.rtw_dev*, %struct.rtw_dev** %5, align 8
  %47 = load i32, i32* %7, align 4
  %48 = call i32 @rtw8822b_set_channel_rxdfir(%struct.rtw_dev* %46, i32 %47)
  %49 = load %struct.rtw_dev*, %struct.rtw_dev** %5, align 8
  %50 = call i32 @rtw8822b_toggle_igi(%struct.rtw_dev* %49)
  %51 = load %struct.rtw_dev*, %struct.rtw_dev** %5, align 8
  %52 = load i32, i32* %6, align 4
  %53 = load i32, i32* %7, align 4
  %54 = load %struct.rtw8822b_rfe_info*, %struct.rtw8822b_rfe_info** %10, align 8
  %55 = call i32 @rtw8822b_set_channel_cca(%struct.rtw_dev* %51, i32 %52, i32 %53, %struct.rtw8822b_rfe_info* %54)
  %56 = load %struct.rtw8822b_rfe_info*, %struct.rtw8822b_rfe_info** %10, align 8
  %57 = getelementptr inbounds %struct.rtw8822b_rfe_info, %struct.rtw8822b_rfe_info* %56, i32 0, i32 0
  %58 = load i32 (%struct.rtw_dev*, i32)*, i32 (%struct.rtw_dev*, i32)** %57, align 8
  %59 = load %struct.rtw_dev*, %struct.rtw_dev** %5, align 8
  %60 = load i32, i32* %6, align 4
  %61 = call i32 %58(%struct.rtw_dev* %59, i32 %60)
  br label %62

62:                                               ; preds = %26, %25
  ret void
}

declare dso_local i64 @WARN(i32, i8*, i64) #1

declare dso_local i64 @ARRAY_SIZE(%struct.rtw8822b_rfe_info*) #1

declare dso_local i32 @rtw8822b_set_channel_bb(%struct.rtw_dev*, i32, i32, i32) #1

declare dso_local i32 @rtw_set_channel_mac(%struct.rtw_dev*, i32, i32, i32) #1

declare dso_local i32 @rtw8822b_set_channel_rf(%struct.rtw_dev*, i32, i32) #1

declare dso_local i32 @rtw8822b_set_channel_rxdfir(%struct.rtw_dev*, i32) #1

declare dso_local i32 @rtw8822b_toggle_igi(%struct.rtw_dev*) #1

declare dso_local i32 @rtw8822b_set_channel_cca(%struct.rtw_dev*, i32, i32, %struct.rtw8822b_rfe_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
