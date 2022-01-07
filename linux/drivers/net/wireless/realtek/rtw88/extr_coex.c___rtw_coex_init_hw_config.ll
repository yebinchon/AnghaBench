; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_coex.c___rtw_coex_init_hw_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_coex.c___rtw_coex_init_hw_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtw_dev = type { %struct.rtw_coex }
%struct.rtw_coex = type { i32, i32, i64 }

@COEX_WLPRI_TX_RSP = common dso_local global i32 0, align 4
@COEX_WLPRI_TX_BEACON = common dso_local global i32 0, align 4
@COEX_WLPRI_TX_BEACONQ = common dso_local global i32 0, align 4
@COEX_SET_ANT_WOFF = common dso_local global i32 0, align 4
@COEX_SCBD_ALL = common dso_local global i32 0, align 4
@COEX_SET_ANT_WONLY = common dso_local global i32 0, align 4
@COEX_SCBD_ACTIVE = common dso_local global i32 0, align 4
@COEX_SCBD_SCAN = common dso_local global i32 0, align 4
@COEX_SET_ANT_INIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rtw_dev*, i32)* @__rtw_coex_init_hw_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__rtw_coex_init_hw_config(%struct.rtw_dev* %0, i32 %1) #0 {
  %3 = alloca %struct.rtw_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.rtw_coex*, align 8
  store %struct.rtw_dev* %0, %struct.rtw_dev** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %7 = getelementptr inbounds %struct.rtw_dev, %struct.rtw_dev* %6, i32 0, i32 0
  store %struct.rtw_coex* %7, %struct.rtw_coex** %5, align 8
  %8 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %9 = call i32 @rtw_coex_init_coex_var(%struct.rtw_dev* %8)
  %10 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %11 = call i32 @rtw_coex_monitor_bt_enable(%struct.rtw_dev* %10)
  %12 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %13 = call i32 @rtw_coex_set_rfe_type(%struct.rtw_dev* %12)
  %14 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %15 = call i32 @rtw_coex_set_init(%struct.rtw_dev* %14)
  %16 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %17 = load i32, i32* @COEX_WLPRI_TX_RSP, align 4
  %18 = call i32 @rtw_coex_set_wl_pri_mask(%struct.rtw_dev* %16, i32 %17, i32 1)
  %19 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %20 = load i32, i32* @COEX_WLPRI_TX_BEACON, align 4
  %21 = call i32 @rtw_coex_set_wl_pri_mask(%struct.rtw_dev* %19, i32 %20, i32 1)
  %22 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %23 = load i32, i32* @COEX_WLPRI_TX_BEACONQ, align 4
  %24 = call i32 @rtw_coex_set_wl_pri_mask(%struct.rtw_dev* %22, i32 %23, i32 1)
  %25 = load %struct.rtw_coex*, %struct.rtw_coex** %5, align 8
  %26 = getelementptr inbounds %struct.rtw_coex, %struct.rtw_coex* %25, i32 0, i32 2
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %38

29:                                               ; preds = %2
  %30 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %31 = load i32, i32* @COEX_SET_ANT_WOFF, align 4
  %32 = call i32 @rtw_coex_set_ant_path(%struct.rtw_dev* %30, i32 1, i32 %31)
  %33 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %34 = load i32, i32* @COEX_SCBD_ALL, align 4
  %35 = call i32 @rtw_coex_write_scbd(%struct.rtw_dev* %33, i32 %34, i32 0)
  %36 = load %struct.rtw_coex*, %struct.rtw_coex** %5, align 8
  %37 = getelementptr inbounds %struct.rtw_coex, %struct.rtw_coex* %36, i32 0, i32 0
  store i32 1, i32* %37, align 8
  br label %66

38:                                               ; preds = %2
  %39 = load i32, i32* %4, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %52

41:                                               ; preds = %38
  %42 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %43 = load i32, i32* @COEX_SET_ANT_WONLY, align 4
  %44 = call i32 @rtw_coex_set_ant_path(%struct.rtw_dev* %42, i32 1, i32 %43)
  %45 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %46 = load i32, i32* @COEX_SCBD_ACTIVE, align 4
  %47 = load i32, i32* @COEX_SCBD_SCAN, align 4
  %48 = or i32 %46, %47
  %49 = call i32 @rtw_coex_write_scbd(%struct.rtw_dev* %45, i32 %48, i32 1)
  %50 = load %struct.rtw_coex*, %struct.rtw_coex** %5, align 8
  %51 = getelementptr inbounds %struct.rtw_coex, %struct.rtw_coex* %50, i32 0, i32 0
  store i32 1, i32* %51, align 8
  br label %65

52:                                               ; preds = %38
  %53 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %54 = load i32, i32* @COEX_SET_ANT_INIT, align 4
  %55 = call i32 @rtw_coex_set_ant_path(%struct.rtw_dev* %53, i32 1, i32 %54)
  %56 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %57 = load i32, i32* @COEX_SCBD_ACTIVE, align 4
  %58 = load i32, i32* @COEX_SCBD_SCAN, align 4
  %59 = or i32 %57, %58
  %60 = call i32 @rtw_coex_write_scbd(%struct.rtw_dev* %56, i32 %59, i32 1)
  %61 = load %struct.rtw_coex*, %struct.rtw_coex** %5, align 8
  %62 = getelementptr inbounds %struct.rtw_coex, %struct.rtw_coex* %61, i32 0, i32 0
  store i32 0, i32* %62, align 8
  %63 = load %struct.rtw_coex*, %struct.rtw_coex** %5, align 8
  %64 = getelementptr inbounds %struct.rtw_coex, %struct.rtw_coex* %63, i32 0, i32 1
  store i32 1, i32* %64, align 4
  br label %65

65:                                               ; preds = %52, %41
  br label %66

66:                                               ; preds = %65, %29
  %67 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %68 = call i32 @rtw_coex_table(%struct.rtw_dev* %67, i32 0)
  %69 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %70 = call i32 @rtw_coex_tdma(%struct.rtw_dev* %69, i32 1, i32 0)
  %71 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %72 = call i32 @rtw_coex_query_bt_info(%struct.rtw_dev* %71)
  ret void
}

declare dso_local i32 @rtw_coex_init_coex_var(%struct.rtw_dev*) #1

declare dso_local i32 @rtw_coex_monitor_bt_enable(%struct.rtw_dev*) #1

declare dso_local i32 @rtw_coex_set_rfe_type(%struct.rtw_dev*) #1

declare dso_local i32 @rtw_coex_set_init(%struct.rtw_dev*) #1

declare dso_local i32 @rtw_coex_set_wl_pri_mask(%struct.rtw_dev*, i32, i32) #1

declare dso_local i32 @rtw_coex_set_ant_path(%struct.rtw_dev*, i32, i32) #1

declare dso_local i32 @rtw_coex_write_scbd(%struct.rtw_dev*, i32, i32) #1

declare dso_local i32 @rtw_coex_table(%struct.rtw_dev*, i32) #1

declare dso_local i32 @rtw_coex_tdma(%struct.rtw_dev*, i32, i32) #1

declare dso_local i32 @rtw_coex_query_bt_info(%struct.rtw_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
