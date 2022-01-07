; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_esp_scsi.c_esp_slave_configure.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_esp_scsi.c_esp_slave_configure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_device = type { i64, i32, i64, i32 }
%struct.esp = type { i32, %struct.esp_target_data* }
%struct.esp_target_data = type { i32 }

@ESP_TGT_DISCONNECT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_device*)* @esp_slave_configure to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @esp_slave_configure(%struct.scsi_device* %0) #0 {
  %2 = alloca %struct.scsi_device*, align 8
  %3 = alloca %struct.esp*, align 8
  %4 = alloca %struct.esp_target_data*, align 8
  store %struct.scsi_device* %0, %struct.scsi_device** %2, align 8
  %5 = load %struct.scsi_device*, %struct.scsi_device** %2, align 8
  %6 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %5, i32 0, i32 3
  %7 = load i32, i32* %6, align 8
  %8 = call %struct.esp* @shost_priv(i32 %7)
  store %struct.esp* %8, %struct.esp** %3, align 8
  %9 = load %struct.esp*, %struct.esp** %3, align 8
  %10 = getelementptr inbounds %struct.esp, %struct.esp* %9, i32 0, i32 1
  %11 = load %struct.esp_target_data*, %struct.esp_target_data** %10, align 8
  %12 = load %struct.scsi_device*, %struct.scsi_device** %2, align 8
  %13 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = getelementptr inbounds %struct.esp_target_data, %struct.esp_target_data* %11, i64 %14
  store %struct.esp_target_data* %15, %struct.esp_target_data** %4, align 8
  %16 = load %struct.scsi_device*, %struct.scsi_device** %2, align 8
  %17 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %16, i32 0, i32 2
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %26

20:                                               ; preds = %1
  %21 = load %struct.scsi_device*, %struct.scsi_device** %2, align 8
  %22 = load %struct.esp*, %struct.esp** %3, align 8
  %23 = getelementptr inbounds %struct.esp, %struct.esp* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @scsi_change_queue_depth(%struct.scsi_device* %21, i32 %24)
  br label %26

26:                                               ; preds = %20, %1
  %27 = load i32, i32* @ESP_TGT_DISCONNECT, align 4
  %28 = load %struct.esp_target_data*, %struct.esp_target_data** %4, align 8
  %29 = getelementptr inbounds %struct.esp_target_data, %struct.esp_target_data* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = or i32 %30, %27
  store i32 %31, i32* %29, align 4
  %32 = load %struct.scsi_device*, %struct.scsi_device** %2, align 8
  %33 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @spi_initial_dv(i32 %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %40, label %37

37:                                               ; preds = %26
  %38 = load %struct.scsi_device*, %struct.scsi_device** %2, align 8
  %39 = call i32 @spi_dv_device(%struct.scsi_device* %38)
  br label %40

40:                                               ; preds = %37, %26
  ret i32 0
}

declare dso_local %struct.esp* @shost_priv(i32) #1

declare dso_local i32 @scsi_change_queue_depth(%struct.scsi_device*, i32) #1

declare dso_local i32 @spi_initial_dv(i32) #1

declare dso_local i32 @spi_dv_device(%struct.scsi_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
