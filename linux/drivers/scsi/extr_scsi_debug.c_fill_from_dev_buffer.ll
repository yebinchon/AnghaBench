; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_scsi_debug.c_fill_from_dev_buffer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_scsi_debug.c_fill_from_dev_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_cmnd = type { i64, %struct.scsi_data_buffer }
%struct.scsi_data_buffer = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@DMA_FROM_DEVICE = common dso_local global i64 0, align 8
@DID_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_cmnd*, i8*, i32)* @fill_from_dev_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fill_from_dev_buffer(%struct.scsi_cmnd* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.scsi_cmnd*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.scsi_data_buffer*, align 8
  store %struct.scsi_cmnd* %0, %struct.scsi_cmnd** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %11 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %10, i32 0, i32 1
  store %struct.scsi_data_buffer* %11, %struct.scsi_data_buffer** %9, align 8
  %12 = load %struct.scsi_data_buffer*, %struct.scsi_data_buffer** %9, align 8
  %13 = getelementptr inbounds %struct.scsi_data_buffer, %struct.scsi_data_buffer* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %45

17:                                               ; preds = %3
  %18 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %19 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @DMA_FROM_DEVICE, align 8
  %22 = icmp ne i64 %20, %21
  br i1 %22, label %23, label %26

23:                                               ; preds = %17
  %24 = load i32, i32* @DID_ERROR, align 4
  %25 = shl i32 %24, 16
  store i32 %25, i32* %4, align 4
  br label %45

26:                                               ; preds = %17
  %27 = load %struct.scsi_data_buffer*, %struct.scsi_data_buffer** %9, align 8
  %28 = getelementptr inbounds %struct.scsi_data_buffer, %struct.scsi_data_buffer* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.scsi_data_buffer*, %struct.scsi_data_buffer** %9, align 8
  %32 = getelementptr inbounds %struct.scsi_data_buffer, %struct.scsi_data_buffer* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i8*, i8** %6, align 8
  %36 = load i32, i32* %7, align 4
  %37 = call i32 @sg_copy_from_buffer(i32 %30, i32 %34, i8* %35, i32 %36)
  store i32 %37, i32* %8, align 4
  %38 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %39 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %40 = call i64 @scsi_bufflen(%struct.scsi_cmnd* %39)
  %41 = load i32, i32* %8, align 4
  %42 = sext i32 %41 to i64
  %43 = sub nsw i64 %40, %42
  %44 = call i32 @scsi_set_resid(%struct.scsi_cmnd* %38, i64 %43)
  store i32 0, i32* %4, align 4
  br label %45

45:                                               ; preds = %26, %23, %16
  %46 = load i32, i32* %4, align 4
  ret i32 %46
}

declare dso_local i32 @sg_copy_from_buffer(i32, i32, i8*, i32) #1

declare dso_local i32 @scsi_set_resid(%struct.scsi_cmnd*, i64) #1

declare dso_local i64 @scsi_bufflen(%struct.scsi_cmnd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
