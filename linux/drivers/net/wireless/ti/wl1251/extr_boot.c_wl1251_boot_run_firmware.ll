; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wl1251/extr_boot.c_wl1251_boot_run_firmware.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wl1251/extr_boot.c_wl1251_boot_run_firmware.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wl1251 = type { i64, i32, i64, i32, i8*, i8* }

@ECPU_CONTROL_HALT = common dso_local global i32 0, align 4
@CHIP_ID_B = common dso_local global i32 0, align 4
@DEBUG_BOOT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"chip id after firmware boot: 0x%x\00", align 1
@.str.1 = private unnamed_addr constant [42 x i8] c"chip id doesn't match after firmware boot\00", align 1
@EIO = common dso_local global i32 0, align 4
@INIT_LOOP = common dso_local global i32 0, align 4
@INIT_LOOP_DELAY = common dso_local global i32 0, align 4
@ACX_REG_INTERRUPT_NO_CLEAR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [48 x i8] c"error reading hardware complete init indication\00", align 1
@WL1251_ACX_INTR_INIT_COMPLETE = common dso_local global i64 0, align 8
@ACX_REG_INTERRUPT_ACK = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [60 x i8] c"timeout waiting for the hardware to complete initialization\00", align 1
@REG_COMMAND_MAILBOX_PTR = common dso_local global i32 0, align 4
@REG_EVENT_MAILBOX_PTR = common dso_local global i32 0, align 4
@WL1251_PART_WORK_MEM_START = common dso_local global i32 0, align 4
@WL1251_PART_WORK_MEM_SIZE = common dso_local global i32 0, align 4
@WL1251_PART_WORK_REG_START = common dso_local global i32 0, align 4
@WL1251_PART_WORK_REG_SIZE = common dso_local global i32 0, align 4
@DEBUG_MAILBOX = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [38 x i8] c"cmd_box_addr 0x%x event_box_addr 0x%x\00", align 1
@WL1251_ACX_INTR_RX0_DATA = common dso_local global i64 0, align 8
@WL1251_ACX_INTR_RX1_DATA = common dso_local global i64 0, align 8
@WL1251_ACX_INTR_TX_RESULT = common dso_local global i64 0, align 8
@WL1251_ACX_INTR_EVENT_A = common dso_local global i64 0, align 8
@WL1251_ACX_INTR_EVENT_B = common dso_local global i64 0, align 8
@SCAN_COMPLETE_EVENT_ID = common dso_local global i32 0, align 4
@BSS_LOSE_EVENT_ID = common dso_local global i32 0, align 4
@SYNCHRONIZATION_TIMEOUT_EVENT_ID = common dso_local global i32 0, align 4
@ROAMING_TRIGGER_LOW_RSSI_EVENT_ID = common dso_local global i32 0, align 4
@ROAMING_TRIGGER_REGAINED_RSSI_EVENT_ID = common dso_local global i32 0, align 4
@REGAINED_BSS_EVENT_ID = common dso_local global i32 0, align 4
@BT_PTA_SENSE_EVENT_ID = common dso_local global i32 0, align 4
@BT_PTA_PREDICTION_EVENT_ID = common dso_local global i32 0, align 4
@JOIN_EVENT_COMPLETE_ID = common dso_local global i32 0, align 4
@PS_REPORT_EVENT_ID = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [26 x i8] c"EVENT mask setting failed\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wl1251_boot_run_firmware(%struct.wl1251* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.wl1251*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.wl1251* %0, %struct.wl1251** %3, align 8
  %8 = load %struct.wl1251*, %struct.wl1251** %3, align 8
  %9 = load i32, i32* @ECPU_CONTROL_HALT, align 4
  %10 = call i32 @wl1251_boot_set_ecpu_ctrl(%struct.wl1251* %8, i32 %9)
  %11 = load %struct.wl1251*, %struct.wl1251** %3, align 8
  %12 = load i32, i32* @CHIP_ID_B, align 4
  %13 = call i8* @wl1251_reg_read32(%struct.wl1251* %11, i32 %12)
  %14 = ptrtoint i8* %13 to i64
  store i64 %14, i64* %6, align 8
  %15 = load i32, i32* @DEBUG_BOOT, align 4
  %16 = load i64, i64* %6, align 8
  %17 = call i32 (i32, i8*, i64, ...) @wl1251_debug(i32 %15, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i64 %16)
  %18 = load i64, i64* %6, align 8
  %19 = load %struct.wl1251*, %struct.wl1251** %3, align 8
  %20 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %18, %21
  br i1 %22, label %23, label %27

23:                                               ; preds = %1
  %24 = call i32 @wl1251_error(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0))
  %25 = load i32, i32* @EIO, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %2, align 4
  br label %145

27:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  br label %28

28:                                               ; preds = %57, %27
  %29 = load i32, i32* %4, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %4, align 4
  %31 = load i32, i32* @INIT_LOOP, align 4
  %32 = icmp slt i32 %29, %31
  br i1 %32, label %33, label %58

33:                                               ; preds = %28
  %34 = load i32, i32* @INIT_LOOP_DELAY, align 4
  %35 = call i32 @udelay(i32 %34)
  %36 = load %struct.wl1251*, %struct.wl1251** %3, align 8
  %37 = load i32, i32* @ACX_REG_INTERRUPT_NO_CLEAR, align 4
  %38 = call i8* @wl1251_reg_read32(%struct.wl1251* %36, i32 %37)
  %39 = ptrtoint i8* %38 to i64
  store i64 %39, i64* %7, align 8
  %40 = load i64, i64* %7, align 8
  %41 = icmp eq i64 %40, 4294967295
  br i1 %41, label %42, label %46

42:                                               ; preds = %33
  %43 = call i32 @wl1251_error(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.2, i64 0, i64 0))
  %44 = load i32, i32* @EIO, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %2, align 4
  br label %145

46:                                               ; preds = %33
  %47 = load i64, i64* %7, align 8
  %48 = load i64, i64* @WL1251_ACX_INTR_INIT_COMPLETE, align 8
  %49 = and i64 %47, %48
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %56

51:                                               ; preds = %46
  %52 = load %struct.wl1251*, %struct.wl1251** %3, align 8
  %53 = load i32, i32* @ACX_REG_INTERRUPT_ACK, align 4
  %54 = load i64, i64* @WL1251_ACX_INTR_INIT_COMPLETE, align 8
  %55 = call i32 @wl1251_reg_write32(%struct.wl1251* %52, i32 %53, i64 %54)
  br label %58

56:                                               ; preds = %46
  br label %57

57:                                               ; preds = %56
  br label %28

58:                                               ; preds = %51, %28
  %59 = load i32, i32* %4, align 4
  %60 = load i32, i32* @INIT_LOOP, align 4
  %61 = icmp sgt i32 %59, %60
  br i1 %61, label %62, label %66

62:                                               ; preds = %58
  %63 = call i32 @wl1251_error(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.3, i64 0, i64 0))
  %64 = load i32, i32* @EIO, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %2, align 4
  br label %145

66:                                               ; preds = %58
  %67 = load %struct.wl1251*, %struct.wl1251** %3, align 8
  %68 = load i32, i32* @REG_COMMAND_MAILBOX_PTR, align 4
  %69 = call i8* @wl1251_reg_read32(%struct.wl1251* %67, i32 %68)
  %70 = load %struct.wl1251*, %struct.wl1251** %3, align 8
  %71 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %70, i32 0, i32 5
  store i8* %69, i8** %71, align 8
  %72 = load %struct.wl1251*, %struct.wl1251** %3, align 8
  %73 = load i32, i32* @REG_EVENT_MAILBOX_PTR, align 4
  %74 = call i8* @wl1251_reg_read32(%struct.wl1251* %72, i32 %73)
  %75 = load %struct.wl1251*, %struct.wl1251** %3, align 8
  %76 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %75, i32 0, i32 4
  store i8* %74, i8** %76, align 8
  %77 = load %struct.wl1251*, %struct.wl1251** %3, align 8
  %78 = load i32, i32* @WL1251_PART_WORK_MEM_START, align 4
  %79 = load i32, i32* @WL1251_PART_WORK_MEM_SIZE, align 4
  %80 = load i32, i32* @WL1251_PART_WORK_REG_START, align 4
  %81 = load i32, i32* @WL1251_PART_WORK_REG_SIZE, align 4
  %82 = call i32 @wl1251_set_partition(%struct.wl1251* %77, i32 %78, i32 %79, i32 %80, i32 %81)
  %83 = load i32, i32* @DEBUG_MAILBOX, align 4
  %84 = load %struct.wl1251*, %struct.wl1251** %3, align 8
  %85 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %84, i32 0, i32 5
  %86 = load i8*, i8** %85, align 8
  %87 = ptrtoint i8* %86 to i64
  %88 = load %struct.wl1251*, %struct.wl1251** %3, align 8
  %89 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %88, i32 0, i32 4
  %90 = load i8*, i8** %89, align 8
  %91 = call i32 (i32, i8*, i64, ...) @wl1251_debug(i32 %83, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i64 0, i64 0), i64 %87, i8* %90)
  %92 = load %struct.wl1251*, %struct.wl1251** %3, align 8
  %93 = load %struct.wl1251*, %struct.wl1251** %3, align 8
  %94 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %93, i32 0, i32 3
  %95 = load i32, i32* %94, align 8
  %96 = call i32 @wl1251_acx_fw_version(%struct.wl1251* %92, i32 %95, i32 4)
  %97 = load %struct.wl1251*, %struct.wl1251** %3, align 8
  %98 = call i32 @wl1251_enable_interrupts(%struct.wl1251* %97)
  %99 = load i64, i64* @WL1251_ACX_INTR_RX0_DATA, align 8
  %100 = load i64, i64* @WL1251_ACX_INTR_RX1_DATA, align 8
  %101 = or i64 %99, %100
  %102 = load i64, i64* @WL1251_ACX_INTR_TX_RESULT, align 8
  %103 = or i64 %101, %102
  %104 = load i64, i64* @WL1251_ACX_INTR_EVENT_A, align 8
  %105 = or i64 %103, %104
  %106 = load i64, i64* @WL1251_ACX_INTR_EVENT_B, align 8
  %107 = or i64 %105, %106
  %108 = load i64, i64* @WL1251_ACX_INTR_INIT_COMPLETE, align 8
  %109 = or i64 %107, %108
  %110 = load %struct.wl1251*, %struct.wl1251** %3, align 8
  %111 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %110, i32 0, i32 2
  store i64 %109, i64* %111, align 8
  %112 = load %struct.wl1251*, %struct.wl1251** %3, align 8
  %113 = call i32 @wl1251_boot_target_enable_interrupts(%struct.wl1251* %112)
  %114 = load i32, i32* @SCAN_COMPLETE_EVENT_ID, align 4
  %115 = load i32, i32* @BSS_LOSE_EVENT_ID, align 4
  %116 = or i32 %114, %115
  %117 = load i32, i32* @SYNCHRONIZATION_TIMEOUT_EVENT_ID, align 4
  %118 = or i32 %116, %117
  %119 = load i32, i32* @ROAMING_TRIGGER_LOW_RSSI_EVENT_ID, align 4
  %120 = or i32 %118, %119
  %121 = load i32, i32* @ROAMING_TRIGGER_REGAINED_RSSI_EVENT_ID, align 4
  %122 = or i32 %120, %121
  %123 = load i32, i32* @REGAINED_BSS_EVENT_ID, align 4
  %124 = or i32 %122, %123
  %125 = load i32, i32* @BT_PTA_SENSE_EVENT_ID, align 4
  %126 = or i32 %124, %125
  %127 = load i32, i32* @BT_PTA_PREDICTION_EVENT_ID, align 4
  %128 = or i32 %126, %127
  %129 = load i32, i32* @JOIN_EVENT_COMPLETE_ID, align 4
  %130 = or i32 %128, %129
  %131 = load i32, i32* @PS_REPORT_EVENT_ID, align 4
  %132 = or i32 %130, %131
  %133 = load %struct.wl1251*, %struct.wl1251** %3, align 8
  %134 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %133, i32 0, i32 1
  store i32 %132, i32* %134, align 8
  %135 = load %struct.wl1251*, %struct.wl1251** %3, align 8
  %136 = call i32 @wl1251_event_unmask(%struct.wl1251* %135)
  store i32 %136, i32* %5, align 4
  %137 = load i32, i32* %5, align 4
  %138 = icmp slt i32 %137, 0
  br i1 %138, label %139, label %142

139:                                              ; preds = %66
  %140 = call i32 @wl1251_error(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0))
  %141 = load i32, i32* %5, align 4
  store i32 %141, i32* %2, align 4
  br label %145

142:                                              ; preds = %66
  %143 = load %struct.wl1251*, %struct.wl1251** %3, align 8
  %144 = call i32 @wl1251_event_mbox_config(%struct.wl1251* %143)
  store i32 0, i32* %2, align 4
  br label %145

145:                                              ; preds = %142, %139, %62, %42, %23
  %146 = load i32, i32* %2, align 4
  ret i32 %146
}

declare dso_local i32 @wl1251_boot_set_ecpu_ctrl(%struct.wl1251*, i32) #1

declare dso_local i8* @wl1251_reg_read32(%struct.wl1251*, i32) #1

declare dso_local i32 @wl1251_debug(i32, i8*, i64, ...) #1

declare dso_local i32 @wl1251_error(i8*) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @wl1251_reg_write32(%struct.wl1251*, i32, i64) #1

declare dso_local i32 @wl1251_set_partition(%struct.wl1251*, i32, i32, i32, i32) #1

declare dso_local i32 @wl1251_acx_fw_version(%struct.wl1251*, i32, i32) #1

declare dso_local i32 @wl1251_enable_interrupts(%struct.wl1251*) #1

declare dso_local i32 @wl1251_boot_target_enable_interrupts(%struct.wl1251*) #1

declare dso_local i32 @wl1251_event_unmask(%struct.wl1251*) #1

declare dso_local i32 @wl1251_event_mbox_config(%struct.wl1251*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
