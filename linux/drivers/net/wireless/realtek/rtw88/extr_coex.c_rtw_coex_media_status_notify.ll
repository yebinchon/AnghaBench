; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_coex.c_rtw_coex_media_status_notify.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_coex.c_rtw_coex_media_status_notify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtw_dev = type { %struct.rtw_coex }
%struct.rtw_coex = type { i64, %struct.rtw_coex_stat }
%struct.rtw_coex_stat = type { i32 }

@COEX_MEDIA_CONNECT_5G = common dso_local global i64 0, align 8
@COEX_SCBD_ACTIVE = common dso_local global i32 0, align 4
@COEX_SET_ANT_5G = common dso_local global i32 0, align 4
@COEX_RSN_5GMEDIA = common dso_local global i32 0, align 4
@COEX_MEDIA_CONNECT = common dso_local global i64 0, align 8
@COEX_SET_ANT_2G = common dso_local global i32 0, align 4
@COEX_WLPRI_RX_CCK = common dso_local global i32 0, align 4
@COEX_H2C69_WL_LEAKAP = common dso_local global i64 0, align 8
@PARA1_H2C69_EN_5MS = common dso_local global i64 0, align 8
@COEX_RSN_2GMEDIA = common dso_local global i32 0, align 4
@COEX_RSN_MEDIADISCON = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rtw_coex_media_status_notify(%struct.rtw_dev* %0, i64 %1) #0 {
  %3 = alloca %struct.rtw_dev*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.rtw_coex*, align 8
  %6 = alloca %struct.rtw_coex_stat*, align 8
  %7 = alloca [6 x i64], align 16
  store %struct.rtw_dev* %0, %struct.rtw_dev** %3, align 8
  store i64 %1, i64* %4, align 8
  %8 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %9 = getelementptr inbounds %struct.rtw_dev, %struct.rtw_dev* %8, i32 0, i32 0
  store %struct.rtw_coex* %9, %struct.rtw_coex** %5, align 8
  %10 = load %struct.rtw_coex*, %struct.rtw_coex** %5, align 8
  %11 = getelementptr inbounds %struct.rtw_coex, %struct.rtw_coex* %10, i32 0, i32 1
  store %struct.rtw_coex_stat* %11, %struct.rtw_coex_stat** %6, align 8
  %12 = bitcast [6 x i64]* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %12, i8 0, i64 48, i1 false)
  %13 = load %struct.rtw_coex*, %struct.rtw_coex** %5, align 8
  %14 = getelementptr inbounds %struct.rtw_coex, %struct.rtw_coex* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %2
  br label %75

18:                                               ; preds = %2
  %19 = load i64, i64* %4, align 8
  %20 = load i64, i64* @COEX_MEDIA_CONNECT_5G, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %32

22:                                               ; preds = %18
  %23 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %24 = load i32, i32* @COEX_SCBD_ACTIVE, align 4
  %25 = call i32 @rtw_coex_write_scbd(%struct.rtw_dev* %23, i32 %24, i32 1)
  %26 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %27 = load i32, i32* @COEX_SET_ANT_5G, align 4
  %28 = call i32 @rtw_coex_set_ant_path(%struct.rtw_dev* %26, i32 1, i32 %27)
  %29 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %30 = load i32, i32* @COEX_RSN_5GMEDIA, align 4
  %31 = call i32 @rtw_coex_run_coex(%struct.rtw_dev* %29, i32 %30)
  br label %71

32:                                               ; preds = %18
  %33 = load i64, i64* %4, align 8
  %34 = load i64, i64* @COEX_MEDIA_CONNECT, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %60

36:                                               ; preds = %32
  %37 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %38 = load i32, i32* @COEX_SCBD_ACTIVE, align 4
  %39 = call i32 @rtw_coex_write_scbd(%struct.rtw_dev* %37, i32 %38, i32 1)
  %40 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %41 = load i32, i32* @COEX_SET_ANT_2G, align 4
  %42 = call i32 @rtw_coex_set_ant_path(%struct.rtw_dev* %40, i32 1, i32 %41)
  %43 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %44 = load i32, i32* @COEX_WLPRI_RX_CCK, align 4
  %45 = call i32 @rtw_coex_set_wl_pri_mask(%struct.rtw_dev* %43, i32 %44, i32 1)
  %46 = load i64, i64* @COEX_H2C69_WL_LEAKAP, align 8
  %47 = getelementptr inbounds [6 x i64], [6 x i64]* %7, i64 0, i64 0
  store i64 %46, i64* %47, align 16
  %48 = load i64, i64* @PARA1_H2C69_EN_5MS, align 8
  %49 = getelementptr inbounds [6 x i64], [6 x i64]* %7, i64 0, i64 1
  store i64 %48, i64* %49, align 8
  %50 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %51 = getelementptr inbounds [6 x i64], [6 x i64]* %7, i64 0, i64 0
  %52 = load i64, i64* %51, align 16
  %53 = getelementptr inbounds [6 x i64], [6 x i64]* %7, i64 0, i64 1
  %54 = call i32 @rtw_fw_bt_wifi_control(%struct.rtw_dev* %50, i64 %52, i64* %53)
  %55 = load %struct.rtw_coex_stat*, %struct.rtw_coex_stat** %6, align 8
  %56 = getelementptr inbounds %struct.rtw_coex_stat, %struct.rtw_coex_stat* %55, i32 0, i32 0
  store i32 1, i32* %56, align 4
  %57 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %58 = load i32, i32* @COEX_RSN_2GMEDIA, align 4
  %59 = call i32 @rtw_coex_run_coex(%struct.rtw_dev* %57, i32 %58)
  br label %70

60:                                               ; preds = %32
  %61 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %62 = load i32, i32* @COEX_SCBD_ACTIVE, align 4
  %63 = call i32 @rtw_coex_write_scbd(%struct.rtw_dev* %61, i32 %62, i32 0)
  %64 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %65 = load i32, i32* @COEX_WLPRI_RX_CCK, align 4
  %66 = call i32 @rtw_coex_set_wl_pri_mask(%struct.rtw_dev* %64, i32 %65, i32 0)
  %67 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %68 = load i32, i32* @COEX_RSN_MEDIADISCON, align 4
  %69 = call i32 @rtw_coex_run_coex(%struct.rtw_dev* %67, i32 %68)
  br label %70

70:                                               ; preds = %60, %36
  br label %71

71:                                               ; preds = %70, %22
  %72 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %73 = load i64, i64* %4, align 8
  %74 = call i32 @rtw_coex_update_wl_ch_info(%struct.rtw_dev* %72, i64 %73)
  br label %75

75:                                               ; preds = %71, %17
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @rtw_coex_write_scbd(%struct.rtw_dev*, i32, i32) #2

declare dso_local i32 @rtw_coex_set_ant_path(%struct.rtw_dev*, i32, i32) #2

declare dso_local i32 @rtw_coex_run_coex(%struct.rtw_dev*, i32) #2

declare dso_local i32 @rtw_coex_set_wl_pri_mask(%struct.rtw_dev*, i32, i32) #2

declare dso_local i32 @rtw_fw_bt_wifi_control(%struct.rtw_dev*, i64, i64*) #2

declare dso_local i32 @rtw_coex_update_wl_ch_info(%struct.rtw_dev*, i64) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
