; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/storage/extr_shuttle_usbat.c_usbat_read_block.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/storage/extr_shuttle_usbat.c_usbat_read_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.us_data = type { i8* }

@USB_STOR_TRANSPORT_GOOD = common dso_local global i32 0, align 4
@USBAT_ATA = common dso_local global i8 0, align 1
@USBAT_CMD_READ_BLOCK = common dso_local global i8 0, align 1
@USBAT_ATA_DATA = common dso_local global i8 0, align 1
@USB_STOR_XFER_GOOD = common dso_local global i32 0, align 4
@USB_STOR_TRANSPORT_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.us_data*, i8*, i16, i32)* @usbat_read_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usbat_read_block(%struct.us_data* %0, i8* %1, i16 zeroext %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.us_data*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i16, align 2
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  store %struct.us_data* %0, %struct.us_data** %6, align 8
  store i8* %1, i8** %7, align 8
  store i16 %2, i16* %8, align 2
  store i32 %3, i32* %9, align 4
  %12 = load %struct.us_data*, %struct.us_data** %6, align 8
  %13 = getelementptr inbounds %struct.us_data, %struct.us_data* %12, i32 0, i32 0
  %14 = load i8*, i8** %13, align 8
  store i8* %14, i8** %11, align 8
  %15 = load i16, i16* %8, align 2
  %16 = icmp ne i16 %15, 0
  br i1 %16, label %19, label %17

17:                                               ; preds = %4
  %18 = load i32, i32* @USB_STOR_TRANSPORT_GOOD, align 4
  store i32 %18, i32* %5, align 4
  br label %70

19:                                               ; preds = %4
  %20 = load i8*, i8** %11, align 8
  %21 = getelementptr inbounds i8, i8* %20, i64 0
  store i8 -64, i8* %21, align 1
  %22 = load i8, i8* @USBAT_ATA, align 1
  %23 = zext i8 %22 to i32
  %24 = load i8, i8* @USBAT_CMD_READ_BLOCK, align 1
  %25 = zext i8 %24 to i32
  %26 = or i32 %23, %25
  %27 = trunc i32 %26 to i8
  %28 = load i8*, i8** %11, align 8
  %29 = getelementptr inbounds i8, i8* %28, i64 1
  store i8 %27, i8* %29, align 1
  %30 = load i8, i8* @USBAT_ATA_DATA, align 1
  %31 = load i8*, i8** %11, align 8
  %32 = getelementptr inbounds i8, i8* %31, i64 2
  store i8 %30, i8* %32, align 1
  %33 = load i8*, i8** %11, align 8
  %34 = getelementptr inbounds i8, i8* %33, i64 3
  store i8 0, i8* %34, align 1
  %35 = load i8*, i8** %11, align 8
  %36 = getelementptr inbounds i8, i8* %35, i64 4
  store i8 0, i8* %36, align 1
  %37 = load i8*, i8** %11, align 8
  %38 = getelementptr inbounds i8, i8* %37, i64 5
  store i8 0, i8* %38, align 1
  %39 = load i16, i16* %8, align 2
  %40 = call zeroext i8 @LSB_of(i16 zeroext %39)
  %41 = load i8*, i8** %11, align 8
  %42 = getelementptr inbounds i8, i8* %41, i64 6
  store i8 %40, i8* %42, align 1
  %43 = load i16, i16* %8, align 2
  %44 = call zeroext i8 @MSB_of(i16 zeroext %43)
  %45 = load i8*, i8** %11, align 8
  %46 = getelementptr inbounds i8, i8* %45, i64 7
  store i8 %44, i8* %46, align 1
  %47 = load %struct.us_data*, %struct.us_data** %6, align 8
  %48 = load i8*, i8** %11, align 8
  %49 = call i32 @usbat_execute_command(%struct.us_data* %47, i8* %48, i32 8)
  store i32 %49, i32* %10, align 4
  %50 = load i32, i32* %10, align 4
  %51 = load i32, i32* @USB_STOR_XFER_GOOD, align 4
  %52 = icmp ne i32 %50, %51
  br i1 %52, label %53, label %55

53:                                               ; preds = %19
  %54 = load i32, i32* @USB_STOR_TRANSPORT_ERROR, align 4
  store i32 %54, i32* %5, align 4
  br label %70

55:                                               ; preds = %19
  %56 = load %struct.us_data*, %struct.us_data** %6, align 8
  %57 = load i8*, i8** %7, align 8
  %58 = load i16, i16* %8, align 2
  %59 = load i32, i32* %9, align 4
  %60 = call i32 @usbat_bulk_read(%struct.us_data* %56, i8* %57, i16 zeroext %58, i32 %59)
  store i32 %60, i32* %10, align 4
  %61 = load i32, i32* %10, align 4
  %62 = load i32, i32* @USB_STOR_XFER_GOOD, align 4
  %63 = icmp eq i32 %61, %62
  br i1 %63, label %64, label %66

64:                                               ; preds = %55
  %65 = load i32, i32* @USB_STOR_TRANSPORT_GOOD, align 4
  br label %68

66:                                               ; preds = %55
  %67 = load i32, i32* @USB_STOR_TRANSPORT_ERROR, align 4
  br label %68

68:                                               ; preds = %66, %64
  %69 = phi i32 [ %65, %64 ], [ %67, %66 ]
  store i32 %69, i32* %5, align 4
  br label %70

70:                                               ; preds = %68, %53, %17
  %71 = load i32, i32* %5, align 4
  ret i32 %71
}

declare dso_local zeroext i8 @LSB_of(i16 zeroext) #1

declare dso_local zeroext i8 @MSB_of(i16 zeroext) #1

declare dso_local i32 @usbat_execute_command(%struct.us_data*, i8*, i32) #1

declare dso_local i32 @usbat_bulk_read(%struct.us_data*, i8*, i16 zeroext, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
