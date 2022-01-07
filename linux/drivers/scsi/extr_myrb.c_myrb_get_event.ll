; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_myrb.c_myrb_get_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_myrb.c_myrb_get_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.myrb_hba = type { %struct.TYPE_4__*, i32, %struct.myrb_cmdblk }
%struct.TYPE_4__ = type { i32 }
%struct.myrb_cmdblk = type { %union.myrb_cmd_mbox }
%union.myrb_cmd_mbox = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32 }
%struct.myrb_log_entry = type { i32, i32, i32, i32 }
%struct.scsi_sense_hdr = type { i64, i32, i64 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@MYRB_MCMD_TAG = common dso_local global i32 0, align 4
@MYRB_CMD_EVENT_LOG_OPERATION = common dso_local global i32 0, align 4
@DAC960_V1_GetEventLogEntry = common dso_local global i32 0, align 4
@MYRB_STATUS_SUCCESS = common dso_local global i16 0, align 2
@KERN_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"Failed to get event log %d, status %04x\0A\00", align 1
@VENDOR_SPECIFIC = common dso_local global i64 0, align 8
@myrb_event_msg = common dso_local global i32* null, align 8
@KERN_CRIT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"Physical drive %d:%d: %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [43 x i8] c"Physical drive %d:%d: Sense: %X/%02X/%02X\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.myrb_hba*, i32)* @myrb_get_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @myrb_get_event(%struct.myrb_hba* %0, i32 %1) #0 {
  %3 = alloca %struct.myrb_hba*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.myrb_cmdblk*, align 8
  %6 = alloca %union.myrb_cmd_mbox*, align 8
  %7 = alloca %struct.myrb_log_entry*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i16, align 2
  %10 = alloca %struct.scsi_sense_hdr, align 8
  store %struct.myrb_hba* %0, %struct.myrb_hba** %3, align 8
  store i32 %1, i32* %4, align 4
  %11 = load %struct.myrb_hba*, %struct.myrb_hba** %3, align 8
  %12 = getelementptr inbounds %struct.myrb_hba, %struct.myrb_hba* %11, i32 0, i32 2
  store %struct.myrb_cmdblk* %12, %struct.myrb_cmdblk** %5, align 8
  %13 = load %struct.myrb_cmdblk*, %struct.myrb_cmdblk** %5, align 8
  %14 = getelementptr inbounds %struct.myrb_cmdblk, %struct.myrb_cmdblk* %13, i32 0, i32 0
  store %union.myrb_cmd_mbox* %14, %union.myrb_cmd_mbox** %6, align 8
  %15 = load %struct.myrb_hba*, %struct.myrb_hba** %3, align 8
  %16 = getelementptr inbounds %struct.myrb_hba, %struct.myrb_hba* %15, i32 0, i32 0
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i32, i32* @GFP_KERNEL, align 4
  %20 = call %struct.myrb_log_entry* @dma_alloc_coherent(i32* %18, i32 16, i32* %8, i32 %19)
  store %struct.myrb_log_entry* %20, %struct.myrb_log_entry** %7, align 8
  %21 = load %struct.myrb_log_entry*, %struct.myrb_log_entry** %7, align 8
  %22 = icmp ne %struct.myrb_log_entry* %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %2
  br label %139

24:                                               ; preds = %2
  %25 = load %struct.myrb_cmdblk*, %struct.myrb_cmdblk** %5, align 8
  %26 = call i32 @myrb_reset_cmd(%struct.myrb_cmdblk* %25)
  %27 = load i32, i32* @MYRB_MCMD_TAG, align 4
  %28 = load %union.myrb_cmd_mbox*, %union.myrb_cmd_mbox** %6, align 8
  %29 = bitcast %union.myrb_cmd_mbox* %28 to %struct.TYPE_3__*
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 5
  store i32 %27, i32* %30, align 4
  %31 = load i32, i32* @MYRB_CMD_EVENT_LOG_OPERATION, align 4
  %32 = load %union.myrb_cmd_mbox*, %union.myrb_cmd_mbox** %6, align 8
  %33 = bitcast %union.myrb_cmd_mbox* %32 to %struct.TYPE_3__*
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 4
  store i32 %31, i32* %34, align 4
  %35 = load i32, i32* @DAC960_V1_GetEventLogEntry, align 4
  %36 = load %union.myrb_cmd_mbox*, %union.myrb_cmd_mbox** %6, align 8
  %37 = bitcast %union.myrb_cmd_mbox* %36 to %struct.TYPE_3__*
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 3
  store i32 %35, i32* %38, align 4
  %39 = load %union.myrb_cmd_mbox*, %union.myrb_cmd_mbox** %6, align 8
  %40 = bitcast %union.myrb_cmd_mbox* %39 to %struct.TYPE_3__*
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  store i32 1, i32* %41, align 4
  %42 = load i32, i32* %4, align 4
  %43 = load %union.myrb_cmd_mbox*, %union.myrb_cmd_mbox** %6, align 8
  %44 = bitcast %union.myrb_cmd_mbox* %43 to %struct.TYPE_3__*
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 1
  store i32 %42, i32* %45, align 4
  %46 = load i32, i32* %8, align 4
  %47 = load %union.myrb_cmd_mbox*, %union.myrb_cmd_mbox** %6, align 8
  %48 = bitcast %union.myrb_cmd_mbox* %47 to %struct.TYPE_3__*
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 2
  store i32 %46, i32* %49, align 4
  %50 = load %struct.myrb_hba*, %struct.myrb_hba** %3, align 8
  %51 = load %struct.myrb_cmdblk*, %struct.myrb_cmdblk** %5, align 8
  %52 = call zeroext i16 @myrb_exec_cmd(%struct.myrb_hba* %50, %struct.myrb_cmdblk* %51)
  store i16 %52, i16* %9, align 2
  %53 = load i16, i16* %9, align 2
  %54 = zext i16 %53 to i32
  %55 = load i16, i16* @MYRB_STATUS_SUCCESS, align 2
  %56 = zext i16 %55 to i32
  %57 = icmp ne i32 %54, %56
  br i1 %57, label %58, label %66

58:                                               ; preds = %24
  %59 = load i32, i32* @KERN_INFO, align 4
  %60 = load %struct.myrb_hba*, %struct.myrb_hba** %3, align 8
  %61 = getelementptr inbounds %struct.myrb_hba, %struct.myrb_hba* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* %4, align 4
  %64 = load i16, i16* %9, align 2
  %65 = call i32 (i32, i32, i8*, i32, i16, ...) @shost_printk(i32 %59, i32 %62, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %63, i16 zeroext %64)
  br label %131

66:                                               ; preds = %24
  %67 = load %struct.myrb_log_entry*, %struct.myrb_log_entry** %7, align 8
  %68 = getelementptr inbounds %struct.myrb_log_entry, %struct.myrb_log_entry* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* %4, align 4
  %71 = icmp eq i32 %69, %70
  br i1 %71, label %72, label %130

72:                                               ; preds = %66
  %73 = call i32 @memset(%struct.scsi_sense_hdr* %10, i32 0, i32 24)
  %74 = load %struct.myrb_log_entry*, %struct.myrb_log_entry** %7, align 8
  %75 = getelementptr inbounds %struct.myrb_log_entry, %struct.myrb_log_entry* %74, i32 0, i32 3
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @scsi_normalize_sense(i32 %76, i32 32, %struct.scsi_sense_hdr* %10)
  %78 = getelementptr inbounds %struct.scsi_sense_hdr, %struct.scsi_sense_hdr* %10, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* @VENDOR_SPECIFIC, align 8
  %81 = icmp eq i64 %79, %80
  br i1 %81, label %82, label %110

82:                                               ; preds = %72
  %83 = getelementptr inbounds %struct.scsi_sense_hdr, %struct.scsi_sense_hdr* %10, i32 0, i32 1
  %84 = load i32, i32* %83, align 8
  %85 = icmp eq i32 %84, 128
  br i1 %85, label %86, label %110

86:                                               ; preds = %82
  %87 = getelementptr inbounds %struct.scsi_sense_hdr, %struct.scsi_sense_hdr* %10, i32 0, i32 2
  %88 = load i64, i64* %87, align 8
  %89 = load i32*, i32** @myrb_event_msg, align 8
  %90 = call i64 @ARRAY_SIZE(i32* %89)
  %91 = icmp ult i64 %88, %90
  br i1 %91, label %92, label %110

92:                                               ; preds = %86
  %93 = load i32, i32* @KERN_CRIT, align 4
  %94 = load %struct.myrb_hba*, %struct.myrb_hba** %3, align 8
  %95 = getelementptr inbounds %struct.myrb_hba, %struct.myrb_hba* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 8
  %97 = load %struct.myrb_log_entry*, %struct.myrb_log_entry** %7, align 8
  %98 = getelementptr inbounds %struct.myrb_log_entry, %struct.myrb_log_entry* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.myrb_log_entry*, %struct.myrb_log_entry** %7, align 8
  %101 = getelementptr inbounds %struct.myrb_log_entry, %struct.myrb_log_entry* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = trunc i32 %102 to i16
  %104 = load i32*, i32** @myrb_event_msg, align 8
  %105 = getelementptr inbounds %struct.scsi_sense_hdr, %struct.scsi_sense_hdr* %10, i32 0, i32 2
  %106 = load i64, i64* %105, align 8
  %107 = getelementptr inbounds i32, i32* %104, i64 %106
  %108 = load i32, i32* %107, align 4
  %109 = call i32 (i32, i32, i8*, i32, i16, ...) @shost_printk(i32 %93, i32 %96, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %99, i16 zeroext %103, i32 %108)
  br label %129

110:                                              ; preds = %86, %82, %72
  %111 = load i32, i32* @KERN_CRIT, align 4
  %112 = load %struct.myrb_hba*, %struct.myrb_hba** %3, align 8
  %113 = getelementptr inbounds %struct.myrb_hba, %struct.myrb_hba* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 8
  %115 = load %struct.myrb_log_entry*, %struct.myrb_log_entry** %7, align 8
  %116 = getelementptr inbounds %struct.myrb_log_entry, %struct.myrb_log_entry* %115, i32 0, i32 2
  %117 = load i32, i32* %116, align 4
  %118 = load %struct.myrb_log_entry*, %struct.myrb_log_entry** %7, align 8
  %119 = getelementptr inbounds %struct.myrb_log_entry, %struct.myrb_log_entry* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = trunc i32 %120 to i16
  %122 = getelementptr inbounds %struct.scsi_sense_hdr, %struct.scsi_sense_hdr* %10, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = getelementptr inbounds %struct.scsi_sense_hdr, %struct.scsi_sense_hdr* %10, i32 0, i32 1
  %125 = load i32, i32* %124, align 8
  %126 = getelementptr inbounds %struct.scsi_sense_hdr, %struct.scsi_sense_hdr* %10, i32 0, i32 2
  %127 = load i64, i64* %126, align 8
  %128 = call i32 (i32, i32, i8*, i32, i16, ...) @shost_printk(i32 %111, i32 %114, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0), i32 %117, i16 zeroext %121, i64 %123, i32 %125, i64 %127)
  br label %129

129:                                              ; preds = %110, %92
  br label %130

130:                                              ; preds = %129, %66
  br label %131

131:                                              ; preds = %130, %58
  %132 = load %struct.myrb_hba*, %struct.myrb_hba** %3, align 8
  %133 = getelementptr inbounds %struct.myrb_hba, %struct.myrb_hba* %132, i32 0, i32 0
  %134 = load %struct.TYPE_4__*, %struct.TYPE_4__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %134, i32 0, i32 0
  %136 = load %struct.myrb_log_entry*, %struct.myrb_log_entry** %7, align 8
  %137 = load i32, i32* %8, align 4
  %138 = call i32 @dma_free_coherent(i32* %135, i32 16, %struct.myrb_log_entry* %136, i32 %137)
  br label %139

139:                                              ; preds = %131, %23
  ret void
}

declare dso_local %struct.myrb_log_entry* @dma_alloc_coherent(i32*, i32, i32*, i32) #1

declare dso_local i32 @myrb_reset_cmd(%struct.myrb_cmdblk*) #1

declare dso_local zeroext i16 @myrb_exec_cmd(%struct.myrb_hba*, %struct.myrb_cmdblk*) #1

declare dso_local i32 @shost_printk(i32, i32, i8*, i32, i16 zeroext, ...) #1

declare dso_local i32 @memset(%struct.scsi_sense_hdr*, i32, i32) #1

declare dso_local i32 @scsi_normalize_sense(i32, i32, %struct.scsi_sense_hdr*) #1

declare dso_local i64 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @dma_free_coherent(i32*, i32, %struct.myrb_log_entry*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
