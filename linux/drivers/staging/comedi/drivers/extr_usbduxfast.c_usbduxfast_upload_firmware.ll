; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_usbduxfast.c_usbduxfast_upload_firmware.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_usbduxfast.c_usbduxfast_upload_firmware.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i32 }
%struct.usb_device = type { i32 }

@FIRMWARE_MAX_LEN = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [35 x i8] c"firmware binary too large for FX2\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@USBDUXFASTSUB_FIRMWARE = common dso_local global i32 0, align 4
@VENDOR_DIR_OUT = common dso_local global i32 0, align 4
@USBDUXFASTSUB_CPUCS = common dso_local global i32 0, align 4
@EZTIMEOUT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"can not stop firmware\0A\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"firmware upload failed\0A\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"can not start firmware\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, i8*, i64, i64)* @usbduxfast_upload_firmware to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usbduxfast_upload_firmware(%struct.comedi_device* %0, i8* %1, i64 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.comedi_device*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.usb_device*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  %14 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %15 = call %struct.usb_device* @comedi_to_usb_dev(%struct.comedi_device* %14)
  store %struct.usb_device* %15, %struct.usb_device** %10, align 8
  %16 = load i8*, i8** %7, align 8
  %17 = icmp ne i8* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %111

19:                                               ; preds = %4
  %20 = load i64, i64* %8, align 8
  %21 = load i64, i64* @FIRMWARE_MAX_LEN, align 8
  %22 = icmp ugt i64 %20, %21
  br i1 %22, label %23, label %30

23:                                               ; preds = %19
  %24 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %25 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @dev_err(i32 %26, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %28 = load i32, i32* @ENOMEM, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %5, align 4
  br label %111

30:                                               ; preds = %19
  %31 = load i8*, i8** %7, align 8
  %32 = load i64, i64* %8, align 8
  %33 = load i32, i32* @GFP_KERNEL, align 4
  %34 = call i8* @kmemdup(i8* %31, i64 %32, i32 %33)
  store i8* %34, i8** %11, align 8
  %35 = load i8*, i8** %11, align 8
  %36 = icmp ne i8* %35, null
  br i1 %36, label %40, label %37

37:                                               ; preds = %30
  %38 = load i32, i32* @ENOMEM, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %5, align 4
  br label %111

40:                                               ; preds = %30
  %41 = load i32, i32* @GFP_KERNEL, align 4
  %42 = call i8* @kmalloc(i32 1, i32 %41)
  store i8* %42, i8** %12, align 8
  %43 = load i8*, i8** %12, align 8
  %44 = icmp ne i8* %43, null
  br i1 %44, label %50, label %45

45:                                               ; preds = %40
  %46 = load i8*, i8** %11, align 8
  %47 = call i32 @kfree(i8* %46)
  %48 = load i32, i32* @ENOMEM, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %5, align 4
  br label %111

50:                                               ; preds = %40
  %51 = load i8*, i8** %12, align 8
  store i8 1, i8* %51, align 1
  %52 = load %struct.usb_device*, %struct.usb_device** %10, align 8
  %53 = load %struct.usb_device*, %struct.usb_device** %10, align 8
  %54 = call i32 @usb_sndctrlpipe(%struct.usb_device* %53, i32 0)
  %55 = load i32, i32* @USBDUXFASTSUB_FIRMWARE, align 4
  %56 = load i32, i32* @VENDOR_DIR_OUT, align 4
  %57 = load i32, i32* @USBDUXFASTSUB_CPUCS, align 4
  %58 = load i8*, i8** %12, align 8
  %59 = load i32, i32* @EZTIMEOUT, align 4
  %60 = call i32 @usb_control_msg(%struct.usb_device* %52, i32 %54, i32 %55, i32 %56, i32 %57, i32 0, i8* %58, i32 1, i32 %59)
  store i32 %60, i32* %13, align 4
  %61 = load i32, i32* %13, align 4
  %62 = icmp slt i32 %61, 0
  br i1 %62, label %63, label %68

63:                                               ; preds = %50
  %64 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %65 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @dev_err(i32 %66, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  br label %105

68:                                               ; preds = %50
  %69 = load %struct.usb_device*, %struct.usb_device** %10, align 8
  %70 = load %struct.usb_device*, %struct.usb_device** %10, align 8
  %71 = call i32 @usb_sndctrlpipe(%struct.usb_device* %70, i32 0)
  %72 = load i32, i32* @USBDUXFASTSUB_FIRMWARE, align 4
  %73 = load i32, i32* @VENDOR_DIR_OUT, align 4
  %74 = load i8*, i8** %11, align 8
  %75 = load i64, i64* %8, align 8
  %76 = trunc i64 %75 to i32
  %77 = load i32, i32* @EZTIMEOUT, align 4
  %78 = call i32 @usb_control_msg(%struct.usb_device* %69, i32 %71, i32 %72, i32 %73, i32 0, i32 0, i8* %74, i32 %76, i32 %77)
  store i32 %78, i32* %13, align 4
  %79 = load i32, i32* %13, align 4
  %80 = icmp slt i32 %79, 0
  br i1 %80, label %81, label %86

81:                                               ; preds = %68
  %82 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %83 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @dev_err(i32 %84, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  br label %105

86:                                               ; preds = %68
  %87 = load i8*, i8** %12, align 8
  store i8 0, i8* %87, align 1
  %88 = load %struct.usb_device*, %struct.usb_device** %10, align 8
  %89 = load %struct.usb_device*, %struct.usb_device** %10, align 8
  %90 = call i32 @usb_sndctrlpipe(%struct.usb_device* %89, i32 0)
  %91 = load i32, i32* @USBDUXFASTSUB_FIRMWARE, align 4
  %92 = load i32, i32* @VENDOR_DIR_OUT, align 4
  %93 = load i32, i32* @USBDUXFASTSUB_CPUCS, align 4
  %94 = load i8*, i8** %12, align 8
  %95 = load i32, i32* @EZTIMEOUT, align 4
  %96 = call i32 @usb_control_msg(%struct.usb_device* %88, i32 %90, i32 %91, i32 %92, i32 %93, i32 0, i8* %94, i32 1, i32 %95)
  store i32 %96, i32* %13, align 4
  %97 = load i32, i32* %13, align 4
  %98 = icmp slt i32 %97, 0
  br i1 %98, label %99, label %104

99:                                               ; preds = %86
  %100 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %101 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @dev_err(i32 %102, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0))
  br label %104

104:                                              ; preds = %99, %86
  br label %105

105:                                              ; preds = %104, %81, %63
  %106 = load i8*, i8** %12, align 8
  %107 = call i32 @kfree(i8* %106)
  %108 = load i8*, i8** %11, align 8
  %109 = call i32 @kfree(i8* %108)
  %110 = load i32, i32* %13, align 4
  store i32 %110, i32* %5, align 4
  br label %111

111:                                              ; preds = %105, %45, %37, %23, %18
  %112 = load i32, i32* %5, align 4
  ret i32 %112
}

declare dso_local %struct.usb_device* @comedi_to_usb_dev(%struct.comedi_device*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i8* @kmemdup(i8*, i64, i32) #1

declare dso_local i8* @kmalloc(i32, i32) #1

declare dso_local i32 @kfree(i8*) #1

declare dso_local i32 @usb_control_msg(%struct.usb_device*, i32, i32, i32, i32, i32, i8*, i32, i32) #1

declare dso_local i32 @usb_sndctrlpipe(%struct.usb_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
