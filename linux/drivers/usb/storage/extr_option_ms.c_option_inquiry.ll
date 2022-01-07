; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/storage/extr_option_ms.c_option_inquiry.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/storage/extr_option_ms.c_option_inquiry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.us_data = type { i32, i32 }

@option_inquiry.inquiry_msg = internal constant <{ [20 x i8], [11 x i8] }> <{ [20 x i8] c"USBC\124Vx$\00\00\00\80\00\06\12\00\00\00$", [11 x i8] zeroinitializer }>, align 16
@.str = private unnamed_addr constant [15 x i8] c"Option MS: %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"device inquiry for vendor name\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@USB_STOR_TRANSPORT_ERROR = common dso_local global i32 0, align 4
@USB_STOR_XFER_GOOD = common dso_local global i32 0, align 4
@USB_STOR_XFER_ERROR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"Option\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"ZCOPTION\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.us_data*)* @option_inquiry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @option_inquiry(%struct.us_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.us_data*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  store %struct.us_data* %0, %struct.us_data** %3, align 8
  %6 = load %struct.us_data*, %struct.us_data** %3, align 8
  %7 = call i32 @usb_stor_dbg(%struct.us_data* %6, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call i8* @kzalloc(i32 36, i32 %8)
  store i8* %9, i8** %4, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = icmp eq i8* %10, null
  br i1 %11, label %12, label %14

12:                                               ; preds = %1
  %13 = load i32, i32* @USB_STOR_TRANSPORT_ERROR, align 4
  store i32 %13, i32* %2, align 4
  br label %61

14:                                               ; preds = %1
  %15 = load i8*, i8** %4, align 8
  %16 = call i32 @memcpy(i8* %15, i8* getelementptr inbounds ([31 x i8], [31 x i8]* bitcast (<{ [20 x i8], [11 x i8] }>* @option_inquiry.inquiry_msg to [31 x i8]*), i64 0, i64 0), i32 31)
  %17 = load %struct.us_data*, %struct.us_data** %3, align 8
  %18 = load %struct.us_data*, %struct.us_data** %3, align 8
  %19 = getelementptr inbounds %struct.us_data, %struct.us_data* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load i8*, i8** %4, align 8
  %22 = call i32 @usb_stor_bulk_transfer_buf(%struct.us_data* %17, i32 %20, i8* %21, i32 31, i32* null)
  store i32 %22, i32* %5, align 4
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* @USB_STOR_XFER_GOOD, align 4
  %25 = icmp ne i32 %23, %24
  br i1 %25, label %26, label %28

26:                                               ; preds = %14
  %27 = load i32, i32* @USB_STOR_XFER_ERROR, align 4
  store i32 %27, i32* %5, align 4
  br label %57

28:                                               ; preds = %14
  %29 = load %struct.us_data*, %struct.us_data** %3, align 8
  %30 = load %struct.us_data*, %struct.us_data** %3, align 8
  %31 = getelementptr inbounds %struct.us_data, %struct.us_data* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i8*, i8** %4, align 8
  %34 = call i32 @usb_stor_bulk_transfer_buf(%struct.us_data* %29, i32 %32, i8* %33, i32 36, i32* null)
  store i32 %34, i32* %5, align 4
  %35 = load i32, i32* %5, align 4
  %36 = load i32, i32* @USB_STOR_XFER_GOOD, align 4
  %37 = icmp ne i32 %35, %36
  br i1 %37, label %38, label %40

38:                                               ; preds = %28
  %39 = load i32, i32* @USB_STOR_XFER_ERROR, align 4
  store i32 %39, i32* %5, align 4
  br label %57

40:                                               ; preds = %28
  %41 = load i8*, i8** %4, align 8
  %42 = getelementptr inbounds i8, i8* %41, i64 8
  %43 = call i32 @memcmp(i8* %42, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 6)
  store i32 %43, i32* %5, align 4
  %44 = load i32, i32* %5, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %40
  %47 = load i8*, i8** %4, align 8
  %48 = getelementptr inbounds i8, i8* %47, i64 8
  %49 = call i32 @memcmp(i8* %48, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i32 8)
  store i32 %49, i32* %5, align 4
  br label %50

50:                                               ; preds = %46, %40
  %51 = load %struct.us_data*, %struct.us_data** %3, align 8
  %52 = load %struct.us_data*, %struct.us_data** %3, align 8
  %53 = getelementptr inbounds %struct.us_data, %struct.us_data* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i8*, i8** %4, align 8
  %56 = call i32 @usb_stor_bulk_transfer_buf(%struct.us_data* %51, i32 %54, i8* %55, i32 13, i32* null)
  br label %57

57:                                               ; preds = %50, %38, %26
  %58 = load i8*, i8** %4, align 8
  %59 = call i32 @kfree(i8* %58)
  %60 = load i32, i32* %5, align 4
  store i32 %60, i32* %2, align 4
  br label %61

61:                                               ; preds = %57, %12
  %62 = load i32, i32* %2, align 4
  ret i32 %62
}

declare dso_local i32 @usb_stor_dbg(%struct.us_data*, i8*, i8*) #1

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @usb_stor_bulk_transfer_buf(%struct.us_data*, i32, i8*, i32, i32*) #1

declare dso_local i32 @memcmp(i8*, i8*, i32) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
