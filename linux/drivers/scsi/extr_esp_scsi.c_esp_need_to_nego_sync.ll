; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_esp_scsi.c_esp_need_to_nego_sync.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_esp_scsi.c_esp_need_to_nego_sync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.esp_target_data = type { i64, i64, %struct.scsi_target* }
%struct.scsi_target = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.esp_target_data*)* @esp_need_to_nego_sync to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @esp_need_to_nego_sync(%struct.esp_target_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.esp_target_data*, align 8
  %4 = alloca %struct.scsi_target*, align 8
  store %struct.esp_target_data* %0, %struct.esp_target_data** %3, align 8
  %5 = load %struct.esp_target_data*, %struct.esp_target_data** %3, align 8
  %6 = getelementptr inbounds %struct.esp_target_data, %struct.esp_target_data* %5, i32 0, i32 2
  %7 = load %struct.scsi_target*, %struct.scsi_target** %6, align 8
  store %struct.scsi_target* %7, %struct.scsi_target** %4, align 8
  %8 = load %struct.scsi_target*, %struct.scsi_target** %4, align 8
  %9 = call i64 @spi_offset(%struct.scsi_target* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %17, label %11

11:                                               ; preds = %1
  %12 = load %struct.esp_target_data*, %struct.esp_target_data** %3, align 8
  %13 = getelementptr inbounds %struct.esp_target_data, %struct.esp_target_data* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %11
  store i32 0, i32* %2, align 4
  br label %33

17:                                               ; preds = %11, %1
  %18 = load %struct.scsi_target*, %struct.scsi_target** %4, align 8
  %19 = call i64 @spi_offset(%struct.scsi_target* %18)
  %20 = load %struct.esp_target_data*, %struct.esp_target_data** %3, align 8
  %21 = getelementptr inbounds %struct.esp_target_data, %struct.esp_target_data* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp eq i64 %19, %22
  br i1 %23, label %24, label %32

24:                                               ; preds = %17
  %25 = load %struct.scsi_target*, %struct.scsi_target** %4, align 8
  %26 = call i64 @spi_period(%struct.scsi_target* %25)
  %27 = load %struct.esp_target_data*, %struct.esp_target_data** %3, align 8
  %28 = getelementptr inbounds %struct.esp_target_data, %struct.esp_target_data* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = icmp eq i64 %26, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %24
  store i32 0, i32* %2, align 4
  br label %33

32:                                               ; preds = %24, %17
  store i32 1, i32* %2, align 4
  br label %33

33:                                               ; preds = %32, %31, %16
  %34 = load i32, i32* %2, align 4
  ret i32 %34
}

declare dso_local i64 @spi_offset(%struct.scsi_target*) #1

declare dso_local i64 @spi_period(%struct.scsi_target*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
