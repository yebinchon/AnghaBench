; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wl18xx/extr_main.c_wl18xx_identify_chip.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wl18xx/extr_main.c_wl18xx_identify_chip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wl1271 = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_2__, i8*, i8* }
%struct.TYPE_2__ = type { i32 }

@DEBUG_BOOT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"chip id 0x%x (185x PG20)\00", align 1
@WL18XX_FW_NAME = common dso_local global i8* null, align 8
@WLCORE_QUIRK_RX_BLOCKSIZE_ALIGN = common dso_local global i32 0, align 4
@WLCORE_QUIRK_TX_BLOCKSIZE_ALIGN = common dso_local global i32 0, align 4
@WLCORE_QUIRK_NO_SCHED_SCAN_WHILE_CONN = common dso_local global i32 0, align 4
@WLCORE_QUIRK_TX_PAD_LAST_FRAME = common dso_local global i32 0, align 4
@WLCORE_QUIRK_REGDOMAIN_CONF = common dso_local global i32 0, align 4
@WLCORE_QUIRK_DUAL_PROBE_TMPL = common dso_local global i32 0, align 4
@WL18XX_CHIP_VER = common dso_local global i32 0, align 4
@WL18XX_IFTYPE_VER = common dso_local global i32 0, align 4
@WL18XX_MAJOR_VER = common dso_local global i32 0, align 4
@WL18XX_SUBTYPE_VER = common dso_local global i32 0, align 4
@WL18XX_MINOR_VER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"chip id 0x%x (185x PG10) is deprecated\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"unsupported chip id: 0x%x\00", align 1
@CMD_TEMPL_CFG_PROBE_REQ_2_4 = common dso_local global i32 0, align 4
@CMD_TEMPL_CFG_PROBE_REQ_5 = common dso_local global i32 0, align 4
@CMD_TEMPL_PROBE_REQ_2_4_PERIODIC = common dso_local global i32 0, align 4
@CMD_TEMPL_PROBE_REQ_5_PERIODIC = common dso_local global i32 0, align 4
@WL18XX_MAX_CHANNELS_5GHZ = common dso_local global i32 0, align 4
@WL18XX_RX_BA_MAX_SESSIONS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wl1271*)* @wl18xx_identify_chip to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wl18xx_identify_chip(%struct.wl1271* %0) #0 {
  %2 = alloca %struct.wl1271*, align 8
  %3 = alloca i32, align 4
  store %struct.wl1271* %0, %struct.wl1271** %2, align 8
  store i32 0, i32* %3, align 4
  %4 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %5 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %4, i32 0, i32 9
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  switch i32 %7, label %51 [
    i32 128, label %8
    i32 129, label %43
  ]

8:                                                ; preds = %1
  %9 = load i32, i32* @DEBUG_BOOT, align 4
  %10 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %11 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %10, i32 0, i32 9
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @wl1271_debug(i32 %9, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %13)
  %15 = load i8*, i8** @WL18XX_FW_NAME, align 8
  %16 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %17 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %16, i32 0, i32 11
  store i8* %15, i8** %17, align 8
  %18 = load i8*, i8** @WL18XX_FW_NAME, align 8
  %19 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %20 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %19, i32 0, i32 10
  store i8* %18, i8** %20, align 8
  %21 = load i32, i32* @WLCORE_QUIRK_RX_BLOCKSIZE_ALIGN, align 4
  %22 = load i32, i32* @WLCORE_QUIRK_TX_BLOCKSIZE_ALIGN, align 4
  %23 = or i32 %21, %22
  %24 = load i32, i32* @WLCORE_QUIRK_NO_SCHED_SCAN_WHILE_CONN, align 4
  %25 = or i32 %23, %24
  %26 = load i32, i32* @WLCORE_QUIRK_TX_PAD_LAST_FRAME, align 4
  %27 = or i32 %25, %26
  %28 = load i32, i32* @WLCORE_QUIRK_REGDOMAIN_CONF, align 4
  %29 = or i32 %27, %28
  %30 = load i32, i32* @WLCORE_QUIRK_DUAL_PROBE_TMPL, align 4
  %31 = or i32 %29, %30
  %32 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %33 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = or i32 %34, %31
  store i32 %35, i32* %33, align 8
  %36 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %37 = load i32, i32* @WL18XX_CHIP_VER, align 4
  %38 = load i32, i32* @WL18XX_IFTYPE_VER, align 4
  %39 = load i32, i32* @WL18XX_MAJOR_VER, align 4
  %40 = load i32, i32* @WL18XX_SUBTYPE_VER, align 4
  %41 = load i32, i32* @WL18XX_MINOR_VER, align 4
  %42 = call i32 @wlcore_set_min_fw_ver(%struct.wl1271* %36, i32 %37, i32 %38, i32 %39, i32 %40, i32 %41, i32 0, i32 0, i32 0, i32 0)
  br label %59

43:                                               ; preds = %1
  %44 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %45 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %44, i32 0, i32 9
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @wl1271_warning(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %47)
  %49 = load i32, i32* @ENODEV, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %3, align 4
  br label %82

51:                                               ; preds = %1
  %52 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %53 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %52, i32 0, i32 9
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @wl1271_warning(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i32 %55)
  %57 = load i32, i32* @ENODEV, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %3, align 4
  br label %82

59:                                               ; preds = %8
  %60 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %61 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %60, i32 0, i32 1
  store i32 272, i32* %61, align 4
  %62 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %63 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %62, i32 0, i32 2
  store i32 1073741824, i32* %63, align 8
  %64 = load i32, i32* @CMD_TEMPL_CFG_PROBE_REQ_2_4, align 4
  %65 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %66 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %65, i32 0, i32 8
  store i32 %64, i32* %66, align 8
  %67 = load i32, i32* @CMD_TEMPL_CFG_PROBE_REQ_5, align 4
  %68 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %69 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %68, i32 0, i32 7
  store i32 %67, i32* %69, align 4
  %70 = load i32, i32* @CMD_TEMPL_PROBE_REQ_2_4_PERIODIC, align 4
  %71 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %72 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %71, i32 0, i32 6
  store i32 %70, i32* %72, align 8
  %73 = load i32, i32* @CMD_TEMPL_PROBE_REQ_5_PERIODIC, align 4
  %74 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %75 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %74, i32 0, i32 5
  store i32 %73, i32* %75, align 4
  %76 = load i32, i32* @WL18XX_MAX_CHANNELS_5GHZ, align 4
  %77 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %78 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %77, i32 0, i32 4
  store i32 %76, i32* %78, align 8
  %79 = load i32, i32* @WL18XX_RX_BA_MAX_SESSIONS, align 4
  %80 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %81 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %80, i32 0, i32 3
  store i32 %79, i32* %81, align 4
  br label %82

82:                                               ; preds = %59, %51, %43
  %83 = load i32, i32* %3, align 4
  ret i32 %83
}

declare dso_local i32 @wl1271_debug(i32, i8*, i32) #1

declare dso_local i32 @wlcore_set_min_fw_ver(%struct.wl1271*, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @wl1271_warning(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
