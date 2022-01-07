; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_coex.c_rtw_coex_switchband_notify.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_coex.c_rtw_coex_switchband_notify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtw_dev = type { %struct.rtw_coex }
%struct.rtw_coex = type { i64 }

@COEX_SWITCH_TO_5G = common dso_local global i64 0, align 8
@COEX_RSN_5GSWITCHBAND = common dso_local global i32 0, align 4
@COEX_SWITCH_TO_24G_NOFORSCAN = common dso_local global i64 0, align 8
@COEX_RSN_2GSWITCHBAND = common dso_local global i32 0, align 4
@COEX_SCAN_START_2G = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rtw_coex_switchband_notify(%struct.rtw_dev* %0, i64 %1) #0 {
  %3 = alloca %struct.rtw_dev*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.rtw_coex*, align 8
  store %struct.rtw_dev* %0, %struct.rtw_dev** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %7 = getelementptr inbounds %struct.rtw_dev, %struct.rtw_dev* %6, i32 0, i32 0
  store %struct.rtw_coex* %7, %struct.rtw_coex** %5, align 8
  %8 = load %struct.rtw_coex*, %struct.rtw_coex** %5, align 8
  %9 = getelementptr inbounds %struct.rtw_coex, %struct.rtw_coex* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  br label %34

13:                                               ; preds = %2
  %14 = load i64, i64* %4, align 8
  %15 = load i64, i64* @COEX_SWITCH_TO_5G, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %21

17:                                               ; preds = %13
  %18 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %19 = load i32, i32* @COEX_RSN_5GSWITCHBAND, align 4
  %20 = call i32 @rtw_coex_run_coex(%struct.rtw_dev* %18, i32 %19)
  br label %34

21:                                               ; preds = %13
  %22 = load i64, i64* %4, align 8
  %23 = load i64, i64* @COEX_SWITCH_TO_24G_NOFORSCAN, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %29

25:                                               ; preds = %21
  %26 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %27 = load i32, i32* @COEX_RSN_2GSWITCHBAND, align 4
  %28 = call i32 @rtw_coex_run_coex(%struct.rtw_dev* %26, i32 %27)
  br label %33

29:                                               ; preds = %21
  %30 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %31 = load i32, i32* @COEX_SCAN_START_2G, align 4
  %32 = call i32 @rtw_coex_scan_notify(%struct.rtw_dev* %30, i32 %31)
  br label %33

33:                                               ; preds = %29, %25
  br label %34

34:                                               ; preds = %12, %33, %17
  ret void
}

declare dso_local i32 @rtw_coex_run_coex(%struct.rtw_dev*, i32) #1

declare dso_local i32 @rtw_coex_scan_notify(%struct.rtw_dev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
