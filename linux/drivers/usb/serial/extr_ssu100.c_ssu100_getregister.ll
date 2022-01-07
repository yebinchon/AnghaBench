; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/serial/extr_ssu100.c_ssu100_getregister.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/serial/extr_ssu100.c_ssu100_getregister.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_device = type { i32 }

@QT_SET_GET_REGISTER = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_device*, i16, i16, i32*)* @ssu100_getregister to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ssu100_getregister(%struct.usb_device* %0, i16 zeroext %1, i16 zeroext %2, i32* %3) #0 {
  %5 = alloca %struct.usb_device*, align 8
  %6 = alloca i16, align 2
  %7 = alloca i16, align 2
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  store %struct.usb_device* %0, %struct.usb_device** %5, align 8
  store i16 %1, i16* %6, align 2
  store i16 %2, i16* %7, align 2
  store i32* %3, i32** %8, align 8
  %10 = load %struct.usb_device*, %struct.usb_device** %5, align 8
  %11 = load %struct.usb_device*, %struct.usb_device** %5, align 8
  %12 = call i32 @usb_rcvctrlpipe(%struct.usb_device* %11, i32 0)
  %13 = load i32, i32* @QT_SET_GET_REGISTER, align 4
  %14 = load i16, i16* %7, align 2
  %15 = load i16, i16* %6, align 2
  %16 = load i32*, i32** %8, align 8
  %17 = call i32 @usb_control_msg(%struct.usb_device* %10, i32 %12, i32 %13, i32 192, i16 zeroext %14, i16 zeroext %15, i32* %16, i32 4, i32 300)
  store i32 %17, i32* %9, align 4
  %18 = load i32, i32* %9, align 4
  %19 = icmp slt i32 %18, 4
  br i1 %19, label %20, label %27

20:                                               ; preds = %4
  %21 = load i32, i32* %9, align 4
  %22 = icmp sge i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %20
  %24 = load i32, i32* @EIO, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %9, align 4
  br label %26

26:                                               ; preds = %23, %20
  br label %27

27:                                               ; preds = %26, %4
  %28 = load i32, i32* %9, align 4
  ret i32 %28
}

declare dso_local i32 @usb_control_msg(%struct.usb_device*, i32, i32, i32, i16 zeroext, i16 zeroext, i32*, i32, i32) #1

declare dso_local i32 @usb_rcvctrlpipe(%struct.usb_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
