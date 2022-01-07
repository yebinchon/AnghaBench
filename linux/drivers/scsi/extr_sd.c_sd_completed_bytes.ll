; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_sd.c_sd_completed_bytes.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_sd.c_sd_completed_bytes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_cmnd = type { i32, %struct.scsi_device*, %struct.request* }
%struct.scsi_device = type { i64 }
%struct.request = type { i32 }

@SCSI_SENSE_BUFFERSIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_cmnd*)* @sd_completed_bytes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sd_completed_bytes(%struct.scsi_cmnd* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.scsi_cmnd*, align 8
  %4 = alloca %struct.request*, align 8
  %5 = alloca %struct.scsi_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.scsi_cmnd* %0, %struct.scsi_cmnd** %3, align 8
  %11 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %12 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %11, i32 0, i32 2
  %13 = load %struct.request*, %struct.request** %12, align 8
  store %struct.request* %13, %struct.request** %4, align 8
  %14 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %15 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %14, i32 0, i32 1
  %16 = load %struct.scsi_device*, %struct.scsi_device** %15, align 8
  store %struct.scsi_device* %16, %struct.scsi_device** %5, align 8
  %17 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %18 = call i64 @scsi_bufflen(%struct.scsi_cmnd* %17)
  %19 = load %struct.scsi_device*, %struct.scsi_device** %5, align 8
  %20 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp sle i64 %18, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %66

24:                                               ; preds = %1
  %25 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %26 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @SCSI_SENSE_BUFFERSIZE, align 4
  %29 = call i32 @scsi_get_sense_info_fld(i32 %27, i32 %28, i64* %10)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %24
  store i32 0, i32* %2, align 4
  br label %66

32:                                               ; preds = %24
  %33 = load %struct.scsi_device*, %struct.scsi_device** %5, align 8
  %34 = load %struct.request*, %struct.request** %4, align 8
  %35 = call i32 @blk_rq_pos(%struct.request* %34)
  %36 = call i64 @sectors_to_logical(%struct.scsi_device* %33, i32 %35)
  store i64 %36, i64* %8, align 8
  %37 = load i64, i64* %8, align 8
  %38 = load %struct.scsi_device*, %struct.scsi_device** %5, align 8
  %39 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %40 = call i64 @scsi_bufflen(%struct.scsi_cmnd* %39)
  %41 = call i64 @bytes_to_logical(%struct.scsi_device* %38, i64 %40)
  %42 = add nsw i64 %37, %41
  store i64 %42, i64* %9, align 8
  %43 = load i64, i64* %10, align 8
  %44 = load i64, i64* %8, align 8
  %45 = icmp slt i64 %43, %44
  br i1 %45, label %50, label %46

46:                                               ; preds = %32
  %47 = load i64, i64* %10, align 8
  %48 = load i64, i64* %9, align 8
  %49 = icmp sge i64 %47, %48
  br i1 %49, label %50, label %51

50:                                               ; preds = %46, %32
  store i32 0, i32* %2, align 4
  br label %66

51:                                               ; preds = %46
  %52 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %53 = call i64 @scsi_bufflen(%struct.scsi_cmnd* %52)
  %54 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %55 = call i64 @scsi_get_resid(%struct.scsi_cmnd* %54)
  %56 = sub nsw i64 %53, %55
  %57 = trunc i64 %56 to i32
  store i32 %57, i32* %6, align 4
  %58 = load %struct.scsi_device*, %struct.scsi_device** %5, align 8
  %59 = load i64, i64* %10, align 8
  %60 = load i64, i64* %8, align 8
  %61 = sub nsw i64 %59, %60
  %62 = call i32 @logical_to_bytes(%struct.scsi_device* %58, i64 %61)
  store i32 %62, i32* %7, align 4
  %63 = load i32, i32* %7, align 4
  %64 = load i32, i32* %6, align 4
  %65 = call i32 @min(i32 %63, i32 %64)
  store i32 %65, i32* %2, align 4
  br label %66

66:                                               ; preds = %51, %50, %31, %23
  %67 = load i32, i32* %2, align 4
  ret i32 %67
}

declare dso_local i64 @scsi_bufflen(%struct.scsi_cmnd*) #1

declare dso_local i32 @scsi_get_sense_info_fld(i32, i32, i64*) #1

declare dso_local i64 @sectors_to_logical(%struct.scsi_device*, i32) #1

declare dso_local i32 @blk_rq_pos(%struct.request*) #1

declare dso_local i64 @bytes_to_logical(%struct.scsi_device*, i64) #1

declare dso_local i64 @scsi_get_resid(%struct.scsi_cmnd*) #1

declare dso_local i32 @logical_to_bytes(%struct.scsi_device*, i64) #1

declare dso_local i32 @min(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
