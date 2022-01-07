; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_esp_scsi.c_esp_queuecommand_lck.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_esp_scsi.c_esp_queuecommand_lck.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_cmnd = type { void (%struct.scsi_cmnd*)*, %struct.scsi_device* }
%struct.scsi_device = type { i32 }
%struct.esp = type { i32 }
%struct.esp_cmd_priv = type { i64 }
%struct.esp_cmd_entry = type { i32, %struct.scsi_cmnd* }

@SCSI_MLQUEUE_HOST_BUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_cmnd*, void (%struct.scsi_cmnd*)*)* @esp_queuecommand_lck to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @esp_queuecommand_lck(%struct.scsi_cmnd* %0, void (%struct.scsi_cmnd*)* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.scsi_cmnd*, align 8
  %5 = alloca void (%struct.scsi_cmnd*)*, align 8
  %6 = alloca %struct.scsi_device*, align 8
  %7 = alloca %struct.esp*, align 8
  %8 = alloca %struct.esp_cmd_priv*, align 8
  %9 = alloca %struct.esp_cmd_entry*, align 8
  store %struct.scsi_cmnd* %0, %struct.scsi_cmnd** %4, align 8
  store void (%struct.scsi_cmnd*)* %1, void (%struct.scsi_cmnd*)** %5, align 8
  %10 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %11 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %10, i32 0, i32 1
  %12 = load %struct.scsi_device*, %struct.scsi_device** %11, align 8
  store %struct.scsi_device* %12, %struct.scsi_device** %6, align 8
  %13 = load %struct.scsi_device*, %struct.scsi_device** %6, align 8
  %14 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call %struct.esp* @shost_priv(i32 %15)
  store %struct.esp* %16, %struct.esp** %7, align 8
  %17 = load %struct.esp*, %struct.esp** %7, align 8
  %18 = call %struct.esp_cmd_entry* @esp_get_ent(%struct.esp* %17)
  store %struct.esp_cmd_entry* %18, %struct.esp_cmd_entry** %9, align 8
  %19 = load %struct.esp_cmd_entry*, %struct.esp_cmd_entry** %9, align 8
  %20 = icmp ne %struct.esp_cmd_entry* %19, null
  br i1 %20, label %23, label %21

21:                                               ; preds = %2
  %22 = load i32, i32* @SCSI_MLQUEUE_HOST_BUSY, align 4
  store i32 %22, i32* %3, align 4
  br label %41

23:                                               ; preds = %2
  %24 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %25 = load %struct.esp_cmd_entry*, %struct.esp_cmd_entry** %9, align 8
  %26 = getelementptr inbounds %struct.esp_cmd_entry, %struct.esp_cmd_entry* %25, i32 0, i32 1
  store %struct.scsi_cmnd* %24, %struct.scsi_cmnd** %26, align 8
  %27 = load void (%struct.scsi_cmnd*)*, void (%struct.scsi_cmnd*)** %5, align 8
  %28 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %29 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %28, i32 0, i32 0
  store void (%struct.scsi_cmnd*)* %27, void (%struct.scsi_cmnd*)** %29, align 8
  %30 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %31 = call %struct.esp_cmd_priv* @ESP_CMD_PRIV(%struct.scsi_cmnd* %30)
  store %struct.esp_cmd_priv* %31, %struct.esp_cmd_priv** %8, align 8
  %32 = load %struct.esp_cmd_priv*, %struct.esp_cmd_priv** %8, align 8
  %33 = getelementptr inbounds %struct.esp_cmd_priv, %struct.esp_cmd_priv* %32, i32 0, i32 0
  store i64 0, i64* %33, align 8
  %34 = load %struct.esp_cmd_entry*, %struct.esp_cmd_entry** %9, align 8
  %35 = getelementptr inbounds %struct.esp_cmd_entry, %struct.esp_cmd_entry* %34, i32 0, i32 0
  %36 = load %struct.esp*, %struct.esp** %7, align 8
  %37 = getelementptr inbounds %struct.esp, %struct.esp* %36, i32 0, i32 0
  %38 = call i32 @list_add_tail(i32* %35, i32* %37)
  %39 = load %struct.esp*, %struct.esp** %7, align 8
  %40 = call i32 @esp_maybe_execute_command(%struct.esp* %39)
  store i32 0, i32* %3, align 4
  br label %41

41:                                               ; preds = %23, %21
  %42 = load i32, i32* %3, align 4
  ret i32 %42
}

declare dso_local %struct.esp* @shost_priv(i32) #1

declare dso_local %struct.esp_cmd_entry* @esp_get_ent(%struct.esp*) #1

declare dso_local %struct.esp_cmd_priv* @ESP_CMD_PRIV(%struct.scsi_cmnd*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @esp_maybe_execute_command(%struct.esp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
