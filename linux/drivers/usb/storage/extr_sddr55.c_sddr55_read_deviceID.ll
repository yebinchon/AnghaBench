; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/storage/extr_sddr55.c_sddr55_read_deviceID.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/storage/extr_sddr55.c_sddr55_read_deviceID.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.us_data = type { i8* }

@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"Result of send_control for device ID is %d\0A\00", align 1
@USB_STOR_XFER_GOOD = common dso_local global i32 0, align 4
@USB_STOR_TRANSPORT_ERROR = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@USB_STOR_TRANSPORT_GOOD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.us_data*, i8*, i8*)* @sddr55_read_deviceID to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sddr55_read_deviceID(%struct.us_data* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.us_data*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  store %struct.us_data* %0, %struct.us_data** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %11 = load %struct.us_data*, %struct.us_data** %5, align 8
  %12 = getelementptr inbounds %struct.us_data, %struct.us_data* %11, i32 0, i32 0
  %13 = load i8*, i8** %12, align 8
  store i8* %13, i8** %9, align 8
  %14 = load %struct.us_data*, %struct.us_data** %5, align 8
  %15 = getelementptr inbounds %struct.us_data, %struct.us_data* %14, i32 0, i32 0
  %16 = load i8*, i8** %15, align 8
  store i8* %16, i8** %10, align 8
  %17 = load i8*, i8** %9, align 8
  %18 = call i32 @memset(i8* %17, i32 0, i32 8)
  %19 = load i8*, i8** %9, align 8
  %20 = getelementptr inbounds i8, i8* %19, i64 5
  store i8 -80, i8* %20, align 1
  %21 = load i8*, i8** %9, align 8
  %22 = getelementptr inbounds i8, i8* %21, i64 7
  store i8 -124, i8* %22, align 1
  %23 = load %struct.us_data*, %struct.us_data** %5, align 8
  %24 = load i32, i32* @DMA_TO_DEVICE, align 4
  %25 = load i8*, i8** %9, align 8
  %26 = call i32 @sddr55_bulk_transport(%struct.us_data* %23, i32 %24, i8* %25, i32 8)
  store i32 %26, i32* %8, align 4
  %27 = load %struct.us_data*, %struct.us_data** %5, align 8
  %28 = load i32, i32* %8, align 4
  %29 = call i32 @usb_stor_dbg(%struct.us_data* %27, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %28)
  %30 = load i32, i32* %8, align 4
  %31 = load i32, i32* @USB_STOR_XFER_GOOD, align 4
  %32 = icmp ne i32 %30, %31
  br i1 %32, label %33, label %35

33:                                               ; preds = %3
  %34 = load i32, i32* @USB_STOR_TRANSPORT_ERROR, align 4
  store i32 %34, i32* %4, align 4
  br label %66

35:                                               ; preds = %3
  %36 = load %struct.us_data*, %struct.us_data** %5, align 8
  %37 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %38 = load i8*, i8** %10, align 8
  %39 = call i32 @sddr55_bulk_transport(%struct.us_data* %36, i32 %37, i8* %38, i32 4)
  store i32 %39, i32* %8, align 4
  %40 = load i32, i32* %8, align 4
  %41 = load i32, i32* @USB_STOR_XFER_GOOD, align 4
  %42 = icmp ne i32 %40, %41
  br i1 %42, label %43, label %45

43:                                               ; preds = %35
  %44 = load i32, i32* @USB_STOR_TRANSPORT_ERROR, align 4
  store i32 %44, i32* %4, align 4
  br label %66

45:                                               ; preds = %35
  %46 = load i8*, i8** %10, align 8
  %47 = getelementptr inbounds i8, i8* %46, i64 0
  %48 = load i8, i8* %47, align 1
  %49 = load i8*, i8** %6, align 8
  store i8 %48, i8* %49, align 1
  %50 = load i8*, i8** %10, align 8
  %51 = getelementptr inbounds i8, i8* %50, i64 1
  %52 = load i8, i8* %51, align 1
  %53 = load i8*, i8** %7, align 8
  store i8 %52, i8* %53, align 1
  %54 = load i8*, i8** %10, align 8
  %55 = getelementptr inbounds i8, i8* %54, i64 0
  %56 = load i8, i8* %55, align 1
  %57 = zext i8 %56 to i32
  %58 = icmp ne i32 %57, 255
  br i1 %58, label %59, label %64

59:                                               ; preds = %45
  %60 = load %struct.us_data*, %struct.us_data** %5, align 8
  %61 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %62 = load i8*, i8** %10, align 8
  %63 = call i32 @sddr55_bulk_transport(%struct.us_data* %60, i32 %61, i8* %62, i32 2)
  store i32 %63, i32* %8, align 4
  br label %64

64:                                               ; preds = %59, %45
  %65 = load i32, i32* @USB_STOR_TRANSPORT_GOOD, align 4
  store i32 %65, i32* %4, align 4
  br label %66

66:                                               ; preds = %64, %43, %33
  %67 = load i32, i32* %4, align 4
  ret i32 %67
}

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @sddr55_bulk_transport(%struct.us_data*, i32, i8*, i32) #1

declare dso_local i32 @usb_stor_dbg(%struct.us_data*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
