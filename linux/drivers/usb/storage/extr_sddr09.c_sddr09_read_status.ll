; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/storage/extr_sddr09.c_sddr09_read_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/storage/extr_sddr09.c_sddr09_read_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.us_data = type { i8*, i32 }

@.str = private unnamed_addr constant [19 x i8] c"Reading status...\0A\00", align 1
@LUNBITS = common dso_local global i8 0, align 1
@USB_STOR_XFER_GOOD = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.us_data*, i8*)* @sddr09_read_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sddr09_read_status(%struct.us_data* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.us_data*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store %struct.us_data* %0, %struct.us_data** %4, align 8
  store i8* %1, i8** %5, align 8
  %9 = load %struct.us_data*, %struct.us_data** %4, align 8
  %10 = getelementptr inbounds %struct.us_data, %struct.us_data* %9, i32 0, i32 0
  %11 = load i8*, i8** %10, align 8
  store i8* %11, i8** %6, align 8
  %12 = load %struct.us_data*, %struct.us_data** %4, align 8
  %13 = getelementptr inbounds %struct.us_data, %struct.us_data* %12, i32 0, i32 0
  %14 = load i8*, i8** %13, align 8
  store i8* %14, i8** %7, align 8
  %15 = load %struct.us_data*, %struct.us_data** %4, align 8
  %16 = call i32 @usb_stor_dbg(%struct.us_data* %15, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %17 = load i8*, i8** %6, align 8
  %18 = call i32 @memset(i8* %17, i32 0, i32 12)
  %19 = load i8*, i8** %6, align 8
  %20 = getelementptr inbounds i8, i8* %19, i64 0
  store i8 -20, i8* %20, align 1
  %21 = load i8, i8* @LUNBITS, align 1
  %22 = load i8*, i8** %6, align 8
  %23 = getelementptr inbounds i8, i8* %22, i64 1
  store i8 %21, i8* %23, align 1
  %24 = load %struct.us_data*, %struct.us_data** %4, align 8
  %25 = load i8*, i8** %6, align 8
  %26 = call i32 @sddr09_send_scsi_command(%struct.us_data* %24, i8* %25, i32 12)
  store i32 %26, i32* %8, align 4
  %27 = load i32, i32* %8, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %2
  %30 = load i32, i32* %8, align 4
  store i32 %30, i32* %3, align 4
  br label %51

31:                                               ; preds = %2
  %32 = load %struct.us_data*, %struct.us_data** %4, align 8
  %33 = load %struct.us_data*, %struct.us_data** %4, align 8
  %34 = getelementptr inbounds %struct.us_data, %struct.us_data* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = load i8*, i8** %7, align 8
  %37 = call i32 @usb_stor_bulk_transfer_buf(%struct.us_data* %32, i32 %35, i8* %36, i32 64, i32* null)
  store i32 %37, i32* %8, align 4
  %38 = load i8*, i8** %7, align 8
  %39 = getelementptr inbounds i8, i8* %38, i64 0
  %40 = load i8, i8* %39, align 1
  %41 = load i8*, i8** %5, align 8
  store i8 %40, i8* %41, align 1
  %42 = load i32, i32* %8, align 4
  %43 = load i32, i32* @USB_STOR_XFER_GOOD, align 4
  %44 = icmp eq i32 %42, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %31
  br label %49

46:                                               ; preds = %31
  %47 = load i32, i32* @EIO, align 4
  %48 = sub nsw i32 0, %47
  br label %49

49:                                               ; preds = %46, %45
  %50 = phi i32 [ 0, %45 ], [ %48, %46 ]
  store i32 %50, i32* %3, align 4
  br label %51

51:                                               ; preds = %49, %29
  %52 = load i32, i32* %3, align 4
  ret i32 %52
}

declare dso_local i32 @usb_stor_dbg(%struct.us_data*, i8*) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @sddr09_send_scsi_command(%struct.us_data*, i8*, i32) #1

declare dso_local i32 @usb_stor_bulk_transfer_buf(%struct.us_data*, i32, i8*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
