; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_esp_scsi.c_esp_msgin_reject.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_esp_scsi.c_esp_msgin_reject.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.esp = type { i32, i32*, i32, %struct.esp_target_data*, %struct.esp_cmd_entry* }
%struct.esp_target_data = type { i32, i64, i64, i32, i32 }
%struct.esp_cmd_entry = type { %struct.scsi_cmnd* }
%struct.scsi_cmnd = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@ESP_TGT_NEGO_WIDE = common dso_local global i32 0, align 4
@ESP_TGT_WIDE = common dso_local global i32 0, align 4
@ESP_TGT_CHECK_NEGO = common dso_local global i32 0, align 4
@ESP_CMD_RATN = common dso_local global i32 0, align 4
@ESP_TGT_NEGO_SYNC = common dso_local global i32 0, align 4
@ESP_CMD_SATN = common dso_local global i32 0, align 4
@KERN_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Unexpected MESSAGE REJECT\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.esp*)* @esp_msgin_reject to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @esp_msgin_reject(%struct.esp* %0) #0 {
  %2 = alloca %struct.esp*, align 8
  %3 = alloca %struct.esp_cmd_entry*, align 8
  %4 = alloca %struct.scsi_cmnd*, align 8
  %5 = alloca %struct.esp_target_data*, align 8
  %6 = alloca i32, align 4
  store %struct.esp* %0, %struct.esp** %2, align 8
  %7 = load %struct.esp*, %struct.esp** %2, align 8
  %8 = getelementptr inbounds %struct.esp, %struct.esp* %7, i32 0, i32 4
  %9 = load %struct.esp_cmd_entry*, %struct.esp_cmd_entry** %8, align 8
  store %struct.esp_cmd_entry* %9, %struct.esp_cmd_entry** %3, align 8
  %10 = load %struct.esp_cmd_entry*, %struct.esp_cmd_entry** %3, align 8
  %11 = getelementptr inbounds %struct.esp_cmd_entry, %struct.esp_cmd_entry* %10, i32 0, i32 0
  %12 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %11, align 8
  store %struct.scsi_cmnd* %12, %struct.scsi_cmnd** %4, align 8
  %13 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %14 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %6, align 4
  %18 = load %struct.esp*, %struct.esp** %2, align 8
  %19 = getelementptr inbounds %struct.esp, %struct.esp* %18, i32 0, i32 3
  %20 = load %struct.esp_target_data*, %struct.esp_target_data** %19, align 8
  %21 = load i32, i32* %6, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.esp_target_data, %struct.esp_target_data* %20, i64 %22
  store %struct.esp_target_data* %23, %struct.esp_target_data** %5, align 8
  %24 = load %struct.esp_target_data*, %struct.esp_target_data** %5, align 8
  %25 = getelementptr inbounds %struct.esp_target_data, %struct.esp_target_data* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @ESP_TGT_NEGO_WIDE, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %75

30:                                               ; preds = %1
  %31 = load i32, i32* @ESP_TGT_NEGO_WIDE, align 4
  %32 = load i32, i32* @ESP_TGT_WIDE, align 4
  %33 = or i32 %31, %32
  %34 = xor i32 %33, -1
  %35 = load %struct.esp_target_data*, %struct.esp_target_data** %5, align 8
  %36 = getelementptr inbounds %struct.esp_target_data, %struct.esp_target_data* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = and i32 %37, %34
  store i32 %38, i32* %36, align 8
  %39 = load %struct.esp_target_data*, %struct.esp_target_data** %5, align 8
  %40 = call i32 @esp_need_to_nego_sync(%struct.esp_target_data* %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %52, label %42

42:                                               ; preds = %30
  %43 = load i32, i32* @ESP_TGT_CHECK_NEGO, align 4
  %44 = xor i32 %43, -1
  %45 = load %struct.esp_target_data*, %struct.esp_target_data** %5, align 8
  %46 = getelementptr inbounds %struct.esp_target_data, %struct.esp_target_data* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = and i32 %47, %44
  store i32 %48, i32* %46, align 8
  %49 = load %struct.esp*, %struct.esp** %2, align 8
  %50 = load i32, i32* @ESP_CMD_RATN, align 4
  %51 = call i32 @scsi_esp_cmd(%struct.esp* %49, i32 %50)
  br label %74

52:                                               ; preds = %30
  %53 = load %struct.esp*, %struct.esp** %2, align 8
  %54 = getelementptr inbounds %struct.esp, %struct.esp* %53, i32 0, i32 1
  %55 = load i32*, i32** %54, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 0
  %57 = load %struct.esp_target_data*, %struct.esp_target_data** %5, align 8
  %58 = getelementptr inbounds %struct.esp_target_data, %struct.esp_target_data* %57, i32 0, i32 4
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.esp_target_data*, %struct.esp_target_data** %5, align 8
  %61 = getelementptr inbounds %struct.esp_target_data, %struct.esp_target_data* %60, i32 0, i32 3
  %62 = load i32, i32* %61, align 8
  %63 = call i32 @spi_populate_sync_msg(i32* %56, i32 %59, i32 %62)
  %64 = load %struct.esp*, %struct.esp** %2, align 8
  %65 = getelementptr inbounds %struct.esp, %struct.esp* %64, i32 0, i32 2
  store i32 %63, i32* %65, align 8
  %66 = load i32, i32* @ESP_TGT_NEGO_SYNC, align 4
  %67 = load %struct.esp_target_data*, %struct.esp_target_data** %5, align 8
  %68 = getelementptr inbounds %struct.esp_target_data, %struct.esp_target_data* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = or i32 %69, %66
  store i32 %70, i32* %68, align 8
  %71 = load %struct.esp*, %struct.esp** %2, align 8
  %72 = load i32, i32* @ESP_CMD_SATN, align 4
  %73 = call i32 @scsi_esp_cmd(%struct.esp* %71, i32 %72)
  br label %74

74:                                               ; preds = %52, %42
  br label %109

75:                                               ; preds = %1
  %76 = load %struct.esp_target_data*, %struct.esp_target_data** %5, align 8
  %77 = getelementptr inbounds %struct.esp_target_data, %struct.esp_target_data* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = load i32, i32* @ESP_TGT_NEGO_SYNC, align 4
  %80 = and i32 %78, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %101

82:                                               ; preds = %75
  %83 = load i32, i32* @ESP_TGT_NEGO_SYNC, align 4
  %84 = load i32, i32* @ESP_TGT_CHECK_NEGO, align 4
  %85 = or i32 %83, %84
  %86 = xor i32 %85, -1
  %87 = load %struct.esp_target_data*, %struct.esp_target_data** %5, align 8
  %88 = getelementptr inbounds %struct.esp_target_data, %struct.esp_target_data* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = and i32 %89, %86
  store i32 %90, i32* %88, align 8
  %91 = load %struct.esp_target_data*, %struct.esp_target_data** %5, align 8
  %92 = getelementptr inbounds %struct.esp_target_data, %struct.esp_target_data* %91, i32 0, i32 2
  store i64 0, i64* %92, align 8
  %93 = load %struct.esp_target_data*, %struct.esp_target_data** %5, align 8
  %94 = getelementptr inbounds %struct.esp_target_data, %struct.esp_target_data* %93, i32 0, i32 1
  store i64 0, i64* %94, align 8
  %95 = load %struct.esp*, %struct.esp** %2, align 8
  %96 = load %struct.esp_target_data*, %struct.esp_target_data** %5, align 8
  %97 = call i32 @esp_setsync(%struct.esp* %95, %struct.esp_target_data* %96, i32 0, i32 0, i32 0, i32 0)
  %98 = load %struct.esp*, %struct.esp** %2, align 8
  %99 = load i32, i32* @ESP_CMD_RATN, align 4
  %100 = call i32 @scsi_esp_cmd(%struct.esp* %98, i32 %99)
  br label %109

101:                                              ; preds = %75
  %102 = load i32, i32* @KERN_INFO, align 4
  %103 = load %struct.esp*, %struct.esp** %2, align 8
  %104 = getelementptr inbounds %struct.esp, %struct.esp* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = call i32 @shost_printk(i32 %102, i32 %105, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %107 = load %struct.esp*, %struct.esp** %2, align 8
  %108 = call i32 @esp_schedule_reset(%struct.esp* %107)
  br label %109

109:                                              ; preds = %101, %82, %74
  ret void
}

declare dso_local i32 @esp_need_to_nego_sync(%struct.esp_target_data*) #1

declare dso_local i32 @scsi_esp_cmd(%struct.esp*, i32) #1

declare dso_local i32 @spi_populate_sync_msg(i32*, i32, i32) #1

declare dso_local i32 @esp_setsync(%struct.esp*, %struct.esp_target_data*, i32, i32, i32, i32) #1

declare dso_local i32 @shost_printk(i32, i32, i8*) #1

declare dso_local i32 @esp_schedule_reset(%struct.esp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
