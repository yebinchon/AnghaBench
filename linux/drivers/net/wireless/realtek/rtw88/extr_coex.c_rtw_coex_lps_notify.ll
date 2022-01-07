; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_coex.c_rtw_coex_lps_notify.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_coex.c_rtw_coex_lps_notify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtw_dev = type { %struct.rtw_coex }
%struct.rtw_coex = type { i64, %struct.rtw_coex_stat }
%struct.rtw_coex_stat = type { i32, i64 }

@COEX_LPS_ENABLE = common dso_local global i64 0, align 8
@COEX_SCBD_ACTIVE = common dso_local global i32 0, align 4
@COEX_RSN_LPS = common dso_local global i32 0, align 4
@COEX_LPS_DISABLE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rtw_coex_lps_notify(%struct.rtw_dev* %0, i64 %1) #0 {
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
  %10 = getelementptr inbounds %struct.rtw_coex, %struct.rtw_coex* %9, i32 0, i32 1
  store %struct.rtw_coex_stat* %10, %struct.rtw_coex_stat** %6, align 8
  %11 = load %struct.rtw_coex*, %struct.rtw_coex** %5, align 8
  %12 = getelementptr inbounds %struct.rtw_coex, %struct.rtw_coex* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  br label %58

16:                                               ; preds = %2
  %17 = load i64, i64* %4, align 8
  %18 = load i64, i64* @COEX_LPS_ENABLE, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %39

20:                                               ; preds = %16
  %21 = load %struct.rtw_coex_stat*, %struct.rtw_coex_stat** %6, align 8
  %22 = getelementptr inbounds %struct.rtw_coex_stat, %struct.rtw_coex_stat* %21, i32 0, i32 0
  store i32 1, i32* %22, align 8
  %23 = load %struct.rtw_coex_stat*, %struct.rtw_coex_stat** %6, align 8
  %24 = getelementptr inbounds %struct.rtw_coex_stat, %struct.rtw_coex_stat* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %20
  %28 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %29 = load i32, i32* @COEX_SCBD_ACTIVE, align 4
  %30 = call i32 @rtw_coex_write_scbd(%struct.rtw_dev* %28, i32 %29, i32 1)
  br label %38

31:                                               ; preds = %20
  %32 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %33 = load i32, i32* @COEX_SCBD_ACTIVE, align 4
  %34 = call i32 @rtw_coex_write_scbd(%struct.rtw_dev* %32, i32 %33, i32 0)
  %35 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %36 = load i32, i32* @COEX_RSN_LPS, align 4
  %37 = call i32 @rtw_coex_run_coex(%struct.rtw_dev* %35, i32 %36)
  br label %38

38:                                               ; preds = %31, %27
  br label %58

39:                                               ; preds = %16
  %40 = load i64, i64* %4, align 8
  %41 = load i64, i64* @COEX_LPS_DISABLE, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %57

43:                                               ; preds = %39
  %44 = load %struct.rtw_coex_stat*, %struct.rtw_coex_stat** %6, align 8
  %45 = getelementptr inbounds %struct.rtw_coex_stat, %struct.rtw_coex_stat* %44, i32 0, i32 0
  store i32 0, i32* %45, align 8
  %46 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %47 = load i32, i32* @COEX_SCBD_ACTIVE, align 4
  %48 = call i32 @rtw_coex_write_scbd(%struct.rtw_dev* %46, i32 %47, i32 1)
  %49 = load %struct.rtw_coex_stat*, %struct.rtw_coex_stat** %6, align 8
  %50 = getelementptr inbounds %struct.rtw_coex_stat, %struct.rtw_coex_stat* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %56, label %53

53:                                               ; preds = %43
  %54 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %55 = call i32 @rtw_coex_query_bt_info(%struct.rtw_dev* %54)
  br label %56

56:                                               ; preds = %53, %43
  br label %57

57:                                               ; preds = %56, %39
  br label %58

58:                                               ; preds = %15, %57, %38
  ret void
}

declare dso_local i32 @rtw_coex_write_scbd(%struct.rtw_dev*, i32, i32) #1

declare dso_local i32 @rtw_coex_run_coex(%struct.rtw_dev*, i32) #1

declare dso_local i32 @rtw_coex_query_bt_info(%struct.rtw_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
