; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/serial/extr_mct_u232.c_mct_u232_set_line_ctrl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/serial/extr_mct_u232.c_mct_u232_set_line_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_serial_port = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@MCT_U232_MAX_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@MCT_U232_SET_LINE_CTRL_REQUEST = common dso_local global i32 0, align 4
@MCT_U232_SET_REQUEST_TYPE = common dso_local global i32 0, align 4
@MCT_U232_SET_LINE_CTRL_SIZE = common dso_local global i32 0, align 4
@WDR_TIMEOUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"Set LINE CTRL 0x%x failed (error = %d)\0A\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"set_line_ctrl: 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_serial_port*, i8)* @mct_u232_set_line_ctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mct_u232_set_line_ctrl(%struct.usb_serial_port* %0, i8 zeroext %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usb_serial_port*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  store %struct.usb_serial_port* %0, %struct.usb_serial_port** %4, align 8
  store i8 %1, i8* %5, align 1
  %8 = load i32, i32* @MCT_U232_MAX_SIZE, align 4
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call i8* @kmalloc(i32 %8, i32 %9)
  store i8* %10, i8** %7, align 8
  %11 = load i8*, i8** %7, align 8
  %12 = icmp eq i8* %11, null
  br i1 %12, label %13, label %16

13:                                               ; preds = %2
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %3, align 4
  br label %53

16:                                               ; preds = %2
  %17 = load i8, i8* %5, align 1
  %18 = load i8*, i8** %7, align 8
  %19 = getelementptr inbounds i8, i8* %18, i64 0
  store i8 %17, i8* %19, align 1
  %20 = load %struct.usb_serial_port*, %struct.usb_serial_port** %4, align 8
  %21 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %20, i32 0, i32 1
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.usb_serial_port*, %struct.usb_serial_port** %4, align 8
  %26 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %25, i32 0, i32 1
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @usb_sndctrlpipe(i32 %29, i32 0)
  %31 = load i32, i32* @MCT_U232_SET_LINE_CTRL_REQUEST, align 4
  %32 = load i32, i32* @MCT_U232_SET_REQUEST_TYPE, align 4
  %33 = load i8*, i8** %7, align 8
  %34 = load i32, i32* @MCT_U232_SET_LINE_CTRL_SIZE, align 4
  %35 = load i32, i32* @WDR_TIMEOUT, align 4
  %36 = call i32 @usb_control_msg(i32 %24, i32 %30, i32 %31, i32 %32, i32 0, i32 0, i8* %33, i32 %34, i32 %35)
  store i32 %36, i32* %6, align 4
  %37 = load i32, i32* %6, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %45

39:                                               ; preds = %16
  %40 = load %struct.usb_serial_port*, %struct.usb_serial_port** %4, align 8
  %41 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %40, i32 0, i32 0
  %42 = load i8, i8* %5, align 1
  %43 = load i32, i32* %6, align 4
  %44 = call i32 @dev_err(i32* %41, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i8 zeroext %42, i32 %43)
  br label %45

45:                                               ; preds = %39, %16
  %46 = load %struct.usb_serial_port*, %struct.usb_serial_port** %4, align 8
  %47 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %46, i32 0, i32 0
  %48 = load i8, i8* %5, align 1
  %49 = call i32 @dev_dbg(i32* %47, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i8 zeroext %48)
  %50 = load i8*, i8** %7, align 8
  %51 = call i32 @kfree(i8* %50)
  %52 = load i32, i32* %6, align 4
  store i32 %52, i32* %3, align 4
  br label %53

53:                                               ; preds = %45, %13
  %54 = load i32, i32* %3, align 4
  ret i32 %54
}

declare dso_local i8* @kmalloc(i32, i32) #1

declare dso_local i32 @usb_control_msg(i32, i32, i32, i32, i32, i32, i8*, i32, i32) #1

declare dso_local i32 @usb_sndctrlpipe(i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i8 zeroext, i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i8 zeroext) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
