; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_esp_scsi.c_esp_cmd_is_done.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_esp_scsi.c_esp_cmd_is_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.esp = type { %struct.TYPE_2__*, i32* }
%struct.TYPE_2__ = type { i32 }
%struct.esp_cmd_entry = type { i32, i32, i32* }
%struct.scsi_cmnd = type { i32, i32 (%struct.scsi_cmnd*)*, i32*, %struct.scsi_device* }
%struct.scsi_device = type { i32, i32, i32 }

@ESP_CMD_FLAG_AUTOSENSE = common dso_local global i32 0, align 4
@DRIVER_SENSE = common dso_local global i32 0, align 4
@DID_OK = common dso_local global i32 0, align 4
@COMMAND_COMPLETE = common dso_local global i32 0, align 4
@SAM_STAT_CHECK_CONDITION = common dso_local global i32 0, align 4
@esp_debug = common dso_local global i32 0, align 4
@ESP_DEBUG_AUTOSENSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"esp%d: tgt[%d] lun[%d] AUTO SENSE[ \00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"%02x \00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"]\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.esp*, %struct.esp_cmd_entry*, %struct.scsi_cmnd*, i32)* @esp_cmd_is_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @esp_cmd_is_done(%struct.esp* %0, %struct.esp_cmd_entry* %1, %struct.scsi_cmnd* %2, i32 %3) #0 {
  %5 = alloca %struct.esp*, align 8
  %6 = alloca %struct.esp_cmd_entry*, align 8
  %7 = alloca %struct.scsi_cmnd*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.scsi_device*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.esp* %0, %struct.esp** %5, align 8
  store %struct.esp_cmd_entry* %1, %struct.esp_cmd_entry** %6, align 8
  store %struct.scsi_cmnd* %2, %struct.scsi_cmnd** %7, align 8
  store i32 %3, i32* %8, align 4
  %13 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %7, align 8
  %14 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %13, i32 0, i32 3
  %15 = load %struct.scsi_device*, %struct.scsi_device** %14, align 8
  store %struct.scsi_device* %15, %struct.scsi_device** %9, align 8
  %16 = load %struct.scsi_device*, %struct.scsi_device** %9, align 8
  %17 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %10, align 4
  %19 = load %struct.scsi_device*, %struct.scsi_device** %9, align 8
  %20 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %11, align 4
  %22 = load %struct.esp*, %struct.esp** %5, align 8
  %23 = getelementptr inbounds %struct.esp, %struct.esp* %22, i32 0, i32 1
  store i32* null, i32** %23, align 8
  %24 = load %struct.esp*, %struct.esp** %5, align 8
  %25 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %7, align 8
  %26 = call i32 @esp_unmap_dma(%struct.esp* %24, %struct.scsi_cmnd* %25)
  %27 = load %struct.esp_cmd_entry*, %struct.esp_cmd_entry** %6, align 8
  %28 = load %struct.scsi_device*, %struct.scsi_device** %9, align 8
  %29 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @esp_free_lun_tag(%struct.esp_cmd_entry* %27, i32 %30)
  %32 = load i32, i32* %8, align 4
  %33 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %7, align 8
  %34 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 8
  %35 = load %struct.esp_cmd_entry*, %struct.esp_cmd_entry** %6, align 8
  %36 = getelementptr inbounds %struct.esp_cmd_entry, %struct.esp_cmd_entry* %35, i32 0, i32 2
  %37 = load i32*, i32** %36, align 8
  %38 = icmp ne i32* %37, null
  br i1 %38, label %39, label %46

39:                                               ; preds = %4
  %40 = load %struct.esp_cmd_entry*, %struct.esp_cmd_entry** %6, align 8
  %41 = getelementptr inbounds %struct.esp_cmd_entry, %struct.esp_cmd_entry* %40, i32 0, i32 2
  %42 = load i32*, i32** %41, align 8
  %43 = call i32 @complete(i32* %42)
  %44 = load %struct.esp_cmd_entry*, %struct.esp_cmd_entry** %6, align 8
  %45 = getelementptr inbounds %struct.esp_cmd_entry, %struct.esp_cmd_entry* %44, i32 0, i32 2
  store i32* null, i32** %45, align 8
  br label %46

46:                                               ; preds = %39, %4
  %47 = load %struct.esp_cmd_entry*, %struct.esp_cmd_entry** %6, align 8
  %48 = getelementptr inbounds %struct.esp_cmd_entry, %struct.esp_cmd_entry* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* @ESP_CMD_FLAG_AUTOSENSE, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %107

53:                                               ; preds = %46
  %54 = load %struct.esp*, %struct.esp** %5, align 8
  %55 = load %struct.esp_cmd_entry*, %struct.esp_cmd_entry** %6, align 8
  %56 = call i32 @esp_unmap_sense(%struct.esp* %54, %struct.esp_cmd_entry* %55)
  %57 = load i32, i32* @DRIVER_SENSE, align 4
  %58 = shl i32 %57, 24
  %59 = load i32, i32* @DID_OK, align 4
  %60 = shl i32 %59, 16
  %61 = or i32 %58, %60
  %62 = load i32, i32* @COMMAND_COMPLETE, align 4
  %63 = shl i32 %62, 8
  %64 = or i32 %61, %63
  %65 = load i32, i32* @SAM_STAT_CHECK_CONDITION, align 4
  %66 = shl i32 %65, 0
  %67 = or i32 %64, %66
  %68 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %7, align 8
  %69 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %68, i32 0, i32 0
  store i32 %67, i32* %69, align 8
  %70 = load i32, i32* @ESP_CMD_FLAG_AUTOSENSE, align 4
  %71 = xor i32 %70, -1
  %72 = load %struct.esp_cmd_entry*, %struct.esp_cmd_entry** %6, align 8
  %73 = getelementptr inbounds %struct.esp_cmd_entry, %struct.esp_cmd_entry* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = and i32 %74, %71
  store i32 %75, i32* %73, align 8
  %76 = load i32, i32* @esp_debug, align 4
  %77 = load i32, i32* @ESP_DEBUG_AUTOSENSE, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %106

80:                                               ; preds = %53
  %81 = load %struct.esp*, %struct.esp** %5, align 8
  %82 = getelementptr inbounds %struct.esp, %struct.esp* %81, i32 0, i32 0
  %83 = load %struct.TYPE_2__*, %struct.TYPE_2__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* %10, align 4
  %87 = load i32, i32* %11, align 4
  %88 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %85, i32 %86, i32 %87)
  store i32 0, i32* %12, align 4
  br label %89

89:                                               ; preds = %101, %80
  %90 = load i32, i32* %12, align 4
  %91 = icmp slt i32 %90, 18
  br i1 %91, label %92, label %104

92:                                               ; preds = %89
  %93 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %7, align 8
  %94 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %93, i32 0, i32 2
  %95 = load i32*, i32** %94, align 8
  %96 = load i32, i32* %12, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i32, i32* %95, i64 %97
  %99 = load i32, i32* %98, align 4
  %100 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %99)
  br label %101

101:                                              ; preds = %92
  %102 = load i32, i32* %12, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %12, align 4
  br label %89

104:                                              ; preds = %89
  %105 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  br label %106

106:                                              ; preds = %104, %53
  br label %107

107:                                              ; preds = %106, %46
  %108 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %7, align 8
  %109 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %108, i32 0, i32 1
  %110 = load i32 (%struct.scsi_cmnd*)*, i32 (%struct.scsi_cmnd*)** %109, align 8
  %111 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %7, align 8
  %112 = call i32 %110(%struct.scsi_cmnd* %111)
  %113 = load %struct.esp_cmd_entry*, %struct.esp_cmd_entry** %6, align 8
  %114 = getelementptr inbounds %struct.esp_cmd_entry, %struct.esp_cmd_entry* %113, i32 0, i32 1
  %115 = call i32 @list_del(i32* %114)
  %116 = load %struct.esp*, %struct.esp** %5, align 8
  %117 = load %struct.esp_cmd_entry*, %struct.esp_cmd_entry** %6, align 8
  %118 = call i32 @esp_put_ent(%struct.esp* %116, %struct.esp_cmd_entry* %117)
  %119 = load %struct.esp*, %struct.esp** %5, align 8
  %120 = call i32 @esp_maybe_execute_command(%struct.esp* %119)
  ret void
}

declare dso_local i32 @esp_unmap_dma(%struct.esp*, %struct.scsi_cmnd*) #1

declare dso_local i32 @esp_free_lun_tag(%struct.esp_cmd_entry*, i32) #1

declare dso_local i32 @complete(i32*) #1

declare dso_local i32 @esp_unmap_sense(%struct.esp*, %struct.esp_cmd_entry*) #1

declare dso_local i32 @printk(i8*, ...) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @esp_put_ent(%struct.esp*, %struct.esp_cmd_entry*) #1

declare dso_local i32 @esp_maybe_execute_command(%struct.esp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
