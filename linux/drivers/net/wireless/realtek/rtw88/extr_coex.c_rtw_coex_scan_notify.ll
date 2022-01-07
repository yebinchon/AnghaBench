; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_coex.c_rtw_coex_scan_notify.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_coex.c_rtw_coex_scan_notify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtw_dev = type { %struct.rtw_coex }
%struct.rtw_coex = type { i32, i64, %struct.rtw_coex_stat }
%struct.rtw_coex_stat = type { i32 }

@COEX_SCAN_FINISH = common dso_local global i64 0, align 8
@COEX_SCBD_ACTIVE = common dso_local global i32 0, align 4
@COEX_SCBD_SCAN = common dso_local global i32 0, align 4
@COEX_SCBD_ONOFF = common dso_local global i32 0, align 4
@COEX_SCAN_START_5G = common dso_local global i64 0, align 8
@COEX_SET_ANT_5G = common dso_local global i32 0, align 4
@COEX_RSN_5GSCANSTART = common dso_local global i32 0, align 4
@COEX_SCAN_START_2G = common dso_local global i64 0, align 8
@COEX_SCAN_START = common dso_local global i64 0, align 8
@COEX_SET_ANT_2G = common dso_local global i32 0, align 4
@COEX_RSN_2GSCANSTART = common dso_local global i32 0, align 4
@COEX_RSN_SCANFINISH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rtw_coex_scan_notify(%struct.rtw_dev* %0, i64 %1) #0 {
  %3 = alloca %struct.rtw_dev*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.rtw_coex*, align 8
  %6 = alloca %struct.rtw_coex_stat*, align 8
  store %struct.rtw_dev* %0, %struct.rtw_dev** %3, align 8
  store i64 %1, i64* %4, align 8
  %7 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %8 = getelementptr inbounds %struct.rtw_dev, %struct.rtw_dev* %7, i32 0, i32 0
  store %struct.rtw_coex* %8, %struct.rtw_coex** %5, align 8
  %9 = load %struct.rtw_coex*, %struct.rtw_coex** %5, align 8
  %10 = getelementptr inbounds %struct.rtw_coex, %struct.rtw_coex* %9, i32 0, i32 2
  store %struct.rtw_coex_stat* %10, %struct.rtw_coex_stat** %6, align 8
  %11 = load %struct.rtw_coex*, %struct.rtw_coex** %5, align 8
  %12 = getelementptr inbounds %struct.rtw_coex, %struct.rtw_coex* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  br label %65

16:                                               ; preds = %2
  %17 = load %struct.rtw_coex*, %struct.rtw_coex** %5, align 8
  %18 = getelementptr inbounds %struct.rtw_coex, %struct.rtw_coex* %17, i32 0, i32 0
  store i32 0, i32* %18, align 8
  %19 = load i64, i64* %4, align 8
  %20 = load i64, i64* @COEX_SCAN_FINISH, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %22, label %30

22:                                               ; preds = %16
  %23 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %24 = load i32, i32* @COEX_SCBD_ACTIVE, align 4
  %25 = load i32, i32* @COEX_SCBD_SCAN, align 4
  %26 = or i32 %24, %25
  %27 = load i32, i32* @COEX_SCBD_ONOFF, align 4
  %28 = or i32 %26, %27
  %29 = call i32 @rtw_coex_write_scbd(%struct.rtw_dev* %23, i32 %28, i32 1)
  br label %30

30:                                               ; preds = %22, %16
  %31 = load i64, i64* %4, align 8
  %32 = load i64, i64* @COEX_SCAN_START_5G, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %41

34:                                               ; preds = %30
  %35 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %36 = load i32, i32* @COEX_SET_ANT_5G, align 4
  %37 = call i32 @rtw_coex_set_ant_path(%struct.rtw_dev* %35, i32 1, i32 %36)
  %38 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %39 = load i32, i32* @COEX_RSN_5GSCANSTART, align 4
  %40 = call i32 @rtw_coex_run_coex(%struct.rtw_dev* %38, i32 %39)
  br label %65

41:                                               ; preds = %30
  %42 = load i64, i64* %4, align 8
  %43 = load i64, i64* @COEX_SCAN_START_2G, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %49, label %45

45:                                               ; preds = %41
  %46 = load i64, i64* %4, align 8
  %47 = load i64, i64* @COEX_SCAN_START, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %58

49:                                               ; preds = %45, %41
  %50 = load %struct.rtw_coex_stat*, %struct.rtw_coex_stat** %6, align 8
  %51 = getelementptr inbounds %struct.rtw_coex_stat, %struct.rtw_coex_stat* %50, i32 0, i32 0
  store i32 1, i32* %51, align 4
  %52 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %53 = load i32, i32* @COEX_SET_ANT_2G, align 4
  %54 = call i32 @rtw_coex_set_ant_path(%struct.rtw_dev* %52, i32 1, i32 %53)
  %55 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %56 = load i32, i32* @COEX_RSN_2GSCANSTART, align 4
  %57 = call i32 @rtw_coex_run_coex(%struct.rtw_dev* %55, i32 %56)
  br label %64

58:                                               ; preds = %45
  %59 = load %struct.rtw_coex_stat*, %struct.rtw_coex_stat** %6, align 8
  %60 = getelementptr inbounds %struct.rtw_coex_stat, %struct.rtw_coex_stat* %59, i32 0, i32 0
  store i32 0, i32* %60, align 4
  %61 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %62 = load i32, i32* @COEX_RSN_SCANFINISH, align 4
  %63 = call i32 @rtw_coex_run_coex(%struct.rtw_dev* %61, i32 %62)
  br label %64

64:                                               ; preds = %58, %49
  br label %65

65:                                               ; preds = %15, %64, %34
  ret void
}

declare dso_local i32 @rtw_coex_write_scbd(%struct.rtw_dev*, i32, i32) #1

declare dso_local i32 @rtw_coex_set_ant_path(%struct.rtw_dev*, i32, i32) #1

declare dso_local i32 @rtw_coex_run_coex(%struct.rtw_dev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
