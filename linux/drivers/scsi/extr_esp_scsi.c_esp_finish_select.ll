; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_esp_scsi.c_esp_finish_select.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_esp_scsi.c_esp_finish_select.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.esp = type { i32, i32, i64, i32, i32, i32, %struct.esp_target_data*, %struct.esp_cmd_entry*, i32, i64, i32*, %struct.TYPE_2__*, i32 }
%struct.esp_target_data = type { i32 }
%struct.esp_cmd_entry = type { i32, i32, %struct.scsi_cmnd* }
%struct.scsi_cmnd = type { %struct.scsi_device* }
%struct.scsi_device = type { i64, i32 }
%struct.TYPE_2__ = type { {}*, i64 (%struct.esp*)* }

@ESP_SELECT_NONE = common dso_local global i32 0, align 4
@ESP_SSTEP = common dso_local global i32 0, align 4
@ESP_STEP_VBITS = common dso_local global i32 0, align 4
@DID_ERROR = common dso_local global i32 0, align 4
@ESP_INTR_RSEL = common dso_local global i32 0, align 4
@ESP_INTR_FDONE = common dso_local global i32 0, align 4
@ESP_CMD_FLAG_AUTOSENSE = common dso_local global i32 0, align 4
@ESP_TGT_NEGO_SYNC = common dso_local global i32 0, align 4
@ESP_TGT_NEGO_WIDE = common dso_local global i32 0, align 4
@ESP_INTR_DC = common dso_local global i32 0, align 4
@ESP_TGT_CHECK_NEGO = common dso_local global i32 0, align 4
@ESP_CMD_ESEL = common dso_local global i32 0, align 4
@DID_BAD_TARGET = common dso_local global i32 0, align 4
@ESP_INTR_BSERV = common dso_local global i32 0, align 4
@ESP236 = common dso_local global i64 0, align 8
@ESP_FFLAGS = common dso_local global i32 0, align 4
@ESP_FF_FBYTES = common dso_local global i32 0, align 4
@ESP_CMD_NULL = common dso_local global i32 0, align 4
@ESP_STAT_PMASK = common dso_local global i32 0, align 4
@ESP_DIP = common dso_local global i32 0, align 4
@ESP_EVENT_CHECK_PHASE = common dso_local global i32 0, align 4
@KERN_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"Unexpected selection completion ireg[%x]\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.esp*)* @esp_finish_select to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @esp_finish_select(%struct.esp* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.esp*, align 8
  %4 = alloca %struct.esp_cmd_entry*, align 8
  %5 = alloca %struct.scsi_cmnd*, align 8
  %6 = alloca %struct.esp_target_data*, align 8
  %7 = alloca %struct.scsi_device*, align 8
  %8 = alloca i32, align 4
  store %struct.esp* %0, %struct.esp** %3, align 8
  %9 = load i32, i32* @ESP_SELECT_NONE, align 4
  %10 = load %struct.esp*, %struct.esp** %3, align 8
  %11 = getelementptr inbounds %struct.esp, %struct.esp* %10, i32 0, i32 12
  store i32 %9, i32* %11, align 8
  %12 = load i32, i32* @ESP_SSTEP, align 4
  %13 = call i32 @esp_read8(i32 %12)
  %14 = load i32, i32* @ESP_STEP_VBITS, align 4
  %15 = and i32 %13, %14
  %16 = load %struct.esp*, %struct.esp** %3, align 8
  %17 = getelementptr inbounds %struct.esp, %struct.esp* %16, i32 0, i32 0
  store i32 %15, i32* %17, align 8
  %18 = load %struct.esp*, %struct.esp** %3, align 8
  %19 = getelementptr inbounds %struct.esp, %struct.esp* %18, i32 0, i32 7
  %20 = load %struct.esp_cmd_entry*, %struct.esp_cmd_entry** %19, align 8
  store %struct.esp_cmd_entry* %20, %struct.esp_cmd_entry** %4, align 8
  %21 = load %struct.esp_cmd_entry*, %struct.esp_cmd_entry** %4, align 8
  %22 = getelementptr inbounds %struct.esp_cmd_entry, %struct.esp_cmd_entry* %21, i32 0, i32 2
  %23 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %22, align 8
  store %struct.scsi_cmnd* %23, %struct.scsi_cmnd** %5, align 8
  %24 = load %struct.esp*, %struct.esp** %3, align 8
  %25 = getelementptr inbounds %struct.esp, %struct.esp* %24, i32 0, i32 11
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 1
  %28 = load i64 (%struct.esp*)*, i64 (%struct.esp*)** %27, align 8
  %29 = load %struct.esp*, %struct.esp** %3, align 8
  %30 = call i64 %28(%struct.esp* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %41

32:                                               ; preds = %1
  %33 = load %struct.esp*, %struct.esp** %3, align 8
  %34 = call i32 @esp_schedule_reset(%struct.esp* %33)
  %35 = load %struct.esp*, %struct.esp** %3, align 8
  %36 = load %struct.esp_cmd_entry*, %struct.esp_cmd_entry** %4, align 8
  %37 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %38 = load i32, i32* @DID_ERROR, align 4
  %39 = shl i32 %38, 16
  %40 = call i32 @esp_cmd_is_done(%struct.esp* %35, %struct.esp_cmd_entry* %36, %struct.scsi_cmnd* %37, i32 %39)
  store i32 0, i32* %2, align 4
  br label %194

41:                                               ; preds = %1
  %42 = load %struct.esp*, %struct.esp** %3, align 8
  %43 = getelementptr inbounds %struct.esp, %struct.esp* %42, i32 0, i32 11
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = bitcast {}** %45 to i32 (%struct.esp*)**
  %47 = load i32 (%struct.esp*)*, i32 (%struct.esp*)** %46, align 8
  %48 = load %struct.esp*, %struct.esp** %3, align 8
  %49 = call i32 %47(%struct.esp* %48)
  %50 = load %struct.esp*, %struct.esp** %3, align 8
  %51 = getelementptr inbounds %struct.esp, %struct.esp* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @ESP_INTR_RSEL, align 4
  %54 = load i32, i32* @ESP_INTR_FDONE, align 4
  %55 = or i32 %53, %54
  %56 = icmp eq i32 %52, %55
  br i1 %56, label %57, label %108

57:                                               ; preds = %41
  %58 = load %struct.esp*, %struct.esp** %3, align 8
  %59 = getelementptr inbounds %struct.esp, %struct.esp* %58, i32 0, i32 6
  %60 = load %struct.esp_target_data*, %struct.esp_target_data** %59, align 8
  %61 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %62 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %61, i32 0, i32 0
  %63 = load %struct.scsi_device*, %struct.scsi_device** %62, align 8
  %64 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = getelementptr inbounds %struct.esp_target_data, %struct.esp_target_data* %60, i64 %65
  store %struct.esp_target_data* %66, %struct.esp_target_data** %6, align 8
  %67 = load %struct.esp_cmd_entry*, %struct.esp_cmd_entry** %4, align 8
  %68 = getelementptr inbounds %struct.esp_cmd_entry, %struct.esp_cmd_entry* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = load i32, i32* @ESP_CMD_FLAG_AUTOSENSE, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %96, label %73

73:                                               ; preds = %57
  %74 = load %struct.esp*, %struct.esp** %3, align 8
  %75 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %76 = call i32 @esp_unmap_dma(%struct.esp* %74, %struct.scsi_cmnd* %75)
  %77 = load %struct.esp_cmd_entry*, %struct.esp_cmd_entry** %4, align 8
  %78 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %79 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %78, i32 0, i32 0
  %80 = load %struct.scsi_device*, %struct.scsi_device** %79, align 8
  %81 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 8
  %83 = call i32 @esp_free_lun_tag(%struct.esp_cmd_entry* %77, i32 %82)
  %84 = load i32, i32* @ESP_TGT_NEGO_SYNC, align 4
  %85 = load i32, i32* @ESP_TGT_NEGO_WIDE, align 4
  %86 = or i32 %84, %85
  %87 = xor i32 %86, -1
  %88 = load %struct.esp_target_data*, %struct.esp_target_data** %6, align 8
  %89 = getelementptr inbounds %struct.esp_target_data, %struct.esp_target_data* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = and i32 %90, %87
  store i32 %91, i32* %89, align 4
  %92 = load %struct.esp*, %struct.esp** %3, align 8
  %93 = getelementptr inbounds %struct.esp, %struct.esp* %92, i32 0, i32 10
  store i32* null, i32** %93, align 8
  %94 = load %struct.esp*, %struct.esp** %3, align 8
  %95 = getelementptr inbounds %struct.esp, %struct.esp* %94, i32 0, i32 9
  store i64 0, i64* %95, align 8
  br label %100

96:                                               ; preds = %57
  %97 = load %struct.esp*, %struct.esp** %3, align 8
  %98 = load %struct.esp_cmd_entry*, %struct.esp_cmd_entry** %4, align 8
  %99 = call i32 @esp_unmap_sense(%struct.esp* %97, %struct.esp_cmd_entry* %98)
  br label %100

100:                                              ; preds = %96, %73
  %101 = load %struct.esp_cmd_entry*, %struct.esp_cmd_entry** %4, align 8
  %102 = getelementptr inbounds %struct.esp_cmd_entry, %struct.esp_cmd_entry* %101, i32 0, i32 1
  %103 = load %struct.esp*, %struct.esp** %3, align 8
  %104 = getelementptr inbounds %struct.esp, %struct.esp* %103, i32 0, i32 8
  %105 = call i32 @list_move(i32* %102, i32* %104)
  %106 = load %struct.esp*, %struct.esp** %3, align 8
  %107 = getelementptr inbounds %struct.esp, %struct.esp* %106, i32 0, i32 7
  store %struct.esp_cmd_entry* null, %struct.esp_cmd_entry** %107, align 8
  store i32 0, i32* %2, align 4
  br label %194

108:                                              ; preds = %41
  %109 = load %struct.esp*, %struct.esp** %3, align 8
  %110 = getelementptr inbounds %struct.esp, %struct.esp* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = load i32, i32* @ESP_INTR_DC, align 4
  %113 = icmp eq i32 %111, %112
  br i1 %113, label %114, label %138

114:                                              ; preds = %108
  %115 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %116 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %115, i32 0, i32 0
  %117 = load %struct.scsi_device*, %struct.scsi_device** %116, align 8
  store %struct.scsi_device* %117, %struct.scsi_device** %7, align 8
  %118 = load i32, i32* @ESP_TGT_CHECK_NEGO, align 4
  %119 = load %struct.esp*, %struct.esp** %3, align 8
  %120 = getelementptr inbounds %struct.esp, %struct.esp* %119, i32 0, i32 6
  %121 = load %struct.esp_target_data*, %struct.esp_target_data** %120, align 8
  %122 = load %struct.scsi_device*, %struct.scsi_device** %7, align 8
  %123 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %122, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = getelementptr inbounds %struct.esp_target_data, %struct.esp_target_data* %121, i64 %124
  %126 = getelementptr inbounds %struct.esp_target_data, %struct.esp_target_data* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = or i32 %127, %118
  store i32 %128, i32* %126, align 4
  %129 = load %struct.esp*, %struct.esp** %3, align 8
  %130 = load i32, i32* @ESP_CMD_ESEL, align 4
  %131 = call i32 @scsi_esp_cmd(%struct.esp* %129, i32 %130)
  %132 = load %struct.esp*, %struct.esp** %3, align 8
  %133 = load %struct.esp_cmd_entry*, %struct.esp_cmd_entry** %4, align 8
  %134 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %135 = load i32, i32* @DID_BAD_TARGET, align 4
  %136 = shl i32 %135, 16
  %137 = call i32 @esp_cmd_is_done(%struct.esp* %132, %struct.esp_cmd_entry* %133, %struct.scsi_cmnd* %134, i32 %136)
  store i32 1, i32* %2, align 4
  br label %194

138:                                              ; preds = %108
  %139 = load %struct.esp*, %struct.esp** %3, align 8
  %140 = getelementptr inbounds %struct.esp, %struct.esp* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 4
  %142 = load i32, i32* @ESP_INTR_FDONE, align 4
  %143 = load i32, i32* @ESP_INTR_BSERV, align 4
  %144 = or i32 %142, %143
  %145 = icmp eq i32 %141, %144
  br i1 %145, label %146, label %183

146:                                              ; preds = %138
  %147 = load %struct.esp*, %struct.esp** %3, align 8
  %148 = getelementptr inbounds %struct.esp, %struct.esp* %147, i32 0, i32 2
  %149 = load i64, i64* %148, align 8
  %150 = load i64, i64* @ESP236, align 8
  %151 = icmp sle i64 %149, %150
  br i1 %151, label %152, label %179

152:                                              ; preds = %146
  %153 = load i32, i32* @ESP_FFLAGS, align 4
  %154 = call i32 @esp_read8(i32 %153)
  %155 = load i32, i32* @ESP_FF_FBYTES, align 4
  %156 = and i32 %154, %155
  store i32 %156, i32* %8, align 4
  %157 = load %struct.esp*, %struct.esp** %3, align 8
  %158 = load i32, i32* @ESP_CMD_NULL, align 4
  %159 = call i32 @scsi_esp_cmd(%struct.esp* %157, i32 %158)
  %160 = load i32, i32* %8, align 4
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %178, label %162

162:                                              ; preds = %152
  %163 = load %struct.esp*, %struct.esp** %3, align 8
  %164 = getelementptr inbounds %struct.esp, %struct.esp* %163, i32 0, i32 5
  %165 = load i32, i32* %164, align 8
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %175

167:                                              ; preds = %162
  %168 = load %struct.esp*, %struct.esp** %3, align 8
  %169 = getelementptr inbounds %struct.esp, %struct.esp* %168, i32 0, i32 3
  %170 = load i32, i32* %169, align 8
  %171 = load i32, i32* @ESP_STAT_PMASK, align 4
  %172 = and i32 %170, %171
  %173 = load i32, i32* @ESP_DIP, align 4
  %174 = icmp ne i32 %172, %173
  br i1 %174, label %175, label %178

175:                                              ; preds = %167, %162
  %176 = load %struct.esp*, %struct.esp** %3, align 8
  %177 = call i32 @esp_flush_fifo(%struct.esp* %176)
  br label %178

178:                                              ; preds = %175, %167, %152
  br label %179

179:                                              ; preds = %178, %146
  %180 = load %struct.esp*, %struct.esp** %3, align 8
  %181 = load i32, i32* @ESP_EVENT_CHECK_PHASE, align 4
  %182 = call i32 @esp_event(%struct.esp* %180, i32 %181)
  store i32 0, i32* %2, align 4
  br label %194

183:                                              ; preds = %138
  %184 = load i32, i32* @KERN_INFO, align 4
  %185 = load %struct.esp*, %struct.esp** %3, align 8
  %186 = getelementptr inbounds %struct.esp, %struct.esp* %185, i32 0, i32 4
  %187 = load i32, i32* %186, align 4
  %188 = load %struct.esp*, %struct.esp** %3, align 8
  %189 = getelementptr inbounds %struct.esp, %struct.esp* %188, i32 0, i32 1
  %190 = load i32, i32* %189, align 4
  %191 = call i32 @shost_printk(i32 %184, i32 %187, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %190)
  %192 = load %struct.esp*, %struct.esp** %3, align 8
  %193 = call i32 @esp_schedule_reset(%struct.esp* %192)
  store i32 0, i32* %2, align 4
  br label %194

194:                                              ; preds = %183, %179, %114, %100, %32
  %195 = load i32, i32* %2, align 4
  ret i32 %195
}

declare dso_local i32 @esp_read8(i32) #1

declare dso_local i32 @esp_schedule_reset(%struct.esp*) #1

declare dso_local i32 @esp_cmd_is_done(%struct.esp*, %struct.esp_cmd_entry*, %struct.scsi_cmnd*, i32) #1

declare dso_local i32 @esp_unmap_dma(%struct.esp*, %struct.scsi_cmnd*) #1

declare dso_local i32 @esp_free_lun_tag(%struct.esp_cmd_entry*, i32) #1

declare dso_local i32 @esp_unmap_sense(%struct.esp*, %struct.esp_cmd_entry*) #1

declare dso_local i32 @list_move(i32*, i32*) #1

declare dso_local i32 @scsi_esp_cmd(%struct.esp*, i32) #1

declare dso_local i32 @esp_flush_fifo(%struct.esp*) #1

declare dso_local i32 @esp_event(%struct.esp*, i32) #1

declare dso_local i32 @shost_printk(i32, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
