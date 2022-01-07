; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_rtw8822b.c_rtw8822b_coex_cfg_wl_rx_gain.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_rtw8822b.c_rtw8822b_coex_cfg_wl_rx_gain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtw_dev = type { %struct.rtw_coex }
%struct.rtw_coex = type { %struct.rtw_coex_dm }
%struct.rtw_coex_dm = type { i32 }

@rtw8822b_coex_cfg_wl_rx_gain.wl_rx_low_gain_on = internal constant [41 x i32] [i32 -16777213, i32 -1122893821, i32 -1106247677, i32 -1089994749, i32 -1090125821, i32 -1090191357, i32 -1139539965, i32 -1156186109, i32 -1172832253, i32 -1189478397, i32 -1206124541, i32 -1222770685, i32 -1272971261, i32 -1256062973, i32 -1272709117, i32 -1289355261, i32 -1306001405, i32 -1322647549, i32 -1339293693, i32 -1355939837, i32 -1372585981, i32 -1389232125, i32 -1405878269, i32 -1422524413, i32 -1925709821, i32 -1942355965, i32 -1959002109, i32 -1975648253, i32 1849688067, i32 1833041923, i32 1816395779, i32 1799749635, i32 1783103491, i32 1766457347, i32 1749811203, i32 1733165059, i32 1716518915, i32 1699872771, i32 1683226627, i32 1683357699, i32 8258563], align 16
@rtw8822b_coex_cfg_wl_rx_gain.wl_rx_low_gain_off = internal constant [41 x i32] [i32 -16777213, i32 -200146941, i32 -183500797, i32 -166854653, i32 -150208509, i32 -133562365, i32 -216793085, i32 -233439229, i32 -250085373, i32 -266731517, i32 -283377661, i32 -300023805, i32 -316669949, i32 -333316093, i32 -349962237, i32 -366608381, i32 -383254525, i32 -399900669, i32 -416546813, i32 -433192957, i32 -449839101, i32 -936247293, i32 -952893437, i32 -969539581, i32 -986185725, i32 -1002831869, i32 -1019478013, i32 -1036124157, i32 -1052770301, i32 -1069416445, i32 -1522270205, i32 -1538916349, i32 -1555562493, i32 -1572208637, i32 -1588854781, i32 -2092040189, i32 -2108686333, i32 -2125332477, i32 -2141978621, i32 1700134915, i32 8258563], align 16
@REG_RX_GAIN_EN = common dso_local global i32 0, align 4
@RF_PATH_A = common dso_local global i32 0, align 4
@RF_RCKD = common dso_local global i32 0, align 4
@RF_RCK = common dso_local global i32 0, align 4
@RF_PATH_B = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rtw_dev*, i32)* @rtw8822b_coex_cfg_wl_rx_gain to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtw8822b_coex_cfg_wl_rx_gain(%struct.rtw_dev* %0, i32 %1) #0 {
  %3 = alloca %struct.rtw_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.rtw_coex*, align 8
  %6 = alloca %struct.rtw_coex_dm*, align 8
  %7 = alloca i64, align 8
  store %struct.rtw_dev* %0, %struct.rtw_dev** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %9 = getelementptr inbounds %struct.rtw_dev, %struct.rtw_dev* %8, i32 0, i32 0
  store %struct.rtw_coex* %9, %struct.rtw_coex** %5, align 8
  %10 = load %struct.rtw_coex*, %struct.rtw_coex** %5, align 8
  %11 = getelementptr inbounds %struct.rtw_coex, %struct.rtw_coex* %10, i32 0, i32 0
  store %struct.rtw_coex_dm* %11, %struct.rtw_coex_dm** %6, align 8
  %12 = load i32, i32* %4, align 4
  %13 = load %struct.rtw_coex_dm*, %struct.rtw_coex_dm** %6, align 8
  %14 = getelementptr inbounds %struct.rtw_coex_dm, %struct.rtw_coex_dm* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = icmp eq i32 %12, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %2
  br label %89

18:                                               ; preds = %2
  %19 = load i32, i32* %4, align 4
  %20 = load %struct.rtw_coex_dm*, %struct.rtw_coex_dm** %6, align 8
  %21 = getelementptr inbounds %struct.rtw_coex_dm, %struct.rtw_coex_dm* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 4
  %22 = load %struct.rtw_coex_dm*, %struct.rtw_coex_dm** %6, align 8
  %23 = getelementptr inbounds %struct.rtw_coex_dm, %struct.rtw_coex_dm* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %58

26:                                               ; preds = %18
  store i64 0, i64* %7, align 8
  br label %27

27:                                               ; preds = %38, %26
  %28 = load i64, i64* %7, align 8
  %29 = call i64 @ARRAY_SIZE(i32* getelementptr inbounds ([41 x i32], [41 x i32]* @rtw8822b_coex_cfg_wl_rx_gain.wl_rx_low_gain_on, i64 0, i64 0))
  %30 = icmp ult i64 %28, %29
  br i1 %30, label %31, label %41

31:                                               ; preds = %27
  %32 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %33 = load i32, i32* @REG_RX_GAIN_EN, align 4
  %34 = load i64, i64* %7, align 8
  %35 = getelementptr inbounds [41 x i32], [41 x i32]* @rtw8822b_coex_cfg_wl_rx_gain.wl_rx_low_gain_on, i64 0, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @rtw_write32(%struct.rtw_dev* %32, i32 %33, i32 %36)
  br label %38

38:                                               ; preds = %31
  %39 = load i64, i64* %7, align 8
  %40 = add i64 %39, 1
  store i64 %40, i64* %7, align 8
  br label %27

41:                                               ; preds = %27
  %42 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %43 = load i32, i32* @RF_PATH_A, align 4
  %44 = load i32, i32* @RF_RCKD, align 4
  %45 = call i32 @rtw_write_rf(%struct.rtw_dev* %42, i32 %43, i32 %44, i32 2, i32 1)
  %46 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %47 = load i32, i32* @RF_PATH_A, align 4
  %48 = load i32, i32* @RF_RCK, align 4
  %49 = call i32 @rtw_write_rf(%struct.rtw_dev* %46, i32 %47, i32 %48, i32 63, i32 63)
  %50 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %51 = load i32, i32* @RF_PATH_B, align 4
  %52 = load i32, i32* @RF_RCKD, align 4
  %53 = call i32 @rtw_write_rf(%struct.rtw_dev* %50, i32 %51, i32 %52, i32 2, i32 1)
  %54 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %55 = load i32, i32* @RF_PATH_B, align 4
  %56 = load i32, i32* @RF_RCK, align 4
  %57 = call i32 @rtw_write_rf(%struct.rtw_dev* %54, i32 %55, i32 %56, i32 63, i32 63)
  br label %89

58:                                               ; preds = %18
  store i64 0, i64* %7, align 8
  br label %59

59:                                               ; preds = %69, %58
  %60 = load i64, i64* %7, align 8
  %61 = call i64 @ARRAY_SIZE(i32* getelementptr inbounds ([41 x i32], [41 x i32]* @rtw8822b_coex_cfg_wl_rx_gain.wl_rx_low_gain_off, i64 0, i64 0))
  %62 = icmp ult i64 %60, %61
  br i1 %62, label %63, label %72

63:                                               ; preds = %59
  %64 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %65 = load i64, i64* %7, align 8
  %66 = getelementptr inbounds [41 x i32], [41 x i32]* @rtw8822b_coex_cfg_wl_rx_gain.wl_rx_low_gain_off, i64 0, i64 %65
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @rtw_write32(%struct.rtw_dev* %64, i32 2076, i32 %67)
  br label %69

69:                                               ; preds = %63
  %70 = load i64, i64* %7, align 8
  %71 = add i64 %70, 1
  store i64 %71, i64* %7, align 8
  br label %59

72:                                               ; preds = %59
  %73 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %74 = load i32, i32* @RF_PATH_A, align 4
  %75 = load i32, i32* @RF_RCK, align 4
  %76 = call i32 @rtw_write_rf(%struct.rtw_dev* %73, i32 %74, i32 %75, i32 63, i32 4)
  %77 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %78 = load i32, i32* @RF_PATH_A, align 4
  %79 = load i32, i32* @RF_RCKD, align 4
  %80 = call i32 @rtw_write_rf(%struct.rtw_dev* %77, i32 %78, i32 %79, i32 2, i32 0)
  %81 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %82 = load i32, i32* @RF_PATH_B, align 4
  %83 = load i32, i32* @RF_RCK, align 4
  %84 = call i32 @rtw_write_rf(%struct.rtw_dev* %81, i32 %82, i32 %83, i32 63, i32 4)
  %85 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %86 = load i32, i32* @RF_PATH_B, align 4
  %87 = load i32, i32* @RF_RCKD, align 4
  %88 = call i32 @rtw_write_rf(%struct.rtw_dev* %85, i32 %86, i32 %87, i32 2, i32 0)
  br label %89

89:                                               ; preds = %17, %72, %41
  ret void
}

declare dso_local i64 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @rtw_write32(%struct.rtw_dev*, i32, i32) #1

declare dso_local i32 @rtw_write_rf(%struct.rtw_dev*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
