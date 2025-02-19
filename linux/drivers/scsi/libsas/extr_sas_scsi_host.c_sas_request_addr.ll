; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/libsas/extr_sas_scsi_host.c_sas_request_addr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/libsas/extr_sas_scsi_host.c_sas_request_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Scsi_Host = type { i32 }
%struct.firmware = type { i64, i32 }

@.str = private unnamed_addr constant [9 x i8] c"sas_addr\00", align 1
@SAS_STRING_ADDR_SIZE = common dso_local global i64 0, align 8
@ENODEV = common dso_local global i32 0, align 4
@SAS_ADDR_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sas_request_addr(%struct.Scsi_Host* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.Scsi_Host*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.firmware*, align 8
  store %struct.Scsi_Host* %0, %struct.Scsi_Host** %4, align 8
  store i32* %1, i32** %5, align 8
  %8 = load %struct.Scsi_Host*, %struct.Scsi_Host** %4, align 8
  %9 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %8, i32 0, i32 0
  %10 = call i32 @request_firmware(%struct.firmware** %7, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32* %9)
  store i32 %10, i32* %6, align 4
  %11 = load i32, i32* %6, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %2
  %14 = load i32, i32* %6, align 4
  store i32 %14, i32* %3, align 4
  br label %45

15:                                               ; preds = %2
  %16 = load %struct.firmware*, %struct.firmware** %7, align 8
  %17 = getelementptr inbounds %struct.firmware, %struct.firmware* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @SAS_STRING_ADDR_SIZE, align 8
  %20 = icmp slt i64 %18, %19
  br i1 %20, label %21, label %24

21:                                               ; preds = %15
  %22 = load i32, i32* @ENODEV, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %6, align 4
  br label %41

24:                                               ; preds = %15
  %25 = load i32*, i32** %5, align 8
  %26 = load %struct.firmware*, %struct.firmware** %7, align 8
  %27 = getelementptr inbounds %struct.firmware, %struct.firmware* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.firmware*, %struct.firmware** %7, align 8
  %30 = getelementptr inbounds %struct.firmware, %struct.firmware* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @SAS_ADDR_SIZE, align 4
  %33 = mul nsw i32 %32, 2
  %34 = call i32 @strnlen(i32 %31, i32 %33)
  %35 = sdiv i32 %34, 2
  %36 = call i32 @hex2bin(i32* %25, i32 %28, i32 %35)
  store i32 %36, i32* %6, align 4
  %37 = load i32, i32* %6, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %24
  br label %41

40:                                               ; preds = %24
  br label %41

41:                                               ; preds = %40, %39, %21
  %42 = load %struct.firmware*, %struct.firmware** %7, align 8
  %43 = call i32 @release_firmware(%struct.firmware* %42)
  %44 = load i32, i32* %6, align 4
  store i32 %44, i32* %3, align 4
  br label %45

45:                                               ; preds = %41, %13
  %46 = load i32, i32* %3, align 4
  ret i32 %46
}

declare dso_local i32 @request_firmware(%struct.firmware**, i8*, i32*) #1

declare dso_local i32 @hex2bin(i32*, i32, i32) #1

declare dso_local i32 @strnlen(i32, i32) #1

declare dso_local i32 @release_firmware(%struct.firmware*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
