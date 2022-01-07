; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_esp_scsi.c_esp_map_sense.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_esp_scsi.c_esp_map_sense.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.esp = type { i32, i32 }
%struct.esp_cmd_entry = type { i64, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@ESP_FLAG_NO_DMA_MAP = common dso_local global i32 0, align 4
@SCSI_SENSE_BUFFERSIZE = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.esp*, %struct.esp_cmd_entry*)* @esp_map_sense to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @esp_map_sense(%struct.esp* %0, %struct.esp_cmd_entry* %1) #0 {
  %3 = alloca %struct.esp*, align 8
  %4 = alloca %struct.esp_cmd_entry*, align 8
  store %struct.esp* %0, %struct.esp** %3, align 8
  store %struct.esp_cmd_entry* %1, %struct.esp_cmd_entry** %4, align 8
  %5 = load %struct.esp_cmd_entry*, %struct.esp_cmd_entry** %4, align 8
  %6 = getelementptr inbounds %struct.esp_cmd_entry, %struct.esp_cmd_entry* %5, i32 0, i32 2
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load %struct.esp_cmd_entry*, %struct.esp_cmd_entry** %4, align 8
  %11 = getelementptr inbounds %struct.esp_cmd_entry, %struct.esp_cmd_entry* %10, i32 0, i32 1
  store i64 %9, i64* %11, align 8
  %12 = load %struct.esp*, %struct.esp** %3, align 8
  %13 = getelementptr inbounds %struct.esp, %struct.esp* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @ESP_FLAG_NO_DMA_MAP, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %24

18:                                               ; preds = %2
  %19 = load %struct.esp_cmd_entry*, %struct.esp_cmd_entry** %4, align 8
  %20 = getelementptr inbounds %struct.esp_cmd_entry, %struct.esp_cmd_entry* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.esp_cmd_entry*, %struct.esp_cmd_entry** %4, align 8
  %23 = getelementptr inbounds %struct.esp_cmd_entry, %struct.esp_cmd_entry* %22, i32 0, i32 0
  store i64 %21, i64* %23, align 8
  br label %36

24:                                               ; preds = %2
  %25 = load %struct.esp*, %struct.esp** %3, align 8
  %26 = getelementptr inbounds %struct.esp, %struct.esp* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.esp_cmd_entry*, %struct.esp_cmd_entry** %4, align 8
  %29 = getelementptr inbounds %struct.esp_cmd_entry, %struct.esp_cmd_entry* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = load i32, i32* @SCSI_SENSE_BUFFERSIZE, align 4
  %32 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %33 = call i64 @dma_map_single(i32 %27, i64 %30, i32 %31, i32 %32)
  %34 = load %struct.esp_cmd_entry*, %struct.esp_cmd_entry** %4, align 8
  %35 = getelementptr inbounds %struct.esp_cmd_entry, %struct.esp_cmd_entry* %34, i32 0, i32 0
  store i64 %33, i64* %35, align 8
  br label %36

36:                                               ; preds = %24, %18
  ret void
}

declare dso_local i64 @dma_map_single(i32, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
