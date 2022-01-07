; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/storage/extr_shuttle_usbat.c_usbat_read_blocks.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/storage/extr_shuttle_usbat.c_usbat_read_blocks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.us_data = type { i8* }

@USBAT_ATA = common dso_local global i8 0, align 1
@USBAT_CMD_COND_READ_BLOCK = common dso_local global i8 0, align 1
@USBAT_ATA_DATA = common dso_local global i8 0, align 1
@USBAT_ATA_STATUS = common dso_local global i8 0, align 1
@USBAT_QUAL_FCQ = common dso_local global i8 0, align 1
@USB_STOR_XFER_GOOD = common dso_local global i32 0, align 4
@USB_STOR_TRANSPORT_FAILED = common dso_local global i32 0, align 4
@USB_STOR_TRANSPORT_GOOD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.us_data*, i8*, i32, i32)* @usbat_read_blocks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usbat_read_blocks(%struct.us_data* %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.us_data*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  store %struct.us_data* %0, %struct.us_data** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = load %struct.us_data*, %struct.us_data** %6, align 8
  %13 = getelementptr inbounds %struct.us_data, %struct.us_data* %12, i32 0, i32 0
  %14 = load i8*, i8** %13, align 8
  store i8* %14, i8** %11, align 8
  %15 = load i8*, i8** %11, align 8
  %16 = getelementptr inbounds i8, i8* %15, i64 0
  store i8 -64, i8* %16, align 1
  %17 = load i8, i8* @USBAT_ATA, align 1
  %18 = zext i8 %17 to i32
  %19 = load i8, i8* @USBAT_CMD_COND_READ_BLOCK, align 1
  %20 = zext i8 %19 to i32
  %21 = or i32 %18, %20
  %22 = trunc i32 %21 to i8
  %23 = load i8*, i8** %11, align 8
  %24 = getelementptr inbounds i8, i8* %23, i64 1
  store i8 %22, i8* %24, align 1
  %25 = load i8, i8* @USBAT_ATA_DATA, align 1
  %26 = load i8*, i8** %11, align 8
  %27 = getelementptr inbounds i8, i8* %26, i64 2
  store i8 %25, i8* %27, align 1
  %28 = load i8, i8* @USBAT_ATA_STATUS, align 1
  %29 = load i8*, i8** %11, align 8
  %30 = getelementptr inbounds i8, i8* %29, i64 3
  store i8 %28, i8* %30, align 1
  %31 = load i8*, i8** %11, align 8
  %32 = getelementptr inbounds i8, i8* %31, i64 4
  store i8 -3, i8* %32, align 1
  %33 = load i8, i8* @USBAT_QUAL_FCQ, align 1
  %34 = load i8*, i8** %11, align 8
  %35 = getelementptr inbounds i8, i8* %34, i64 5
  store i8 %33, i8* %35, align 1
  %36 = load i32, i32* %8, align 4
  %37 = call zeroext i8 @LSB_of(i32 %36)
  %38 = load i8*, i8** %11, align 8
  %39 = getelementptr inbounds i8, i8* %38, i64 6
  store i8 %37, i8* %39, align 1
  %40 = load i32, i32* %8, align 4
  %41 = call zeroext i8 @MSB_of(i32 %40)
  %42 = load i8*, i8** %11, align 8
  %43 = getelementptr inbounds i8, i8* %42, i64 7
  store i8 %41, i8* %43, align 1
  %44 = load %struct.us_data*, %struct.us_data** %6, align 8
  %45 = load i8*, i8** %11, align 8
  %46 = call i32 @usbat_execute_command(%struct.us_data* %44, i8* %45, i32 8)
  store i32 %46, i32* %10, align 4
  %47 = load i32, i32* %10, align 4
  %48 = load i32, i32* @USB_STOR_XFER_GOOD, align 4
  %49 = icmp ne i32 %47, %48
  br i1 %49, label %50, label %52

50:                                               ; preds = %4
  %51 = load i32, i32* @USB_STOR_TRANSPORT_FAILED, align 4
  store i32 %51, i32* %5, align 4
  br label %65

52:                                               ; preds = %4
  %53 = load %struct.us_data*, %struct.us_data** %6, align 8
  %54 = load i8*, i8** %7, align 8
  %55 = load i32, i32* %8, align 4
  %56 = load i32, i32* %9, align 4
  %57 = call i32 @usbat_bulk_read(%struct.us_data* %53, i8* %54, i32 %55, i32 %56)
  store i32 %57, i32* %10, align 4
  %58 = load i32, i32* %10, align 4
  %59 = load i32, i32* @USB_STOR_XFER_GOOD, align 4
  %60 = icmp ne i32 %58, %59
  br i1 %60, label %61, label %63

61:                                               ; preds = %52
  %62 = load i32, i32* @USB_STOR_TRANSPORT_FAILED, align 4
  store i32 %62, i32* %5, align 4
  br label %65

63:                                               ; preds = %52
  %64 = load i32, i32* @USB_STOR_TRANSPORT_GOOD, align 4
  store i32 %64, i32* %5, align 4
  br label %65

65:                                               ; preds = %63, %61, %50
  %66 = load i32, i32* %5, align 4
  ret i32 %66
}

declare dso_local zeroext i8 @LSB_of(i32) #1

declare dso_local zeroext i8 @MSB_of(i32) #1

declare dso_local i32 @usbat_execute_command(%struct.us_data*, i8*, i32) #1

declare dso_local i32 @usbat_bulk_read(%struct.us_data*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
