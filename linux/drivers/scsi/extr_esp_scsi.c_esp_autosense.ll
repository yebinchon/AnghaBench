; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_esp_scsi.c_esp_autosense.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_esp_scsi.c_esp_autosense.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.esp = type { i32*, i64, i32, i64, %struct.esp_cmd_entry* }
%struct.esp_cmd_entry = type { i64, i64, %struct.scsi_cmnd* }
%struct.scsi_cmnd = type { %struct.scsi_device* }
%struct.scsi_device = type { i32, i32, i64 }

@.str = private unnamed_addr constant [38 x i8] c"Doing auto-sense for tgt[%d] lun[%d]\0A\00", align 1
@REQUEST_SENSE = common dso_local global i32 0, align 4
@SCSI_2 = common dso_local global i64 0, align 8
@SCSI_SENSE_BUFFERSIZE = common dso_local global i32 0, align 4
@ESP_SELECT_BASIC = common dso_local global i32 0, align 4
@FASHME = common dso_local global i64 0, align 8
@ESP_BUSID_RESELID = common dso_local global i32 0, align 4
@ESP_BUSID_CTR32BIT = common dso_local global i32 0, align 4
@ESP_BUSID = common dso_local global i32 0, align 4
@ESP_CMD_SELA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.esp*, %struct.esp_cmd_entry*)* @esp_autosense to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @esp_autosense(%struct.esp* %0, %struct.esp_cmd_entry* %1) #0 {
  %3 = alloca %struct.esp*, align 8
  %4 = alloca %struct.esp_cmd_entry*, align 8
  %5 = alloca %struct.scsi_cmnd*, align 8
  %6 = alloca %struct.scsi_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  store %struct.esp* %0, %struct.esp** %3, align 8
  store %struct.esp_cmd_entry* %1, %struct.esp_cmd_entry** %4, align 8
  %11 = load %struct.esp_cmd_entry*, %struct.esp_cmd_entry** %4, align 8
  %12 = getelementptr inbounds %struct.esp_cmd_entry, %struct.esp_cmd_entry* %11, i32 0, i32 2
  %13 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %12, align 8
  store %struct.scsi_cmnd* %13, %struct.scsi_cmnd** %5, align 8
  %14 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %15 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %14, i32 0, i32 0
  %16 = load %struct.scsi_device*, %struct.scsi_device** %15, align 8
  store %struct.scsi_device* %16, %struct.scsi_device** %6, align 8
  %17 = load %struct.scsi_device*, %struct.scsi_device** %6, align 8
  %18 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  store i32 %19, i32* %7, align 4
  %20 = load %struct.scsi_device*, %struct.scsi_device** %6, align 8
  %21 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %8, align 4
  %23 = load %struct.esp_cmd_entry*, %struct.esp_cmd_entry** %4, align 8
  %24 = getelementptr inbounds %struct.esp_cmd_entry, %struct.esp_cmd_entry* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %34, label %27

27:                                               ; preds = %2
  %28 = load i32, i32* %7, align 4
  %29 = load i32, i32* %8, align 4
  %30 = call i32 @esp_log_autosense(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %28, i32 %29)
  %31 = load %struct.esp*, %struct.esp** %3, align 8
  %32 = load %struct.esp_cmd_entry*, %struct.esp_cmd_entry** %4, align 8
  %33 = call i32 @esp_map_sense(%struct.esp* %31, %struct.esp_cmd_entry* %32)
  br label %34

34:                                               ; preds = %27, %2
  %35 = load %struct.esp_cmd_entry*, %struct.esp_cmd_entry** %4, align 8
  %36 = getelementptr inbounds %struct.esp_cmd_entry, %struct.esp_cmd_entry* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.esp_cmd_entry*, %struct.esp_cmd_entry** %4, align 8
  %39 = getelementptr inbounds %struct.esp_cmd_entry, %struct.esp_cmd_entry* %38, i32 0, i32 1
  store i64 %37, i64* %39, align 8
  %40 = load %struct.esp_cmd_entry*, %struct.esp_cmd_entry** %4, align 8
  %41 = load %struct.esp*, %struct.esp** %3, align 8
  %42 = getelementptr inbounds %struct.esp, %struct.esp* %41, i32 0, i32 4
  store %struct.esp_cmd_entry* %40, %struct.esp_cmd_entry** %42, align 8
  %43 = load %struct.esp*, %struct.esp** %3, align 8
  %44 = getelementptr inbounds %struct.esp, %struct.esp* %43, i32 0, i32 0
  %45 = load i32*, i32** %44, align 8
  store i32* %45, i32** %9, align 8
  %46 = load %struct.esp*, %struct.esp** %3, align 8
  %47 = getelementptr inbounds %struct.esp, %struct.esp* %46, i32 0, i32 3
  store i64 0, i64* %47, align 8
  %48 = load i32, i32* %8, align 4
  %49 = call i32 @IDENTIFY(i32 0, i32 %48)
  %50 = load i32*, i32** %9, align 8
  %51 = getelementptr inbounds i32, i32* %50, i32 1
  store i32* %51, i32** %9, align 8
  store i32 %49, i32* %50, align 4
  %52 = load i32, i32* @REQUEST_SENSE, align 4
  %53 = load i32*, i32** %9, align 8
  %54 = getelementptr inbounds i32, i32* %53, i32 1
  store i32* %54, i32** %9, align 8
  store i32 %52, i32* %53, align 4
  %55 = load %struct.scsi_device*, %struct.scsi_device** %6, align 8
  %56 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %55, i32 0, i32 2
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @SCSI_2, align 8
  %59 = icmp sle i64 %57, %58
  br i1 %59, label %60, label %63

60:                                               ; preds = %34
  %61 = load i32, i32* %8, align 4
  %62 = shl i32 %61, 5
  br label %64

63:                                               ; preds = %34
  br label %64

64:                                               ; preds = %63, %60
  %65 = phi i32 [ %62, %60 ], [ 0, %63 ]
  %66 = load i32*, i32** %9, align 8
  %67 = getelementptr inbounds i32, i32* %66, i32 1
  store i32* %67, i32** %9, align 8
  store i32 %65, i32* %66, align 4
  %68 = load i32*, i32** %9, align 8
  %69 = getelementptr inbounds i32, i32* %68, i32 1
  store i32* %69, i32** %9, align 8
  store i32 0, i32* %68, align 4
  %70 = load i32*, i32** %9, align 8
  %71 = getelementptr inbounds i32, i32* %70, i32 1
  store i32* %71, i32** %9, align 8
  store i32 0, i32* %70, align 4
  %72 = load i32, i32* @SCSI_SENSE_BUFFERSIZE, align 4
  %73 = load i32*, i32** %9, align 8
  %74 = getelementptr inbounds i32, i32* %73, i32 1
  store i32* %74, i32** %9, align 8
  store i32 %72, i32* %73, align 4
  %75 = load i32*, i32** %9, align 8
  %76 = getelementptr inbounds i32, i32* %75, i32 1
  store i32* %76, i32** %9, align 8
  store i32 0, i32* %75, align 4
  %77 = load i32, i32* @ESP_SELECT_BASIC, align 4
  %78 = load %struct.esp*, %struct.esp** %3, align 8
  %79 = getelementptr inbounds %struct.esp, %struct.esp* %78, i32 0, i32 2
  store i32 %77, i32* %79, align 8
  %80 = load i32, i32* %7, align 4
  store i32 %80, i32* %10, align 4
  %81 = load %struct.esp*, %struct.esp** %3, align 8
  %82 = getelementptr inbounds %struct.esp, %struct.esp* %81, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* @FASHME, align 8
  %85 = icmp eq i64 %83, %84
  br i1 %85, label %86, label %92

86:                                               ; preds = %64
  %87 = load i32, i32* @ESP_BUSID_RESELID, align 4
  %88 = load i32, i32* @ESP_BUSID_CTR32BIT, align 4
  %89 = or i32 %87, %88
  %90 = load i32, i32* %10, align 4
  %91 = or i32 %90, %89
  store i32 %91, i32* %10, align 4
  br label %92

92:                                               ; preds = %86, %64
  %93 = load i32, i32* %10, align 4
  %94 = load i32, i32* @ESP_BUSID, align 4
  %95 = call i32 @esp_write8(i32 %93, i32 %94)
  %96 = load %struct.esp*, %struct.esp** %3, align 8
  %97 = load i32, i32* %7, align 4
  %98 = call i32 @esp_write_tgt_sync(%struct.esp* %96, i32 %97)
  %99 = load %struct.esp*, %struct.esp** %3, align 8
  %100 = load i32, i32* %7, align 4
  %101 = call i32 @esp_write_tgt_config3(%struct.esp* %99, i32 %100)
  %102 = load i32*, i32** %9, align 8
  %103 = load %struct.esp*, %struct.esp** %3, align 8
  %104 = getelementptr inbounds %struct.esp, %struct.esp* %103, i32 0, i32 0
  %105 = load i32*, i32** %104, align 8
  %106 = ptrtoint i32* %102 to i64
  %107 = ptrtoint i32* %105 to i64
  %108 = sub i64 %106, %107
  %109 = sdiv exact i64 %108, 4
  %110 = trunc i64 %109 to i32
  store i32 %110, i32* %10, align 4
  %111 = load %struct.esp*, %struct.esp** %3, align 8
  %112 = load i32, i32* %10, align 4
  %113 = load i32, i32* @ESP_CMD_SELA, align 4
  %114 = call i32 @esp_send_dma_cmd(%struct.esp* %111, i32 %112, i32 16, i32 %113)
  ret void
}

declare dso_local i32 @esp_log_autosense(i8*, i32, i32) #1

declare dso_local i32 @esp_map_sense(%struct.esp*, %struct.esp_cmd_entry*) #1

declare dso_local i32 @IDENTIFY(i32, i32) #1

declare dso_local i32 @esp_write8(i32, i32) #1

declare dso_local i32 @esp_write_tgt_sync(%struct.esp*, i32) #1

declare dso_local i32 @esp_write_tgt_config3(%struct.esp*, i32) #1

declare dso_local i32 @esp_send_dma_cmd(%struct.esp*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
