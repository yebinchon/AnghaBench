; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/smartpqi/extr_smartpqi_init.c_pqi_calculate_io_resources.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/smartpqi/extr_smartpqi_init.c_pqi_calculate_io_resources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pqi_ctrl_info = type { i32, i32, i32, i32, i32, i32, i64, i32, i32 }

@PQI_RESERVED_IO_SLOTS = common dso_local global i32 0, align 4
@PQI_ERROR_BUFFER_ELEMENT_LENGTH = common dso_local global i32 0, align 4
@reset_devices = common dso_local global i64 0, align 8
@PQI_MAX_TRANSFER_SIZE_KDUMP = common dso_local global i32 0, align 4
@PQI_MAX_TRANSFER_SIZE = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@PQI_EXTRA_SGL_MEMORY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pqi_ctrl_info*)* @pqi_calculate_io_resources to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pqi_calculate_io_resources(%struct.pqi_ctrl_info* %0) #0 {
  %2 = alloca %struct.pqi_ctrl_info*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.pqi_ctrl_info* %0, %struct.pqi_ctrl_info** %2, align 8
  %5 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %2, align 8
  %6 = getelementptr inbounds %struct.pqi_ctrl_info, %struct.pqi_ctrl_info* %5, i32 0, i32 1
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* @PQI_RESERVED_IO_SLOTS, align 4
  %9 = sub nsw i32 %7, %8
  %10 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %2, align 8
  %11 = getelementptr inbounds %struct.pqi_ctrl_info, %struct.pqi_ctrl_info* %10, i32 0, i32 0
  store i32 %9, i32* %11, align 8
  %12 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %2, align 8
  %13 = getelementptr inbounds %struct.pqi_ctrl_info, %struct.pqi_ctrl_info* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %2, align 8
  %16 = getelementptr inbounds %struct.pqi_ctrl_info, %struct.pqi_ctrl_info* %15, i32 0, i32 2
  store i32 %14, i32* %16, align 8
  %17 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %2, align 8
  %18 = getelementptr inbounds %struct.pqi_ctrl_info, %struct.pqi_ctrl_info* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @PQI_ERROR_BUFFER_ELEMENT_LENGTH, align 4
  %21 = mul nsw i32 %19, %20
  %22 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %2, align 8
  %23 = getelementptr inbounds %struct.pqi_ctrl_info, %struct.pqi_ctrl_info* %22, i32 0, i32 3
  store i32 %21, i32* %23, align 4
  %24 = load i64, i64* @reset_devices, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %1
  %27 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %2, align 8
  %28 = getelementptr inbounds %struct.pqi_ctrl_info, %struct.pqi_ctrl_info* %27, i32 0, i32 8
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @PQI_MAX_TRANSFER_SIZE_KDUMP, align 4
  %31 = call i32 @min(i32 %29, i32 %30)
  store i32 %31, i32* %3, align 4
  br label %38

32:                                               ; preds = %1
  %33 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %2, align 8
  %34 = getelementptr inbounds %struct.pqi_ctrl_info, %struct.pqi_ctrl_info* %33, i32 0, i32 8
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @PQI_MAX_TRANSFER_SIZE, align 4
  %37 = call i32 @min(i32 %35, i32 %36)
  store i32 %37, i32* %3, align 4
  br label %38

38:                                               ; preds = %32, %26
  %39 = load i32, i32* %3, align 4
  %40 = load i32, i32* @PAGE_SIZE, align 4
  %41 = sdiv i32 %39, %40
  store i32 %41, i32* %4, align 4
  %42 = load i32, i32* %4, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %4, align 4
  %44 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %2, align 8
  %45 = getelementptr inbounds %struct.pqi_ctrl_info, %struct.pqi_ctrl_info* %44, i32 0, i32 7
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* %4, align 4
  %48 = call i32 @min(i32 %46, i32 %47)
  store i32 %48, i32* %4, align 4
  %49 = load i32, i32* %4, align 4
  %50 = sub nsw i32 %49, 1
  %51 = load i32, i32* @PAGE_SIZE, align 4
  %52 = mul nsw i32 %50, %51
  store i32 %52, i32* %3, align 4
  %53 = load i32, i32* %4, align 4
  %54 = sext i32 %53 to i64
  %55 = mul i64 %54, 4
  %56 = load i64, i64* @PQI_EXTRA_SGL_MEMORY, align 8
  %57 = add i64 %55, %56
  %58 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %2, align 8
  %59 = getelementptr inbounds %struct.pqi_ctrl_info, %struct.pqi_ctrl_info* %58, i32 0, i32 6
  store i64 %57, i64* %59, align 8
  %60 = load i32, i32* %4, align 4
  %61 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %2, align 8
  %62 = getelementptr inbounds %struct.pqi_ctrl_info, %struct.pqi_ctrl_info* %61, i32 0, i32 4
  store i32 %60, i32* %62, align 8
  %63 = load i32, i32* %3, align 4
  %64 = sdiv i32 %63, 512
  %65 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %2, align 8
  %66 = getelementptr inbounds %struct.pqi_ctrl_info, %struct.pqi_ctrl_info* %65, i32 0, i32 5
  store i32 %64, i32* %66, align 4
  ret void
}

declare dso_local i32 @min(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
