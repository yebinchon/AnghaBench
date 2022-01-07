; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_phy.h_rtw_check_supported_rfe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_phy.h_rtw_check_supported_rfe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtw_dev = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.rtw_rfe_def = type { i32, i32 }

@.str = private unnamed_addr constant [24 x i8] c"rfe %d isn't supported\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rtw_dev*)* @rtw_check_supported_rfe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtw_check_supported_rfe(%struct.rtw_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rtw_dev*, align 8
  %4 = alloca %struct.rtw_rfe_def*, align 8
  store %struct.rtw_dev* %0, %struct.rtw_dev** %3, align 8
  %5 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %6 = call %struct.rtw_rfe_def* @rtw_get_rfe_def(%struct.rtw_dev* %5)
  store %struct.rtw_rfe_def* %6, %struct.rtw_rfe_def** %4, align 8
  %7 = load %struct.rtw_rfe_def*, %struct.rtw_rfe_def** %4, align 8
  %8 = icmp ne %struct.rtw_rfe_def* %7, null
  br i1 %8, label %9, label %19

9:                                                ; preds = %1
  %10 = load %struct.rtw_rfe_def*, %struct.rtw_rfe_def** %4, align 8
  %11 = getelementptr inbounds %struct.rtw_rfe_def, %struct.rtw_rfe_def* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %19

14:                                               ; preds = %9
  %15 = load %struct.rtw_rfe_def*, %struct.rtw_rfe_def** %4, align 8
  %16 = getelementptr inbounds %struct.rtw_rfe_def, %struct.rtw_rfe_def* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %28, label %19

19:                                               ; preds = %14, %9, %1
  %20 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %21 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %22 = getelementptr inbounds %struct.rtw_dev, %struct.rtw_dev* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @rtw_err(%struct.rtw_dev* %20, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %24)
  %26 = load i32, i32* @ENODEV, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %2, align 4
  br label %29

28:                                               ; preds = %14
  store i32 0, i32* %2, align 4
  br label %29

29:                                               ; preds = %28, %19
  %30 = load i32, i32* %2, align 4
  ret i32 %30
}

declare dso_local %struct.rtw_rfe_def* @rtw_get_rfe_def(%struct.rtw_dev*) #1

declare dso_local i32 @rtw_err(%struct.rtw_dev*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
