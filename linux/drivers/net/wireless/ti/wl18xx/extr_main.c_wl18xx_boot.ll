; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wl18xx/extr_main.c_wl18xx_boot.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wl18xx/extr_main.c_wl18xx_boot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wl1271 = type { i32, i32 }

@BSS_LOSS_EVENT_ID = common dso_local global i32 0, align 4
@SCAN_COMPLETE_EVENT_ID = common dso_local global i32 0, align 4
@RADAR_DETECTED_EVENT_ID = common dso_local global i32 0, align 4
@RSSI_SNR_TRIGGER_0_EVENT_ID = common dso_local global i32 0, align 4
@PERIODIC_SCAN_COMPLETE_EVENT_ID = common dso_local global i32 0, align 4
@PERIODIC_SCAN_REPORT_EVENT_ID = common dso_local global i32 0, align 4
@DUMMY_PACKET_EVENT_ID = common dso_local global i32 0, align 4
@PEER_REMOVE_COMPLETE_EVENT_ID = common dso_local global i32 0, align 4
@BA_SESSION_RX_CONSTRAINT_EVENT_ID = common dso_local global i32 0, align 4
@REMAIN_ON_CHANNEL_COMPLETE_EVENT_ID = common dso_local global i32 0, align 4
@INACTIVE_STA_EVENT_ID = common dso_local global i32 0, align 4
@CHANNEL_SWITCH_COMPLETE_EVENT_ID = common dso_local global i32 0, align 4
@DFS_CHANNELS_CONFIG_COMPLETE_EVENT = common dso_local global i32 0, align 4
@SMART_CONFIG_SYNC_EVENT_ID = common dso_local global i32 0, align 4
@SMART_CONFIG_DECODE_EVENT_ID = common dso_local global i32 0, align 4
@TIME_SYNC_EVENT_ID = common dso_local global i32 0, align 4
@FW_LOGGER_INDICATION = common dso_local global i32 0, align 4
@RX_BA_WIN_SIZE_CHANGE_EVENT_ID = common dso_local global i32 0, align 4
@MAX_TX_FAILURE_EVENT_ID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wl1271*)* @wl18xx_boot to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wl18xx_boot(%struct.wl1271* %0) #0 {
  %2 = alloca %struct.wl1271*, align 8
  %3 = alloca i32, align 4
  store %struct.wl1271* %0, %struct.wl1271** %2, align 8
  %4 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %5 = call i32 @wl18xx_pre_boot(%struct.wl1271* %4)
  store i32 %5, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = icmp slt i32 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  br label %76

9:                                                ; preds = %1
  %10 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %11 = call i32 @wl18xx_pre_upload(%struct.wl1271* %10)
  store i32 %11, i32* %3, align 4
  %12 = load i32, i32* %3, align 4
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %9
  br label %76

15:                                               ; preds = %9
  %16 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %17 = call i32 @wlcore_boot_upload_firmware(%struct.wl1271* %16)
  store i32 %17, i32* %3, align 4
  %18 = load i32, i32* %3, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %15
  br label %76

21:                                               ; preds = %15
  %22 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %23 = call i32 @wl18xx_set_mac_and_phy(%struct.wl1271* %22)
  store i32 %23, i32* %3, align 4
  %24 = load i32, i32* %3, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %21
  br label %76

27:                                               ; preds = %21
  %28 = load i32, i32* @BSS_LOSS_EVENT_ID, align 4
  %29 = load i32, i32* @SCAN_COMPLETE_EVENT_ID, align 4
  %30 = or i32 %28, %29
  %31 = load i32, i32* @RADAR_DETECTED_EVENT_ID, align 4
  %32 = or i32 %30, %31
  %33 = load i32, i32* @RSSI_SNR_TRIGGER_0_EVENT_ID, align 4
  %34 = or i32 %32, %33
  %35 = load i32, i32* @PERIODIC_SCAN_COMPLETE_EVENT_ID, align 4
  %36 = or i32 %34, %35
  %37 = load i32, i32* @PERIODIC_SCAN_REPORT_EVENT_ID, align 4
  %38 = or i32 %36, %37
  %39 = load i32, i32* @DUMMY_PACKET_EVENT_ID, align 4
  %40 = or i32 %38, %39
  %41 = load i32, i32* @PEER_REMOVE_COMPLETE_EVENT_ID, align 4
  %42 = or i32 %40, %41
  %43 = load i32, i32* @BA_SESSION_RX_CONSTRAINT_EVENT_ID, align 4
  %44 = or i32 %42, %43
  %45 = load i32, i32* @REMAIN_ON_CHANNEL_COMPLETE_EVENT_ID, align 4
  %46 = or i32 %44, %45
  %47 = load i32, i32* @INACTIVE_STA_EVENT_ID, align 4
  %48 = or i32 %46, %47
  %49 = load i32, i32* @CHANNEL_SWITCH_COMPLETE_EVENT_ID, align 4
  %50 = or i32 %48, %49
  %51 = load i32, i32* @DFS_CHANNELS_CONFIG_COMPLETE_EVENT, align 4
  %52 = or i32 %50, %51
  %53 = load i32, i32* @SMART_CONFIG_SYNC_EVENT_ID, align 4
  %54 = or i32 %52, %53
  %55 = load i32, i32* @SMART_CONFIG_DECODE_EVENT_ID, align 4
  %56 = or i32 %54, %55
  %57 = load i32, i32* @TIME_SYNC_EVENT_ID, align 4
  %58 = or i32 %56, %57
  %59 = load i32, i32* @FW_LOGGER_INDICATION, align 4
  %60 = or i32 %58, %59
  %61 = load i32, i32* @RX_BA_WIN_SIZE_CHANGE_EVENT_ID, align 4
  %62 = or i32 %60, %61
  %63 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %64 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %63, i32 0, i32 0
  store i32 %62, i32* %64, align 4
  %65 = load i32, i32* @MAX_TX_FAILURE_EVENT_ID, align 4
  %66 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %67 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %66, i32 0, i32 1
  store i32 %65, i32* %67, align 4
  %68 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %69 = call i32 @wlcore_boot_run_firmware(%struct.wl1271* %68)
  store i32 %69, i32* %3, align 4
  %70 = load i32, i32* %3, align 4
  %71 = icmp slt i32 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %27
  br label %76

73:                                               ; preds = %27
  %74 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %75 = call i32 @wl18xx_enable_interrupts(%struct.wl1271* %74)
  store i32 %75, i32* %3, align 4
  br label %76

76:                                               ; preds = %73, %72, %26, %20, %14, %8
  %77 = load i32, i32* %3, align 4
  ret i32 %77
}

declare dso_local i32 @wl18xx_pre_boot(%struct.wl1271*) #1

declare dso_local i32 @wl18xx_pre_upload(%struct.wl1271*) #1

declare dso_local i32 @wlcore_boot_upload_firmware(%struct.wl1271*) #1

declare dso_local i32 @wl18xx_set_mac_and_phy(%struct.wl1271*) #1

declare dso_local i32 @wlcore_boot_run_firmware(%struct.wl1271*) #1

declare dso_local i32 @wl18xx_enable_interrupts(%struct.wl1271*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
