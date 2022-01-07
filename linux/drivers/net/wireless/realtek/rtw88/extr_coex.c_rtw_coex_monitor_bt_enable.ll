; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_coex.c_rtw_coex_monitor_bt_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_coex.c_rtw_coex_monitor_bt_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtw_dev = type { i32, %struct.rtw_coex, %struct.rtw_chip_info* }
%struct.rtw_coex = type { i32, %struct.rtw_coex_dm, %struct.rtw_coex_stat }
%struct.rtw_coex_dm = type { i64 }
%struct.rtw_coex_stat = type { i32, i32, i32, i64 }
%struct.rtw_chip_info = type { i64 }

@COEX_SCBD_ONOFF = common dso_local global i32 0, align 4
@RTW_DBG_COEX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"coex: BT state changed (%d) -> (%d)\0A\00", align 1
@HZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rtw_dev*)* @rtw_coex_monitor_bt_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtw_coex_monitor_bt_enable(%struct.rtw_dev* %0) #0 {
  %2 = alloca %struct.rtw_dev*, align 8
  %3 = alloca %struct.rtw_chip_info*, align 8
  %4 = alloca %struct.rtw_coex*, align 8
  %5 = alloca %struct.rtw_coex_stat*, align 8
  %6 = alloca %struct.rtw_coex_dm*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.rtw_dev* %0, %struct.rtw_dev** %2, align 8
  %9 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %10 = getelementptr inbounds %struct.rtw_dev, %struct.rtw_dev* %9, i32 0, i32 2
  %11 = load %struct.rtw_chip_info*, %struct.rtw_chip_info** %10, align 8
  store %struct.rtw_chip_info* %11, %struct.rtw_chip_info** %3, align 8
  %12 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %13 = getelementptr inbounds %struct.rtw_dev, %struct.rtw_dev* %12, i32 0, i32 1
  store %struct.rtw_coex* %13, %struct.rtw_coex** %4, align 8
  %14 = load %struct.rtw_coex*, %struct.rtw_coex** %4, align 8
  %15 = getelementptr inbounds %struct.rtw_coex, %struct.rtw_coex* %14, i32 0, i32 2
  store %struct.rtw_coex_stat* %15, %struct.rtw_coex_stat** %5, align 8
  %16 = load %struct.rtw_coex*, %struct.rtw_coex** %4, align 8
  %17 = getelementptr inbounds %struct.rtw_coex, %struct.rtw_coex* %16, i32 0, i32 1
  store %struct.rtw_coex_dm* %17, %struct.rtw_coex_dm** %6, align 8
  store i32 0, i32* %7, align 4
  %18 = load %struct.rtw_chip_info*, %struct.rtw_chip_info** %3, align 8
  %19 = getelementptr inbounds %struct.rtw_chip_info, %struct.rtw_chip_info* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %31

22:                                               ; preds = %1
  %23 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %24 = call i32 @rtw_coex_read_scbd(%struct.rtw_dev* %23)
  store i32 %24, i32* %8, align 4
  %25 = load i32, i32* %8, align 4
  %26 = load i32, i32* @COEX_SCBD_ONOFF, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  %29 = xor i1 %28, true
  %30 = zext i1 %29 to i32
  store i32 %30, i32* %7, align 4
  br label %31

31:                                               ; preds = %22, %1
  %32 = load %struct.rtw_coex_stat*, %struct.rtw_coex_stat** %5, align 8
  %33 = getelementptr inbounds %struct.rtw_coex_stat, %struct.rtw_coex_stat* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* %7, align 4
  %36 = icmp ne i32 %34, %35
  br i1 %36, label %37, label %52

37:                                               ; preds = %31
  %38 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %39 = load i32, i32* @RTW_DBG_COEX, align 4
  %40 = load %struct.rtw_coex_stat*, %struct.rtw_coex_stat** %5, align 8
  %41 = getelementptr inbounds %struct.rtw_coex_stat, %struct.rtw_coex_stat* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* %7, align 4
  %44 = call i32 @rtw_dbg(%struct.rtw_dev* %38, i32 %39, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %42, i32 %43)
  %45 = load i32, i32* %7, align 4
  %46 = load %struct.rtw_coex_stat*, %struct.rtw_coex_stat** %5, align 8
  %47 = getelementptr inbounds %struct.rtw_coex_stat, %struct.rtw_coex_stat* %46, i32 0, i32 0
  store i32 %45, i32* %47, align 8
  %48 = load %struct.rtw_coex_stat*, %struct.rtw_coex_stat** %5, align 8
  %49 = getelementptr inbounds %struct.rtw_coex_stat, %struct.rtw_coex_stat* %48, i32 0, i32 3
  store i64 0, i64* %49, align 8
  %50 = load %struct.rtw_coex_dm*, %struct.rtw_coex_dm** %6, align 8
  %51 = getelementptr inbounds %struct.rtw_coex_dm, %struct.rtw_coex_dm* %50, i32 0, i32 0
  store i64 0, i64* %51, align 8
  br label %52

52:                                               ; preds = %37, %31
  %53 = load %struct.rtw_coex_stat*, %struct.rtw_coex_stat** %5, align 8
  %54 = getelementptr inbounds %struct.rtw_coex_stat, %struct.rtw_coex_stat* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %68, label %57

57:                                               ; preds = %52
  %58 = load %struct.rtw_coex_stat*, %struct.rtw_coex_stat** %5, align 8
  %59 = getelementptr inbounds %struct.rtw_coex_stat, %struct.rtw_coex_stat* %58, i32 0, i32 1
  store i32 1, i32* %59, align 4
  %60 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %61 = getelementptr inbounds %struct.rtw_dev, %struct.rtw_dev* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = load %struct.rtw_coex*, %struct.rtw_coex** %4, align 8
  %64 = getelementptr inbounds %struct.rtw_coex, %struct.rtw_coex* %63, i32 0, i32 0
  %65 = load i32, i32* @HZ, align 4
  %66 = mul nsw i32 15, %65
  %67 = call i32 @ieee80211_queue_delayed_work(i32 %62, i32* %64, i32 %66)
  br label %73

68:                                               ; preds = %52
  %69 = load %struct.rtw_coex_stat*, %struct.rtw_coex_stat** %5, align 8
  %70 = getelementptr inbounds %struct.rtw_coex_stat, %struct.rtw_coex_stat* %69, i32 0, i32 2
  store i32 0, i32* %70, align 8
  %71 = load %struct.rtw_coex_stat*, %struct.rtw_coex_stat** %5, align 8
  %72 = getelementptr inbounds %struct.rtw_coex_stat, %struct.rtw_coex_stat* %71, i32 0, i32 1
  store i32 0, i32* %72, align 4
  br label %73

73:                                               ; preds = %68, %57
  ret void
}

declare dso_local i32 @rtw_coex_read_scbd(%struct.rtw_dev*) #1

declare dso_local i32 @rtw_dbg(%struct.rtw_dev*, i32, i8*, i32, i32) #1

declare dso_local i32 @ieee80211_queue_delayed_work(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
