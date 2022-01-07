; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/core/extr_message.c_usb_get_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/core/extr_message.c_usb_get_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_device = type { i32 }

@USB_RECIP_DEVICE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@USB_REQ_GET_STATUS = common dso_local global i32 0, align 4
@USB_DIR_IN = common dso_local global i32 0, align 4
@USB_CTRL_GET_TIMEOUT = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @usb_get_status(%struct.usb_device* %0, i32 %1, i32 %2, i32 %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.usb_device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  store %struct.usb_device* %0, %struct.usb_device** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i8* %4, i8** %11, align 8
  %15 = load i32, i32* %9, align 4
  switch i32 %15, label %25 [
    i32 128, label %16
    i32 129, label %17
  ]

16:                                               ; preds = %5
  store i32 2, i32* %14, align 4
  br label %28

17:                                               ; preds = %5
  %18 = load i32, i32* %8, align 4
  %19 = load i32, i32* @USB_RECIP_DEVICE, align 4
  %20 = icmp ne i32 %18, %19
  br i1 %20, label %21, label %24

21:                                               ; preds = %17
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %6, align 4
  br label %84

24:                                               ; preds = %17
  store i32 4, i32* %14, align 4
  br label %28

25:                                               ; preds = %5
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %6, align 4
  br label %84

28:                                               ; preds = %24, %16
  %29 = load i32, i32* %14, align 4
  %30 = load i32, i32* @GFP_KERNEL, align 4
  %31 = call i8* @kmalloc(i32 %29, i32 %30)
  store i8* %31, i8** %13, align 8
  %32 = load i8*, i8** %13, align 8
  %33 = icmp ne i8* %32, null
  br i1 %33, label %37, label %34

34:                                               ; preds = %28
  %35 = load i32, i32* @ENOMEM, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %6, align 4
  br label %84

37:                                               ; preds = %28
  %38 = load %struct.usb_device*, %struct.usb_device** %7, align 8
  %39 = load %struct.usb_device*, %struct.usb_device** %7, align 8
  %40 = call i32 @usb_rcvctrlpipe(%struct.usb_device* %39, i32 0)
  %41 = load i32, i32* @USB_REQ_GET_STATUS, align 4
  %42 = load i32, i32* @USB_DIR_IN, align 4
  %43 = load i32, i32* %8, align 4
  %44 = or i32 %42, %43
  %45 = load i32, i32* %10, align 4
  %46 = load i8*, i8** %13, align 8
  %47 = load i32, i32* %14, align 4
  %48 = load i32, i32* @USB_CTRL_GET_TIMEOUT, align 4
  %49 = call i32 @usb_control_msg(%struct.usb_device* %38, i32 %40, i32 %41, i32 %44, i32 128, i32 %45, i8* %46, i32 %47, i32 %48)
  store i32 %49, i32* %12, align 4
  %50 = load i32, i32* %12, align 4
  switch i32 %50, label %77 [
    i32 4, label %51
    i32 2, label %64
  ]

51:                                               ; preds = %37
  %52 = load i32, i32* %9, align 4
  %53 = icmp ne i32 %52, 129
  br i1 %53, label %54, label %57

54:                                               ; preds = %51
  %55 = load i32, i32* @EIO, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %12, align 4
  br label %80

57:                                               ; preds = %51
  %58 = load i8*, i8** %13, align 8
  %59 = bitcast i8* %58 to i32*
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @le32_to_cpu(i32 %60)
  %62 = load i8*, i8** %11, align 8
  %63 = bitcast i8* %62 to i32*
  store i32 %61, i32* %63, align 4
  store i32 0, i32* %12, align 4
  br label %80

64:                                               ; preds = %37
  %65 = load i32, i32* %9, align 4
  %66 = icmp ne i32 %65, 128
  br i1 %66, label %67, label %70

67:                                               ; preds = %64
  %68 = load i32, i32* @EIO, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %12, align 4
  br label %80

70:                                               ; preds = %64
  %71 = load i8*, i8** %13, align 8
  %72 = bitcast i8* %71 to i32*
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @le16_to_cpu(i32 %73)
  %75 = load i8*, i8** %11, align 8
  %76 = bitcast i8* %75 to i32*
  store i32 %74, i32* %76, align 4
  store i32 0, i32* %12, align 4
  br label %80

77:                                               ; preds = %37
  %78 = load i32, i32* @EIO, align 4
  %79 = sub nsw i32 0, %78
  store i32 %79, i32* %12, align 4
  br label %80

80:                                               ; preds = %77, %70, %67, %57, %54
  %81 = load i8*, i8** %13, align 8
  %82 = call i32 @kfree(i8* %81)
  %83 = load i32, i32* %12, align 4
  store i32 %83, i32* %6, align 4
  br label %84

84:                                               ; preds = %80, %34, %25, %21
  %85 = load i32, i32* %6, align 4
  ret i32 %85
}

declare dso_local i8* @kmalloc(i32, i32) #1

declare dso_local i32 @usb_control_msg(%struct.usb_device*, i32, i32, i32, i32, i32, i8*, i32, i32) #1

declare dso_local i32 @usb_rcvctrlpipe(%struct.usb_device*, i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
