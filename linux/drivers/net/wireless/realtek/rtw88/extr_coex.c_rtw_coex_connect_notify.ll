; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_coex.c_rtw_coex_connect_notify.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_coex.c_rtw_coex_connect_notify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtw_dev = type { i32, %struct.rtw_coex }
%struct.rtw_coex = type { i32, i32, i64, %struct.rtw_coex_stat }
%struct.rtw_coex_stat = type { i32, i32* }

@COEX_SCBD_ACTIVE = common dso_local global i32 0, align 4
@COEX_SCBD_SCAN = common dso_local global i32 0, align 4
@COEX_SCBD_ONOFF = common dso_local global i32 0, align 4
@COEX_ASSOCIATE_5G_START = common dso_local global i64 0, align 8
@COEX_SET_ANT_5G = common dso_local global i32 0, align 4
@COEX_RSN_5GCONSTART = common dso_local global i32 0, align 4
@COEX_ASSOCIATE_5G_FINISH = common dso_local global i64 0, align 8
@COEX_RSN_5GCONFINISH = common dso_local global i32 0, align 4
@COEX_ASSOCIATE_START = common dso_local global i64 0, align 8
@COEX_CNT_WL_CONNPKT = common dso_local global i64 0, align 8
@COEX_SET_ANT_2G = common dso_local global i32 0, align 4
@COEX_RSN_2GCONSTART = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@COEX_RSN_2GCONFINISH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rtw_coex_connect_notify(%struct.rtw_dev* %0, i64 %1) #0 {
  %3 = alloca %struct.rtw_dev*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.rtw_coex*, align 8
  %6 = alloca %struct.rtw_coex_stat*, align 8
  store %struct.rtw_dev* %0, %struct.rtw_dev** %3, align 8
  store i64 %1, i64* %4, align 8
  %7 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %8 = getelementptr inbounds %struct.rtw_dev, %struct.rtw_dev* %7, i32 0, i32 1
  store %struct.rtw_coex* %8, %struct.rtw_coex** %5, align 8
  %9 = load %struct.rtw_coex*, %struct.rtw_coex** %5, align 8
  %10 = getelementptr inbounds %struct.rtw_coex, %struct.rtw_coex* %9, i32 0, i32 3
  store %struct.rtw_coex_stat* %10, %struct.rtw_coex_stat** %6, align 8
  %11 = load %struct.rtw_coex*, %struct.rtw_coex** %5, align 8
  %12 = getelementptr inbounds %struct.rtw_coex, %struct.rtw_coex* %11, i32 0, i32 2
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  br label %83

16:                                               ; preds = %2
  %17 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %18 = load i32, i32* @COEX_SCBD_ACTIVE, align 4
  %19 = load i32, i32* @COEX_SCBD_SCAN, align 4
  %20 = or i32 %18, %19
  %21 = load i32, i32* @COEX_SCBD_ONOFF, align 4
  %22 = or i32 %20, %21
  %23 = call i32 @rtw_coex_write_scbd(%struct.rtw_dev* %17, i32 %22, i32 1)
  %24 = load i64, i64* %4, align 8
  %25 = load i64, i64* @COEX_ASSOCIATE_5G_START, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %34

27:                                               ; preds = %16
  %28 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %29 = load i32, i32* @COEX_SET_ANT_5G, align 4
  %30 = call i32 @rtw_coex_set_ant_path(%struct.rtw_dev* %28, i32 1, i32 %29)
  %31 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %32 = load i32, i32* @COEX_RSN_5GCONSTART, align 4
  %33 = call i32 @rtw_coex_run_coex(%struct.rtw_dev* %31, i32 %32)
  br label %83

34:                                               ; preds = %16
  %35 = load i64, i64* %4, align 8
  %36 = load i64, i64* @COEX_ASSOCIATE_5G_FINISH, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %45

38:                                               ; preds = %34
  %39 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %40 = load i32, i32* @COEX_SET_ANT_5G, align 4
  %41 = call i32 @rtw_coex_set_ant_path(%struct.rtw_dev* %39, i32 1, i32 %40)
  %42 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %43 = load i32, i32* @COEX_RSN_5GCONFINISH, align 4
  %44 = call i32 @rtw_coex_run_coex(%struct.rtw_dev* %42, i32 %43)
  br label %82

45:                                               ; preds = %34
  %46 = load i64, i64* %4, align 8
  %47 = load i64, i64* @COEX_ASSOCIATE_START, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %73

49:                                               ; preds = %45
  %50 = load %struct.rtw_coex_stat*, %struct.rtw_coex_stat** %6, align 8
  %51 = getelementptr inbounds %struct.rtw_coex_stat, %struct.rtw_coex_stat* %50, i32 0, i32 0
  store i32 1, i32* %51, align 8
  %52 = load %struct.rtw_coex_stat*, %struct.rtw_coex_stat** %6, align 8
  %53 = getelementptr inbounds %struct.rtw_coex_stat, %struct.rtw_coex_stat* %52, i32 0, i32 1
  %54 = load i32*, i32** %53, align 8
  %55 = load i64, i64* @COEX_CNT_WL_CONNPKT, align 8
  %56 = getelementptr inbounds i32, i32* %54, i64 %55
  store i32 2, i32* %56, align 4
  %57 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %58 = load i32, i32* @COEX_SET_ANT_2G, align 4
  %59 = call i32 @rtw_coex_set_ant_path(%struct.rtw_dev* %57, i32 1, i32 %58)
  %60 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %61 = load i32, i32* @COEX_RSN_2GCONSTART, align 4
  %62 = call i32 @rtw_coex_run_coex(%struct.rtw_dev* %60, i32 %61)
  %63 = load %struct.rtw_coex*, %struct.rtw_coex** %5, align 8
  %64 = getelementptr inbounds %struct.rtw_coex, %struct.rtw_coex* %63, i32 0, i32 0
  store i32 1, i32* %64, align 8
  %65 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %66 = getelementptr inbounds %struct.rtw_dev, %struct.rtw_dev* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = load %struct.rtw_coex*, %struct.rtw_coex** %5, align 8
  %69 = getelementptr inbounds %struct.rtw_coex, %struct.rtw_coex* %68, i32 0, i32 1
  %70 = load i32, i32* @HZ, align 4
  %71 = mul nsw i32 5, %70
  %72 = call i32 @ieee80211_queue_delayed_work(i32 %67, i32* %69, i32 %71)
  br label %81

73:                                               ; preds = %45
  %74 = load %struct.rtw_coex_stat*, %struct.rtw_coex_stat** %6, align 8
  %75 = getelementptr inbounds %struct.rtw_coex_stat, %struct.rtw_coex_stat* %74, i32 0, i32 0
  store i32 0, i32* %75, align 8
  %76 = load %struct.rtw_coex*, %struct.rtw_coex** %5, align 8
  %77 = getelementptr inbounds %struct.rtw_coex, %struct.rtw_coex* %76, i32 0, i32 0
  store i32 0, i32* %77, align 8
  %78 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %79 = load i32, i32* @COEX_RSN_2GCONFINISH, align 4
  %80 = call i32 @rtw_coex_run_coex(%struct.rtw_dev* %78, i32 %79)
  br label %81

81:                                               ; preds = %73, %49
  br label %82

82:                                               ; preds = %81, %38
  br label %83

83:                                               ; preds = %15, %82, %27
  ret void
}

declare dso_local i32 @rtw_coex_write_scbd(%struct.rtw_dev*, i32, i32) #1

declare dso_local i32 @rtw_coex_set_ant_path(%struct.rtw_dev*, i32, i32) #1

declare dso_local i32 @rtw_coex_run_coex(%struct.rtw_dev*, i32) #1

declare dso_local i32 @ieee80211_queue_delayed_work(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
