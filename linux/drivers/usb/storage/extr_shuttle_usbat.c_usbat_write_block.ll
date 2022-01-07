; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/storage/extr_shuttle_usbat.c_usbat_write_block.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/storage/extr_shuttle_usbat.c_usbat_write_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.us_data = type { i8* }

@USB_STOR_TRANSPORT_GOOD = common dso_local global i32 0, align 4
@USBAT_CMD_WRITE_BLOCK = common dso_local global i8 0, align 1
@USBAT_ATA_DATA = common dso_local global i8 0, align 1
@USB_STOR_XFER_GOOD = common dso_local global i32 0, align 4
@USB_STOR_TRANSPORT_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.us_data*, i8, i8*, i16, i32, i32)* @usbat_write_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usbat_write_block(%struct.us_data* %0, i8 zeroext %1, i8* %2, i16 zeroext %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.us_data*, align 8
  %9 = alloca i8, align 1
  %10 = alloca i8*, align 8
  %11 = alloca i16, align 2
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  store %struct.us_data* %0, %struct.us_data** %8, align 8
  store i8 %1, i8* %9, align 1
  store i8* %2, i8** %10, align 8
  store i16 %3, i16* %11, align 2
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %16 = load %struct.us_data*, %struct.us_data** %8, align 8
  %17 = getelementptr inbounds %struct.us_data, %struct.us_data* %16, i32 0, i32 0
  %18 = load i8*, i8** %17, align 8
  store i8* %18, i8** %15, align 8
  %19 = load i16, i16* %11, align 2
  %20 = icmp ne i16 %19, 0
  br i1 %20, label %23, label %21

21:                                               ; preds = %6
  %22 = load i32, i32* @USB_STOR_TRANSPORT_GOOD, align 4
  store i32 %22, i32* %7, align 4
  br label %74

23:                                               ; preds = %6
  %24 = load i8*, i8** %15, align 8
  %25 = getelementptr inbounds i8, i8* %24, i64 0
  store i8 64, i8* %25, align 1
  %26 = load i8, i8* %9, align 1
  %27 = zext i8 %26 to i32
  %28 = load i8, i8* @USBAT_CMD_WRITE_BLOCK, align 1
  %29 = zext i8 %28 to i32
  %30 = or i32 %27, %29
  %31 = trunc i32 %30 to i8
  %32 = load i8*, i8** %15, align 8
  %33 = getelementptr inbounds i8, i8* %32, i64 1
  store i8 %31, i8* %33, align 1
  %34 = load i8, i8* @USBAT_ATA_DATA, align 1
  %35 = load i8*, i8** %15, align 8
  %36 = getelementptr inbounds i8, i8* %35, i64 2
  store i8 %34, i8* %36, align 1
  %37 = load i8*, i8** %15, align 8
  %38 = getelementptr inbounds i8, i8* %37, i64 3
  store i8 0, i8* %38, align 1
  %39 = load i8*, i8** %15, align 8
  %40 = getelementptr inbounds i8, i8* %39, i64 4
  store i8 0, i8* %40, align 1
  %41 = load i8*, i8** %15, align 8
  %42 = getelementptr inbounds i8, i8* %41, i64 5
  store i8 0, i8* %42, align 1
  %43 = load i16, i16* %11, align 2
  %44 = call zeroext i8 @LSB_of(i16 zeroext %43)
  %45 = load i8*, i8** %15, align 8
  %46 = getelementptr inbounds i8, i8* %45, i64 6
  store i8 %44, i8* %46, align 1
  %47 = load i16, i16* %11, align 2
  %48 = call zeroext i8 @MSB_of(i16 zeroext %47)
  %49 = load i8*, i8** %15, align 8
  %50 = getelementptr inbounds i8, i8* %49, i64 7
  store i8 %48, i8* %50, align 1
  %51 = load %struct.us_data*, %struct.us_data** %8, align 8
  %52 = load i8*, i8** %15, align 8
  %53 = call i32 @usbat_execute_command(%struct.us_data* %51, i8* %52, i32 8)
  store i32 %53, i32* %14, align 4
  %54 = load i32, i32* %14, align 4
  %55 = load i32, i32* @USB_STOR_XFER_GOOD, align 4
  %56 = icmp ne i32 %54, %55
  br i1 %56, label %57, label %59

57:                                               ; preds = %23
  %58 = load i32, i32* @USB_STOR_TRANSPORT_ERROR, align 4
  store i32 %58, i32* %7, align 4
  br label %74

59:                                               ; preds = %23
  %60 = load %struct.us_data*, %struct.us_data** %8, align 8
  %61 = load i8*, i8** %10, align 8
  %62 = load i16, i16* %11, align 2
  %63 = load i32, i32* %13, align 4
  %64 = call i32 @usbat_bulk_write(%struct.us_data* %60, i8* %61, i16 zeroext %62, i32 %63)
  store i32 %64, i32* %14, align 4
  %65 = load i32, i32* %14, align 4
  %66 = load i32, i32* @USB_STOR_XFER_GOOD, align 4
  %67 = icmp ne i32 %65, %66
  br i1 %67, label %68, label %70

68:                                               ; preds = %59
  %69 = load i32, i32* @USB_STOR_TRANSPORT_ERROR, align 4
  store i32 %69, i32* %7, align 4
  br label %74

70:                                               ; preds = %59
  %71 = load %struct.us_data*, %struct.us_data** %8, align 8
  %72 = load i32, i32* %12, align 4
  %73 = call i32 @usbat_wait_not_busy(%struct.us_data* %71, i32 %72)
  store i32 %73, i32* %7, align 4
  br label %74

74:                                               ; preds = %70, %68, %57, %21
  %75 = load i32, i32* %7, align 4
  ret i32 %75
}

declare dso_local zeroext i8 @LSB_of(i16 zeroext) #1

declare dso_local zeroext i8 @MSB_of(i16 zeroext) #1

declare dso_local i32 @usbat_execute_command(%struct.us_data*, i8*, i32) #1

declare dso_local i32 @usbat_bulk_write(%struct.us_data*, i8*, i16 zeroext, i32) #1

declare dso_local i32 @usbat_wait_not_busy(%struct.us_data*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
