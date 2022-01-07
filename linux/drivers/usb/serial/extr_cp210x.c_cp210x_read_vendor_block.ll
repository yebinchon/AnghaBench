; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/serial/extr_cp210x.c_cp210x_read_vendor_block.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/serial/extr_cp210x.c_cp210x_read_vendor_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_serial = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@CP210X_VENDOR_SPECIFIC = common dso_local global i32 0, align 4
@USB_CTRL_GET_TIMEOUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"failed to get vendor val 0x%04x size %d: %d\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_serial*, i32, i32, i8*, i32)* @cp210x_read_vendor_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cp210x_read_vendor_block(%struct.usb_serial* %0, i32 %1, i32 %2, i8* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.usb_serial*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  store %struct.usb_serial* %0, %struct.usb_serial** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  %14 = load i32, i32* %11, align 4
  %15 = load i32, i32* @GFP_KERNEL, align 4
  %16 = call i8* @kmalloc(i32 %14, i32 %15)
  store i8* %16, i8** %12, align 8
  %17 = load i8*, i8** %12, align 8
  %18 = icmp ne i8* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %5
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %6, align 4
  br label %66

22:                                               ; preds = %5
  %23 = load %struct.usb_serial*, %struct.usb_serial** %7, align 8
  %24 = getelementptr inbounds %struct.usb_serial, %struct.usb_serial* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.usb_serial*, %struct.usb_serial** %7, align 8
  %27 = getelementptr inbounds %struct.usb_serial, %struct.usb_serial* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @usb_rcvctrlpipe(i32 %28, i32 0)
  %30 = load i32, i32* @CP210X_VENDOR_SPECIFIC, align 4
  %31 = load i32, i32* %8, align 4
  %32 = load i32, i32* %9, align 4
  %33 = load %struct.usb_serial*, %struct.usb_serial** %7, align 8
  %34 = call i32 @cp210x_interface_num(%struct.usb_serial* %33)
  %35 = load i8*, i8** %12, align 8
  %36 = load i32, i32* %11, align 4
  %37 = load i32, i32* @USB_CTRL_GET_TIMEOUT, align 4
  %38 = call i32 @usb_control_msg(i32 %25, i32 %29, i32 %30, i32 %31, i32 %32, i32 %34, i8* %35, i32 %36, i32 %37)
  store i32 %38, i32* %13, align 4
  %39 = load i32, i32* %13, align 4
  %40 = load i32, i32* %11, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %42, label %47

42:                                               ; preds = %22
  %43 = load i8*, i8** %10, align 8
  %44 = load i8*, i8** %12, align 8
  %45 = load i32, i32* %11, align 4
  %46 = call i32 @memcpy(i8* %43, i8* %44, i32 %45)
  store i32 0, i32* %13, align 4
  br label %62

47:                                               ; preds = %22
  %48 = load %struct.usb_serial*, %struct.usb_serial** %7, align 8
  %49 = getelementptr inbounds %struct.usb_serial, %struct.usb_serial* %48, i32 0, i32 0
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load i32, i32* %9, align 4
  %53 = load i32, i32* %11, align 4
  %54 = load i32, i32* %13, align 4
  %55 = call i32 @dev_err(i32* %51, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %52, i32 %53, i32 %54)
  %56 = load i32, i32* %13, align 4
  %57 = icmp sge i32 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %47
  %59 = load i32, i32* @EIO, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %13, align 4
  br label %61

61:                                               ; preds = %58, %47
  br label %62

62:                                               ; preds = %61, %42
  %63 = load i8*, i8** %12, align 8
  %64 = call i32 @kfree(i8* %63)
  %65 = load i32, i32* %13, align 4
  store i32 %65, i32* %6, align 4
  br label %66

66:                                               ; preds = %62, %19
  %67 = load i32, i32* %6, align 4
  ret i32 %67
}

declare dso_local i8* @kmalloc(i32, i32) #1

declare dso_local i32 @usb_control_msg(i32, i32, i32, i32, i32, i32, i8*, i32, i32) #1

declare dso_local i32 @usb_rcvctrlpipe(i32, i32) #1

declare dso_local i32 @cp210x_interface_num(%struct.usb_serial*) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32, i32, i32) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
