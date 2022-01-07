; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_sd.c_sd_read_write_same.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_sd.c_sd_read_write_same.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_disk = type { i32, i32, %struct.scsi_device* }
%struct.scsi_device = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@SD_BUF_SIZE = common dso_local global i32 0, align 4
@INQUIRY = common dso_local global i32 0, align 4
@WRITE_SAME_16 = common dso_local global i32 0, align 4
@WRITE_SAME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.scsi_disk*, i8*)* @sd_read_write_same to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sd_read_write_same(%struct.scsi_disk* %0, i8* %1) #0 {
  %3 = alloca %struct.scsi_disk*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.scsi_device*, align 8
  %6 = alloca i32, align 4
  store %struct.scsi_disk* %0, %struct.scsi_disk** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load %struct.scsi_disk*, %struct.scsi_disk** %3, align 8
  %8 = getelementptr inbounds %struct.scsi_disk, %struct.scsi_disk* %7, i32 0, i32 2
  %9 = load %struct.scsi_device*, %struct.scsi_device** %8, align 8
  store %struct.scsi_device* %9, %struct.scsi_device** %5, align 8
  %10 = load %struct.scsi_device*, %struct.scsi_device** %5, align 8
  %11 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %10, i32 0, i32 2
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %2
  %17 = load %struct.scsi_device*, %struct.scsi_device** %5, align 8
  %18 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %17, i32 0, i32 0
  store i32 1, i32* %18, align 8
  br label %58

19:                                               ; preds = %2
  %20 = load %struct.scsi_device*, %struct.scsi_device** %5, align 8
  %21 = load i8*, i8** %4, align 8
  %22 = load i32, i32* @SD_BUF_SIZE, align 4
  %23 = load i32, i32* @INQUIRY, align 4
  %24 = call i32 @scsi_report_opcode(%struct.scsi_device* %20, i8* %21, i32 %22, i32 %23)
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %38

26:                                               ; preds = %19
  store i32 64, i32* %6, align 4
  %27 = load %struct.scsi_device*, %struct.scsi_device** %5, align 8
  %28 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %27, i32 0, i32 1
  store i32 1, i32* %28, align 4
  %29 = load %struct.scsi_device*, %struct.scsi_device** %5, align 8
  %30 = load i8*, i8** %4, align 8
  %31 = load i32, i32* %6, align 4
  %32 = call i32 @scsi_get_vpd_page(%struct.scsi_device* %29, i32 137, i8* %30, i32 %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %37, label %34

34:                                               ; preds = %26
  %35 = load %struct.scsi_device*, %struct.scsi_device** %5, align 8
  %36 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %35, i32 0, i32 0
  store i32 1, i32* %36, align 8
  br label %37

37:                                               ; preds = %34, %26
  br label %38

38:                                               ; preds = %37, %19
  %39 = load %struct.scsi_device*, %struct.scsi_device** %5, align 8
  %40 = load i8*, i8** %4, align 8
  %41 = load i32, i32* @SD_BUF_SIZE, align 4
  %42 = load i32, i32* @WRITE_SAME_16, align 4
  %43 = call i32 @scsi_report_opcode(%struct.scsi_device* %39, i8* %40, i32 %41, i32 %42)
  %44 = icmp eq i32 %43, 1
  br i1 %44, label %45, label %48

45:                                               ; preds = %38
  %46 = load %struct.scsi_disk*, %struct.scsi_disk** %3, align 8
  %47 = getelementptr inbounds %struct.scsi_disk, %struct.scsi_disk* %46, i32 0, i32 0
  store i32 1, i32* %47, align 8
  br label %48

48:                                               ; preds = %45, %38
  %49 = load %struct.scsi_device*, %struct.scsi_device** %5, align 8
  %50 = load i8*, i8** %4, align 8
  %51 = load i32, i32* @SD_BUF_SIZE, align 4
  %52 = load i32, i32* @WRITE_SAME, align 4
  %53 = call i32 @scsi_report_opcode(%struct.scsi_device* %49, i8* %50, i32 %51, i32 %52)
  %54 = icmp eq i32 %53, 1
  br i1 %54, label %55, label %58

55:                                               ; preds = %48
  %56 = load %struct.scsi_disk*, %struct.scsi_disk** %3, align 8
  %57 = getelementptr inbounds %struct.scsi_disk, %struct.scsi_disk* %56, i32 0, i32 1
  store i32 1, i32* %57, align 4
  br label %58

58:                                               ; preds = %16, %55, %48
  ret void
}

declare dso_local i32 @scsi_report_opcode(%struct.scsi_device*, i8*, i32, i32) #1

declare dso_local i32 @scsi_get_vpd_page(%struct.scsi_device*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
