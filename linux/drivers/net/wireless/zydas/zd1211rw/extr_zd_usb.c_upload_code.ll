; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/zydas/zd1211rw/extr_zd_usb.c_upload_code.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/zydas/zd1211rw/extr_zd_usb.c_upload_code.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_device = type { i32 }

@MAX_TRANSFER_SIZE = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"transfer size %zu\0A\00", align 1
@USB_REQ_FIRMWARE_DOWNLOAD = common dso_local global i32 0, align 4
@USB_DIR_OUT = common dso_local global i32 0, align 4
@USB_TYPE_VENDOR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [65 x i8] c"USB control request for firmware upload failed. Error number %d\0A\00", align 1
@REBOOT = common dso_local global i32 0, align 4
@USB_REQ_FIRMWARE_CONFIRM = common dso_local global i32 0, align 4
@USB_DIR_IN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [63 x i8] c"control request firmware confirmation failed. Return value %d\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [71 x i8] c"Internal error while downloading. Firmware confirm return value %#04x\0A\00", align 1
@.str.4 = private unnamed_addr constant [37 x i8] c"firmware confirm return value %#04x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_device*, i32*, i64, i64, i32)* @upload_code to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @upload_code(%struct.usb_device* %0, i32* %1, i64 %2, i64 %3, i32 %4) #0 {
  %6 = alloca %struct.usb_device*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store %struct.usb_device* %0, %struct.usb_device** %6, align 8
  store i32* %1, i32** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  store i32 %4, i32* %10, align 4
  %15 = load i64, i64* @MAX_TRANSFER_SIZE, align 8
  %16 = load i32, i32* @GFP_KERNEL, align 4
  %17 = call i32* @kmalloc(i64 %15, i32 %16)
  store i32* %17, i32** %11, align 8
  %18 = load i32*, i32** %11, align 8
  %19 = icmp ne i32* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %5
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %12, align 4
  br label %130

23:                                               ; preds = %5
  %24 = load i64, i64* %8, align 8
  %25 = and i64 %24, -2
  store i64 %25, i64* %8, align 8
  br label %26

26:                                               ; preds = %67, %23
  %27 = load i64, i64* %8, align 8
  %28 = icmp ugt i64 %27, 0
  br i1 %28, label %29, label %81

29:                                               ; preds = %26
  %30 = load i64, i64* %8, align 8
  %31 = load i64, i64* @MAX_TRANSFER_SIZE, align 8
  %32 = icmp ule i64 %30, %31
  br i1 %32, label %33, label %35

33:                                               ; preds = %29
  %34 = load i64, i64* %8, align 8
  br label %37

35:                                               ; preds = %29
  %36 = load i64, i64* @MAX_TRANSFER_SIZE, align 8
  br label %37

37:                                               ; preds = %35, %33
  %38 = phi i64 [ %34, %33 ], [ %36, %35 ]
  store i64 %38, i64* %13, align 8
  %39 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %40 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %39, i32 0, i32 0
  %41 = load i64, i64* %13, align 8
  %42 = trunc i64 %41 to i32
  %43 = call i32 @dev_dbg_f(i32* %40, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %42)
  %44 = load i32*, i32** %11, align 8
  %45 = load i32*, i32** %7, align 8
  %46 = load i64, i64* %13, align 8
  %47 = call i32 @memcpy(i32* %44, i32* %45, i64 %46)
  %48 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %49 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %50 = call i32 @usb_sndctrlpipe(%struct.usb_device* %49, i32 0)
  %51 = load i32, i32* @USB_REQ_FIRMWARE_DOWNLOAD, align 4
  %52 = load i32, i32* @USB_DIR_OUT, align 4
  %53 = load i32, i32* @USB_TYPE_VENDOR, align 4
  %54 = or i32 %52, %53
  %55 = load i64, i64* %9, align 8
  %56 = load i32*, i32** %11, align 8
  %57 = load i64, i64* %13, align 8
  %58 = trunc i64 %57 to i32
  %59 = call i32 @usb_control_msg(%struct.usb_device* %48, i32 %50, i32 %51, i32 %54, i64 %55, i32 0, i32* %56, i32 %58, i32 1000)
  store i32 %59, i32* %12, align 4
  %60 = load i32, i32* %12, align 4
  %61 = icmp slt i32 %60, 0
  br i1 %61, label %62, label %67

62:                                               ; preds = %37
  %63 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %64 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %63, i32 0, i32 0
  %65 = load i32, i32* %12, align 4
  %66 = call i32 @dev_err(i32* %64, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.1, i64 0, i64 0), i32 %65)
  br label %130

67:                                               ; preds = %37
  %68 = load i32, i32* %12, align 4
  %69 = and i32 %68, -2
  %70 = sext i32 %69 to i64
  store i64 %70, i64* %13, align 8
  %71 = load i64, i64* %13, align 8
  %72 = load i64, i64* %8, align 8
  %73 = sub i64 %72, %71
  store i64 %73, i64* %8, align 8
  %74 = load i64, i64* %13, align 8
  %75 = load i32*, i32** %7, align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 %74
  store i32* %76, i32** %7, align 8
  %77 = load i64, i64* %13, align 8
  %78 = udiv i64 %77, 8
  %79 = load i64, i64* %9, align 8
  %80 = add i64 %79, %78
  store i64 %80, i64* %9, align 8
  br label %26

81:                                               ; preds = %26
  %82 = load i32, i32* %10, align 4
  %83 = load i32, i32* @REBOOT, align 4
  %84 = and i32 %82, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %129

86:                                               ; preds = %81
  %87 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %88 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %89 = call i32 @usb_rcvctrlpipe(%struct.usb_device* %88, i32 0)
  %90 = load i32, i32* @USB_REQ_FIRMWARE_CONFIRM, align 4
  %91 = load i32, i32* @USB_DIR_IN, align 4
  %92 = load i32, i32* @USB_TYPE_VENDOR, align 4
  %93 = or i32 %91, %92
  %94 = load i32*, i32** %11, align 8
  %95 = call i32 @usb_control_msg(%struct.usb_device* %87, i32 %89, i32 %90, i32 %93, i64 0, i32 0, i32* %94, i32 4, i32 5000)
  store i32 %95, i32* %12, align 4
  %96 = load i32, i32* %12, align 4
  %97 = sext i32 %96 to i64
  %98 = icmp ne i64 %97, 4
  br i1 %98, label %99, label %110

99:                                               ; preds = %86
  %100 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %101 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %100, i32 0, i32 0
  %102 = load i32, i32* %12, align 4
  %103 = call i32 @dev_err(i32* %101, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.2, i64 0, i64 0), i32 %102)
  %104 = load i32, i32* %12, align 4
  %105 = icmp sge i32 %104, 0
  br i1 %105, label %106, label %109

106:                                              ; preds = %99
  %107 = load i32, i32* @ENODEV, align 4
  %108 = sub nsw i32 0, %107
  store i32 %108, i32* %12, align 4
  br label %109

109:                                              ; preds = %106, %99
  br label %130

110:                                              ; preds = %86
  %111 = load i32*, i32** %11, align 8
  %112 = getelementptr inbounds i32, i32* %111, i64 0
  %113 = load i32, i32* %112, align 4
  store i32 %113, i32* %14, align 4
  %114 = load i32, i32* %14, align 4
  %115 = and i32 %114, 128
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %124

117:                                              ; preds = %110
  %118 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %119 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %118, i32 0, i32 0
  %120 = load i32, i32* %14, align 4
  %121 = call i32 @dev_err(i32* %119, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.3, i64 0, i64 0), i32 %120)
  %122 = load i32, i32* @ENODEV, align 4
  %123 = sub nsw i32 0, %122
  store i32 %123, i32* %12, align 4
  br label %130

124:                                              ; preds = %110
  %125 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %126 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %125, i32 0, i32 0
  %127 = load i32, i32* %14, align 4
  %128 = call i32 @dev_dbg_f(i32* %126, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0), i32 %127)
  br label %129

129:                                              ; preds = %124, %81
  store i32 0, i32* %12, align 4
  br label %130

130:                                              ; preds = %129, %117, %109, %62, %20
  %131 = load i32*, i32** %11, align 8
  %132 = call i32 @kfree(i32* %131)
  %133 = load i32, i32* %12, align 4
  ret i32 %133
}

declare dso_local i32* @kmalloc(i64, i32) #1

declare dso_local i32 @dev_dbg_f(i32*, i8*, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i64) #1

declare dso_local i32 @usb_control_msg(%struct.usb_device*, i32, i32, i32, i64, i32, i32*, i32, i32) #1

declare dso_local i32 @usb_sndctrlpipe(%struct.usb_device*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @usb_rcvctrlpipe(%struct.usb_device*, i32) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
