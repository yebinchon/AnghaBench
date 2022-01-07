; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_scsi.c_scsi_report_opcode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_scsi.c_scsi_report_opcode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_device = type { i64, i64 }
%struct.scsi_sense_hdr = type { i64, i32, i32 }

@SCSI_SPC_3 = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@MAINTENANCE_IN = common dso_local global i8 0, align 1
@MI_REPORT_SUPPORTED_OPERATION_CODES = common dso_local global i8 0, align 1
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@ILLEGAL_REQUEST = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @scsi_report_opcode(%struct.scsi_device* %0, i8* %1, i32 %2, i8 zeroext %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.scsi_device*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8, align 1
  %10 = alloca [16 x i8], align 16
  %11 = alloca %struct.scsi_sense_hdr, align 8
  %12 = alloca i32, align 4
  store %struct.scsi_device* %0, %struct.scsi_device** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8 %3, i8* %9, align 1
  %13 = load %struct.scsi_device*, %struct.scsi_device** %6, align 8
  %14 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %23, label %17

17:                                               ; preds = %4
  %18 = load %struct.scsi_device*, %struct.scsi_device** %6, align 8
  %19 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @SCSI_SPC_3, align 8
  %22 = icmp slt i64 %20, %21
  br i1 %22, label %23, label %26

23:                                               ; preds = %17, %4
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %5, align 4
  br label %84

26:                                               ; preds = %17
  %27 = getelementptr inbounds [16 x i8], [16 x i8]* %10, i64 0, i64 0
  %28 = call i32 @memset(i8* %27, i32 0, i32 16)
  %29 = load i8, i8* @MAINTENANCE_IN, align 1
  %30 = getelementptr inbounds [16 x i8], [16 x i8]* %10, i64 0, i64 0
  store i8 %29, i8* %30, align 16
  %31 = load i8, i8* @MI_REPORT_SUPPORTED_OPERATION_CODES, align 1
  %32 = getelementptr inbounds [16 x i8], [16 x i8]* %10, i64 0, i64 1
  store i8 %31, i8* %32, align 1
  %33 = getelementptr inbounds [16 x i8], [16 x i8]* %10, i64 0, i64 2
  store i8 1, i8* %33, align 2
  %34 = load i8, i8* %9, align 1
  %35 = getelementptr inbounds [16 x i8], [16 x i8]* %10, i64 0, i64 3
  store i8 %34, i8* %35, align 1
  %36 = load i32, i32* %8, align 4
  %37 = getelementptr inbounds [16 x i8], [16 x i8]* %10, i64 0, i64 6
  %38 = call i32 @put_unaligned_be32(i32 %36, i8* %37)
  %39 = load i8*, i8** %7, align 8
  %40 = load i32, i32* %8, align 4
  %41 = call i32 @memset(i8* %39, i32 0, i32 %40)
  %42 = load %struct.scsi_device*, %struct.scsi_device** %6, align 8
  %43 = getelementptr inbounds [16 x i8], [16 x i8]* %10, i64 0, i64 0
  %44 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %45 = load i8*, i8** %7, align 8
  %46 = load i32, i32* %8, align 4
  %47 = load i32, i32* @HZ, align 4
  %48 = mul nsw i32 30, %47
  %49 = call i32 @scsi_execute_req(%struct.scsi_device* %42, i8* %43, i32 %44, i8* %45, i32 %46, %struct.scsi_sense_hdr* %11, i32 %48, i32 3, i32* null)
  store i32 %49, i32* %12, align 4
  %50 = load i32, i32* %12, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %75

52:                                               ; preds = %26
  %53 = call i64 @scsi_sense_valid(%struct.scsi_sense_hdr* %11)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %75

55:                                               ; preds = %52
  %56 = getelementptr inbounds %struct.scsi_sense_hdr, %struct.scsi_sense_hdr* %11, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @ILLEGAL_REQUEST, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %60, label %75

60:                                               ; preds = %55
  %61 = getelementptr inbounds %struct.scsi_sense_hdr, %struct.scsi_sense_hdr* %11, i32 0, i32 1
  %62 = load i32, i32* %61, align 8
  %63 = icmp eq i32 %62, 32
  br i1 %63, label %68, label %64

64:                                               ; preds = %60
  %65 = getelementptr inbounds %struct.scsi_sense_hdr, %struct.scsi_sense_hdr* %11, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  %67 = icmp eq i32 %66, 36
  br i1 %67, label %68, label %75

68:                                               ; preds = %64, %60
  %69 = getelementptr inbounds %struct.scsi_sense_hdr, %struct.scsi_sense_hdr* %11, i32 0, i32 2
  %70 = load i32, i32* %69, align 4
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %68
  %73 = load i32, i32* @EINVAL, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %5, align 4
  br label %84

75:                                               ; preds = %68, %64, %55, %52, %26
  %76 = load i8*, i8** %7, align 8
  %77 = getelementptr inbounds i8, i8* %76, i64 1
  %78 = load i8, i8* %77, align 1
  %79 = zext i8 %78 to i32
  %80 = and i32 %79, 3
  %81 = icmp eq i32 %80, 3
  br i1 %81, label %82, label %83

82:                                               ; preds = %75
  store i32 1, i32* %5, align 4
  br label %84

83:                                               ; preds = %75
  store i32 0, i32* %5, align 4
  br label %84

84:                                               ; preds = %83, %82, %72, %23
  %85 = load i32, i32* %5, align 4
  ret i32 %85
}

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @put_unaligned_be32(i32, i8*) #1

declare dso_local i32 @scsi_execute_req(%struct.scsi_device*, i8*, i32, i8*, i32, %struct.scsi_sense_hdr*, i32, i32, i32*) #1

declare dso_local i64 @scsi_sense_valid(%struct.scsi_sense_hdr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
