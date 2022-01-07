; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/storage/extr_shuttle_usbat.c_usbat_select_and_test_registers.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/storage/extr_shuttle_usbat.c_usbat_select_and_test_registers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.us_data = type { i8* }

@USBAT_ATA = common dso_local global i32 0, align 4
@USBAT_ATA_DEVICE = common dso_local global i32 0, align 4
@USB_STOR_XFER_GOOD = common dso_local global i64 0, align 8
@USB_STOR_TRANSPORT_ERROR = common dso_local global i32 0, align 4
@USBAT_ATA_STATUS = common dso_local global i32 0, align 4
@USBAT_ATA_LBA_ME = common dso_local global i32 0, align 4
@USBAT_ATA_LBA_HI = common dso_local global i32 0, align 4
@USB_STOR_TRANSPORT_GOOD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.us_data*)* @usbat_select_and_test_registers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usbat_select_and_test_registers(%struct.us_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.us_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  store %struct.us_data* %0, %struct.us_data** %3, align 8
  %6 = load %struct.us_data*, %struct.us_data** %3, align 8
  %7 = getelementptr inbounds %struct.us_data, %struct.us_data* %6, i32 0, i32 0
  %8 = load i8*, i8** %7, align 8
  store i8* %8, i8** %5, align 8
  store i32 160, i32* %4, align 4
  br label %9

9:                                                ; preds = %101, %1
  %10 = load i32, i32* %4, align 4
  %11 = icmp sle i32 %10, 176
  br i1 %11, label %12, label %104

12:                                               ; preds = %9
  %13 = load %struct.us_data*, %struct.us_data** %3, align 8
  %14 = load i32, i32* @USBAT_ATA, align 4
  %15 = load i32, i32* @USBAT_ATA_DEVICE, align 4
  %16 = load i32, i32* %4, align 4
  %17 = call i64 @usbat_write(%struct.us_data* %13, i32 %14, i32 %15, i32 %16)
  %18 = load i64, i64* @USB_STOR_XFER_GOOD, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %12
  %21 = load i32, i32* @USB_STOR_TRANSPORT_ERROR, align 4
  store i32 %21, i32* %2, align 4
  br label %106

22:                                               ; preds = %12
  %23 = load %struct.us_data*, %struct.us_data** %3, align 8
  %24 = load i32, i32* @USBAT_ATA, align 4
  %25 = load i32, i32* @USBAT_ATA_STATUS, align 4
  %26 = load i8*, i8** %5, align 8
  %27 = call i64 @usbat_read(%struct.us_data* %23, i32 %24, i32 %25, i8* %26)
  %28 = load i64, i64* @USB_STOR_XFER_GOOD, align 8
  %29 = icmp ne i64 %27, %28
  br i1 %29, label %30, label %32

30:                                               ; preds = %22
  %31 = load i32, i32* @USB_STOR_TRANSPORT_ERROR, align 4
  store i32 %31, i32* %2, align 4
  br label %106

32:                                               ; preds = %22
  %33 = load %struct.us_data*, %struct.us_data** %3, align 8
  %34 = load i32, i32* @USBAT_ATA, align 4
  %35 = load i32, i32* @USBAT_ATA_DEVICE, align 4
  %36 = load i8*, i8** %5, align 8
  %37 = call i64 @usbat_read(%struct.us_data* %33, i32 %34, i32 %35, i8* %36)
  %38 = load i64, i64* @USB_STOR_XFER_GOOD, align 8
  %39 = icmp ne i64 %37, %38
  br i1 %39, label %40, label %42

40:                                               ; preds = %32
  %41 = load i32, i32* @USB_STOR_TRANSPORT_ERROR, align 4
  store i32 %41, i32* %2, align 4
  br label %106

42:                                               ; preds = %32
  %43 = load %struct.us_data*, %struct.us_data** %3, align 8
  %44 = load i32, i32* @USBAT_ATA, align 4
  %45 = load i32, i32* @USBAT_ATA_LBA_ME, align 4
  %46 = load i8*, i8** %5, align 8
  %47 = call i64 @usbat_read(%struct.us_data* %43, i32 %44, i32 %45, i8* %46)
  %48 = load i64, i64* @USB_STOR_XFER_GOOD, align 8
  %49 = icmp ne i64 %47, %48
  br i1 %49, label %50, label %52

50:                                               ; preds = %42
  %51 = load i32, i32* @USB_STOR_TRANSPORT_ERROR, align 4
  store i32 %51, i32* %2, align 4
  br label %106

52:                                               ; preds = %42
  %53 = load %struct.us_data*, %struct.us_data** %3, align 8
  %54 = load i32, i32* @USBAT_ATA, align 4
  %55 = load i32, i32* @USBAT_ATA_LBA_HI, align 4
  %56 = load i8*, i8** %5, align 8
  %57 = call i64 @usbat_read(%struct.us_data* %53, i32 %54, i32 %55, i8* %56)
  %58 = load i64, i64* @USB_STOR_XFER_GOOD, align 8
  %59 = icmp ne i64 %57, %58
  br i1 %59, label %60, label %62

60:                                               ; preds = %52
  %61 = load i32, i32* @USB_STOR_TRANSPORT_ERROR, align 4
  store i32 %61, i32* %2, align 4
  br label %106

62:                                               ; preds = %52
  %63 = load %struct.us_data*, %struct.us_data** %3, align 8
  %64 = load i32, i32* @USBAT_ATA, align 4
  %65 = load i32, i32* @USBAT_ATA_LBA_ME, align 4
  %66 = call i64 @usbat_write(%struct.us_data* %63, i32 %64, i32 %65, i32 85)
  %67 = load i64, i64* @USB_STOR_XFER_GOOD, align 8
  %68 = icmp ne i64 %66, %67
  br i1 %68, label %69, label %71

69:                                               ; preds = %62
  %70 = load i32, i32* @USB_STOR_TRANSPORT_ERROR, align 4
  store i32 %70, i32* %2, align 4
  br label %106

71:                                               ; preds = %62
  %72 = load %struct.us_data*, %struct.us_data** %3, align 8
  %73 = load i32, i32* @USBAT_ATA, align 4
  %74 = load i32, i32* @USBAT_ATA_LBA_HI, align 4
  %75 = call i64 @usbat_write(%struct.us_data* %72, i32 %73, i32 %74, i32 170)
  %76 = load i64, i64* @USB_STOR_XFER_GOOD, align 8
  %77 = icmp ne i64 %75, %76
  br i1 %77, label %78, label %80

78:                                               ; preds = %71
  %79 = load i32, i32* @USB_STOR_TRANSPORT_ERROR, align 4
  store i32 %79, i32* %2, align 4
  br label %106

80:                                               ; preds = %71
  %81 = load %struct.us_data*, %struct.us_data** %3, align 8
  %82 = load i32, i32* @USBAT_ATA, align 4
  %83 = load i32, i32* @USBAT_ATA_LBA_ME, align 4
  %84 = load i8*, i8** %5, align 8
  %85 = call i64 @usbat_read(%struct.us_data* %81, i32 %82, i32 %83, i8* %84)
  %86 = load i64, i64* @USB_STOR_XFER_GOOD, align 8
  %87 = icmp ne i64 %85, %86
  br i1 %87, label %88, label %90

88:                                               ; preds = %80
  %89 = load i32, i32* @USB_STOR_TRANSPORT_ERROR, align 4
  store i32 %89, i32* %2, align 4
  br label %106

90:                                               ; preds = %80
  %91 = load %struct.us_data*, %struct.us_data** %3, align 8
  %92 = load i32, i32* @USBAT_ATA, align 4
  %93 = load i32, i32* @USBAT_ATA_LBA_ME, align 4
  %94 = load i8*, i8** %5, align 8
  %95 = call i64 @usbat_read(%struct.us_data* %91, i32 %92, i32 %93, i8* %94)
  %96 = load i64, i64* @USB_STOR_XFER_GOOD, align 8
  %97 = icmp ne i64 %95, %96
  br i1 %97, label %98, label %100

98:                                               ; preds = %90
  %99 = load i32, i32* @USB_STOR_TRANSPORT_ERROR, align 4
  store i32 %99, i32* %2, align 4
  br label %106

100:                                              ; preds = %90
  br label %101

101:                                              ; preds = %100
  %102 = load i32, i32* %4, align 4
  %103 = add nsw i32 %102, 16
  store i32 %103, i32* %4, align 4
  br label %9

104:                                              ; preds = %9
  %105 = load i32, i32* @USB_STOR_TRANSPORT_GOOD, align 4
  store i32 %105, i32* %2, align 4
  br label %106

106:                                              ; preds = %104, %98, %88, %78, %69, %60, %50, %40, %30, %20
  %107 = load i32, i32* %2, align 4
  ret i32 %107
}

declare dso_local i64 @usbat_write(%struct.us_data*, i32, i32, i32) #1

declare dso_local i64 @usbat_read(%struct.us_data*, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
