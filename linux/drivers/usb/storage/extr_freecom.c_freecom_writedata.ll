; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/storage/extr_freecom.c_freecom_writedata.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/storage/extr_freecom.c_freecom_writedata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_cmnd = type { i32 }
%struct.us_data = type { i64 }
%struct.freecom_xfer_wrap = type { i32, i32, i32, i64 }

@FCM_PACKET_OUTPUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Write data Freecom! (c=%d)\0A\00", align 1
@FCM_PACKET_LENGTH = common dso_local global i32 0, align 4
@USB_STOR_XFER_GOOD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"Freecom writedata transport error\0A\00", align 1
@USB_STOR_TRANSPORT_ERROR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [16 x i8] c"Start of write\0A\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"freecom_writedata done!\0A\00", align 1
@USB_STOR_XFER_SHORT = common dso_local global i32 0, align 4
@USB_STOR_TRANSPORT_GOOD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_cmnd*, %struct.us_data*, i32, i32, i32)* @freecom_writedata to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @freecom_writedata(%struct.scsi_cmnd* %0, %struct.us_data* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.scsi_cmnd*, align 8
  %8 = alloca %struct.us_data*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.freecom_xfer_wrap*, align 8
  %13 = alloca i32, align 4
  store %struct.scsi_cmnd* %0, %struct.scsi_cmnd** %7, align 8
  store %struct.us_data* %1, %struct.us_data** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %14 = load %struct.us_data*, %struct.us_data** %8, align 8
  %15 = getelementptr inbounds %struct.us_data, %struct.us_data* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = inttoptr i64 %16 to %struct.freecom_xfer_wrap*
  store %struct.freecom_xfer_wrap* %17, %struct.freecom_xfer_wrap** %12, align 8
  %18 = load i32, i32* @FCM_PACKET_OUTPUT, align 4
  %19 = load %struct.freecom_xfer_wrap*, %struct.freecom_xfer_wrap** %12, align 8
  %20 = getelementptr inbounds %struct.freecom_xfer_wrap, %struct.freecom_xfer_wrap* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 8
  %21 = load %struct.freecom_xfer_wrap*, %struct.freecom_xfer_wrap** %12, align 8
  %22 = getelementptr inbounds %struct.freecom_xfer_wrap, %struct.freecom_xfer_wrap* %21, i32 0, i32 3
  store i64 0, i64* %22, align 8
  %23 = load i32, i32* %11, align 4
  %24 = call i32 @cpu_to_le32(i32 %23)
  %25 = load %struct.freecom_xfer_wrap*, %struct.freecom_xfer_wrap** %12, align 8
  %26 = getelementptr inbounds %struct.freecom_xfer_wrap, %struct.freecom_xfer_wrap* %25, i32 0, i32 2
  store i32 %24, i32* %26, align 8
  %27 = load %struct.freecom_xfer_wrap*, %struct.freecom_xfer_wrap** %12, align 8
  %28 = getelementptr inbounds %struct.freecom_xfer_wrap, %struct.freecom_xfer_wrap* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @memset(i32 %29, i32 0, i32 4)
  %31 = load %struct.us_data*, %struct.us_data** %8, align 8
  %32 = load i32, i32* %11, align 4
  %33 = call i32 (%struct.us_data*, i8*, ...) @usb_stor_dbg(%struct.us_data* %31, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %32)
  %34 = load %struct.us_data*, %struct.us_data** %8, align 8
  %35 = load i32, i32* %10, align 4
  %36 = load %struct.freecom_xfer_wrap*, %struct.freecom_xfer_wrap** %12, align 8
  %37 = load i32, i32* @FCM_PACKET_LENGTH, align 4
  %38 = call i32 @usb_stor_bulk_transfer_buf(%struct.us_data* %34, i32 %35, %struct.freecom_xfer_wrap* %36, i32 %37, i32* null)
  store i32 %38, i32* %13, align 4
  %39 = load i32, i32* %13, align 4
  %40 = load i32, i32* @USB_STOR_XFER_GOOD, align 4
  %41 = icmp ne i32 %39, %40
  br i1 %41, label %42, label %46

42:                                               ; preds = %5
  %43 = load %struct.us_data*, %struct.us_data** %8, align 8
  %44 = call i32 (%struct.us_data*, i8*, ...) @usb_stor_dbg(%struct.us_data* %43, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  %45 = load i32, i32* @USB_STOR_TRANSPORT_ERROR, align 4
  store i32 %45, i32* %6, align 4
  br label %62

46:                                               ; preds = %5
  %47 = load %struct.us_data*, %struct.us_data** %8, align 8
  %48 = call i32 (%struct.us_data*, i8*, ...) @usb_stor_dbg(%struct.us_data* %47, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  %49 = load %struct.us_data*, %struct.us_data** %8, align 8
  %50 = load i32, i32* %10, align 4
  %51 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %7, align 8
  %52 = call i32 @usb_stor_bulk_srb(%struct.us_data* %49, i32 %50, %struct.scsi_cmnd* %51)
  store i32 %52, i32* %13, align 4
  %53 = load %struct.us_data*, %struct.us_data** %8, align 8
  %54 = call i32 (%struct.us_data*, i8*, ...) @usb_stor_dbg(%struct.us_data* %53, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  %55 = load i32, i32* %13, align 4
  %56 = load i32, i32* @USB_STOR_XFER_SHORT, align 4
  %57 = icmp sgt i32 %55, %56
  br i1 %57, label %58, label %60

58:                                               ; preds = %46
  %59 = load i32, i32* @USB_STOR_TRANSPORT_ERROR, align 4
  store i32 %59, i32* %6, align 4
  br label %62

60:                                               ; preds = %46
  %61 = load i32, i32* @USB_STOR_TRANSPORT_GOOD, align 4
  store i32 %61, i32* %6, align 4
  br label %62

62:                                               ; preds = %60, %58, %42
  %63 = load i32, i32* %6, align 4
  ret i32 %63
}

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @usb_stor_dbg(%struct.us_data*, i8*, ...) #1

declare dso_local i32 @usb_stor_bulk_transfer_buf(%struct.us_data*, i32, %struct.freecom_xfer_wrap*, i32, i32*) #1

declare dso_local i32 @usb_stor_bulk_srb(%struct.us_data*, i32, %struct.scsi_cmnd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
