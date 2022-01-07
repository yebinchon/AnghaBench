; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_esp_scsi.c_scsi_esp_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_esp_scsi.c_scsi_esp_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.esp = type { i32, %struct.esp_event_ent* }
%struct.esp_event_ent = type { i32, i32 }

@ESP_EVENT_TYPE_CMD = common dso_local global i32 0, align 4
@ESP_EVENT_LOG_SZ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"cmd[%02x]\0A\00", align 1
@ESP_CMD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @scsi_esp_cmd(%struct.esp* %0, i32 %1) #0 {
  %3 = alloca %struct.esp*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.esp_event_ent*, align 8
  %6 = alloca i32, align 4
  store %struct.esp* %0, %struct.esp** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.esp*, %struct.esp** %3, align 8
  %8 = getelementptr inbounds %struct.esp, %struct.esp* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  store i32 %9, i32* %6, align 4
  %10 = load %struct.esp*, %struct.esp** %3, align 8
  %11 = getelementptr inbounds %struct.esp, %struct.esp* %10, i32 0, i32 1
  %12 = load %struct.esp_event_ent*, %struct.esp_event_ent** %11, align 8
  %13 = load i32, i32* %6, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds %struct.esp_event_ent, %struct.esp_event_ent* %12, i64 %14
  store %struct.esp_event_ent* %15, %struct.esp_event_ent** %5, align 8
  %16 = load i32, i32* @ESP_EVENT_TYPE_CMD, align 4
  %17 = load %struct.esp_event_ent*, %struct.esp_event_ent** %5, align 8
  %18 = getelementptr inbounds %struct.esp_event_ent, %struct.esp_event_ent* %17, i32 0, i32 1
  store i32 %16, i32* %18, align 4
  %19 = load i32, i32* %4, align 4
  %20 = load %struct.esp_event_ent*, %struct.esp_event_ent** %5, align 8
  %21 = getelementptr inbounds %struct.esp_event_ent, %struct.esp_event_ent* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 4
  %22 = load %struct.esp*, %struct.esp** %3, align 8
  %23 = load %struct.esp_event_ent*, %struct.esp_event_ent** %5, align 8
  %24 = call i32 @esp_log_fill_regs(%struct.esp* %22, %struct.esp_event_ent* %23)
  %25 = load i32, i32* %6, align 4
  %26 = add nsw i32 %25, 1
  %27 = load i32, i32* @ESP_EVENT_LOG_SZ, align 4
  %28 = sub nsw i32 %27, 1
  %29 = and i32 %26, %28
  %30 = load %struct.esp*, %struct.esp** %3, align 8
  %31 = getelementptr inbounds %struct.esp, %struct.esp* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 8
  %32 = load i32, i32* %4, align 4
  %33 = call i32 @esp_log_command(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %32)
  %34 = load i32, i32* %4, align 4
  %35 = load i32, i32* @ESP_CMD, align 4
  %36 = call i32 @esp_write8(i32 %34, i32 %35)
  ret void
}

declare dso_local i32 @esp_log_fill_regs(%struct.esp*, %struct.esp_event_ent*) #1

declare dso_local i32 @esp_log_command(i8*, i32) #1

declare dso_local i32 @esp_write8(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
