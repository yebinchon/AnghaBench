; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_esp_scsi.c_esp_restore_pointers.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_esp_scsi.c_esp_restore_pointers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.esp = type { i32 }
%struct.esp_cmd_entry = type { i32, i32, i32, i32, i32, i32, i32, %struct.scsi_cmnd* }
%struct.scsi_cmnd = type { i32 }
%struct.esp_cmd_priv = type { i32, i32, i32, i32 }

@ESP_CMD_FLAG_AUTOSENSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.esp*, %struct.esp_cmd_entry*)* @esp_restore_pointers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @esp_restore_pointers(%struct.esp* %0, %struct.esp_cmd_entry* %1) #0 {
  %3 = alloca %struct.esp*, align 8
  %4 = alloca %struct.esp_cmd_entry*, align 8
  %5 = alloca %struct.scsi_cmnd*, align 8
  %6 = alloca %struct.esp_cmd_priv*, align 8
  store %struct.esp* %0, %struct.esp** %3, align 8
  store %struct.esp_cmd_entry* %1, %struct.esp_cmd_entry** %4, align 8
  %7 = load %struct.esp_cmd_entry*, %struct.esp_cmd_entry** %4, align 8
  %8 = getelementptr inbounds %struct.esp_cmd_entry, %struct.esp_cmd_entry* %7, i32 0, i32 7
  %9 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %8, align 8
  store %struct.scsi_cmnd* %9, %struct.scsi_cmnd** %5, align 8
  %10 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %11 = call %struct.esp_cmd_priv* @ESP_CMD_PRIV(%struct.scsi_cmnd* %10)
  store %struct.esp_cmd_priv* %11, %struct.esp_cmd_priv** %6, align 8
  %12 = load %struct.esp_cmd_entry*, %struct.esp_cmd_entry** %4, align 8
  %13 = getelementptr inbounds %struct.esp_cmd_entry, %struct.esp_cmd_entry* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* @ESP_CMD_FLAG_AUTOSENSE, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %24

18:                                               ; preds = %2
  %19 = load %struct.esp_cmd_entry*, %struct.esp_cmd_entry** %4, align 8
  %20 = getelementptr inbounds %struct.esp_cmd_entry, %struct.esp_cmd_entry* %19, i32 0, i32 5
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.esp_cmd_entry*, %struct.esp_cmd_entry** %4, align 8
  %23 = getelementptr inbounds %struct.esp_cmd_entry, %struct.esp_cmd_entry* %22, i32 0, i32 6
  store i32 %21, i32* %23, align 8
  br label %45

24:                                               ; preds = %2
  %25 = load %struct.esp_cmd_entry*, %struct.esp_cmd_entry** %4, align 8
  %26 = getelementptr inbounds %struct.esp_cmd_entry, %struct.esp_cmd_entry* %25, i32 0, i32 4
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.esp_cmd_priv*, %struct.esp_cmd_priv** %6, align 8
  %29 = getelementptr inbounds %struct.esp_cmd_priv, %struct.esp_cmd_priv* %28, i32 0, i32 3
  store i32 %27, i32* %29, align 4
  %30 = load %struct.esp_cmd_entry*, %struct.esp_cmd_entry** %4, align 8
  %31 = getelementptr inbounds %struct.esp_cmd_entry, %struct.esp_cmd_entry* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.esp_cmd_priv*, %struct.esp_cmd_priv** %6, align 8
  %34 = getelementptr inbounds %struct.esp_cmd_priv, %struct.esp_cmd_priv* %33, i32 0, i32 2
  store i32 %32, i32* %34, align 4
  %35 = load %struct.esp_cmd_entry*, %struct.esp_cmd_entry** %4, align 8
  %36 = getelementptr inbounds %struct.esp_cmd_entry, %struct.esp_cmd_entry* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.esp_cmd_priv*, %struct.esp_cmd_priv** %6, align 8
  %39 = getelementptr inbounds %struct.esp_cmd_priv, %struct.esp_cmd_priv* %38, i32 0, i32 1
  store i32 %37, i32* %39, align 4
  %40 = load %struct.esp_cmd_entry*, %struct.esp_cmd_entry** %4, align 8
  %41 = getelementptr inbounds %struct.esp_cmd_entry, %struct.esp_cmd_entry* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.esp_cmd_priv*, %struct.esp_cmd_priv** %6, align 8
  %44 = getelementptr inbounds %struct.esp_cmd_priv, %struct.esp_cmd_priv* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 4
  br label %45

45:                                               ; preds = %24, %18
  ret void
}

declare dso_local %struct.esp_cmd_priv* @ESP_CMD_PRIV(%struct.scsi_cmnd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
