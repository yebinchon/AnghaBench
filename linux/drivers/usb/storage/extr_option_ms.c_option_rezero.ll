; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/storage/extr_option_ms.c_option_rezero.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/storage/extr_option_ms.c_option_rezero.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.us_data = type { i32, i32 }

@option_rezero.rezero_msg = internal constant <{ [16 x i8], [15 x i8] }> <{ [16 x i8] c"USBCxV4\12\01\00\00\00\80\00\06\01", [15 x i8] zeroinitializer }>, align 16
@.str = private unnamed_addr constant [15 x i8] c"Option MS: %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"DEVICE MODE SWITCH\00", align 1
@RESPONSE_LEN = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@USB_STOR_TRANSPORT_ERROR = common dso_local global i32 0, align 4
@USB_STOR_XFER_GOOD = common dso_local global i32 0, align 4
@USB_STOR_XFER_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.us_data*)* @option_rezero to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @option_rezero(%struct.us_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.us_data*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  store %struct.us_data* %0, %struct.us_data** %3, align 8
  %6 = load %struct.us_data*, %struct.us_data** %3, align 8
  %7 = call i32 @usb_stor_dbg(%struct.us_data* %6, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  %8 = load i32, i32* @RESPONSE_LEN, align 4
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call i8* @kzalloc(i32 %8, i32 %9)
  store i8* %10, i8** %4, align 8
  %11 = load i8*, i8** %4, align 8
  %12 = icmp eq i8* %11, null
  br i1 %12, label %13, label %15

13:                                               ; preds = %1
  %14 = load i32, i32* @USB_STOR_TRANSPORT_ERROR, align 4
  store i32 %14, i32* %2, align 4
  br label %48

15:                                               ; preds = %1
  %16 = load i8*, i8** %4, align 8
  %17 = call i32 @memcpy(i8* %16, i8* getelementptr inbounds ([31 x i8], [31 x i8]* bitcast (<{ [16 x i8], [15 x i8] }>* @option_rezero.rezero_msg to [31 x i8]*), i64 0, i64 0), i32 31)
  %18 = load %struct.us_data*, %struct.us_data** %3, align 8
  %19 = load %struct.us_data*, %struct.us_data** %3, align 8
  %20 = getelementptr inbounds %struct.us_data, %struct.us_data* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load i8*, i8** %4, align 8
  %23 = call i32 @usb_stor_bulk_transfer_buf(%struct.us_data* %18, i32 %21, i8* %22, i32 31, i32* null)
  store i32 %23, i32* %5, align 4
  %24 = load i32, i32* %5, align 4
  %25 = load i32, i32* @USB_STOR_XFER_GOOD, align 4
  %26 = icmp ne i32 %24, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %15
  %28 = load i32, i32* @USB_STOR_XFER_ERROR, align 4
  store i32 %28, i32* %5, align 4
  br label %44

29:                                               ; preds = %15
  %30 = load %struct.us_data*, %struct.us_data** %3, align 8
  %31 = load %struct.us_data*, %struct.us_data** %3, align 8
  %32 = getelementptr inbounds %struct.us_data, %struct.us_data* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i8*, i8** %4, align 8
  %35 = load i32, i32* @RESPONSE_LEN, align 4
  %36 = call i32 @usb_stor_bulk_transfer_buf(%struct.us_data* %30, i32 %33, i8* %34, i32 %35, i32* null)
  %37 = load %struct.us_data*, %struct.us_data** %3, align 8
  %38 = load %struct.us_data*, %struct.us_data** %3, align 8
  %39 = getelementptr inbounds %struct.us_data, %struct.us_data* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i8*, i8** %4, align 8
  %42 = call i32 @usb_stor_bulk_transfer_buf(%struct.us_data* %37, i32 %40, i8* %41, i32 13, i32* null)
  %43 = load i32, i32* @USB_STOR_XFER_GOOD, align 4
  store i32 %43, i32* %5, align 4
  br label %44

44:                                               ; preds = %29, %27
  %45 = load i8*, i8** %4, align 8
  %46 = call i32 @kfree(i8* %45)
  %47 = load i32, i32* %5, align 4
  store i32 %47, i32* %2, align 4
  br label %48

48:                                               ; preds = %44, %13
  %49 = load i32, i32* %2, align 4
  ret i32 %49
}

declare dso_local i32 @usb_stor_dbg(%struct.us_data*, i8*, i8*) #1

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @usb_stor_bulk_transfer_buf(%struct.us_data*, i32, i8*, i32, i32*) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
