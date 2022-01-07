; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/serial/extr_kobil_sct.c_kobil_tiocmget.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/serial/extr_kobil_sct.c_kobil_tiocmget.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { %struct.usb_serial_port* }
%struct.usb_serial_port = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.kobil_private = type { i64 }

@KOBIL_USBTWIN_PRODUCT_ID = common dso_local global i64 0, align 8
@KOBIL_KAAN_SIM_PRODUCT_ID = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@SUSBCRequest_GetStatusLineState = common dso_local global i32 0, align 4
@USB_TYPE_VENDOR = common dso_local global i32 0, align 4
@USB_RECIP_ENDPOINT = common dso_local global i32 0, align 4
@USB_DIR_IN = common dso_local global i32 0, align 4
@KOBIL_TIMEOUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"Send get_status_line_state URB returns: %i\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"Statusline: %02x\0A\00", align 1
@SUSBCR_GSL_DSR = common dso_local global i8 0, align 1
@TIOCM_DSR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tty_struct*)* @kobil_tiocmget to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kobil_tiocmget(%struct.tty_struct* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tty_struct*, align 8
  %4 = alloca %struct.usb_serial_port*, align 8
  %5 = alloca %struct.kobil_private*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store %struct.tty_struct* %0, %struct.tty_struct** %3, align 8
  %9 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %10 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %9, i32 0, i32 0
  %11 = load %struct.usb_serial_port*, %struct.usb_serial_port** %10, align 8
  store %struct.usb_serial_port* %11, %struct.usb_serial_port** %4, align 8
  store i32 8, i32* %8, align 4
  %12 = load %struct.usb_serial_port*, %struct.usb_serial_port** %4, align 8
  %13 = call %struct.kobil_private* @usb_get_serial_port_data(%struct.usb_serial_port* %12)
  store %struct.kobil_private* %13, %struct.kobil_private** %5, align 8
  %14 = load %struct.kobil_private*, %struct.kobil_private** %5, align 8
  %15 = getelementptr inbounds %struct.kobil_private, %struct.kobil_private* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @KOBIL_USBTWIN_PRODUCT_ID, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %25, label %19

19:                                               ; preds = %1
  %20 = load %struct.kobil_private*, %struct.kobil_private** %5, align 8
  %21 = getelementptr inbounds %struct.kobil_private, %struct.kobil_private* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @KOBIL_KAAN_SIM_PRODUCT_ID, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %19, %1
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %2, align 4
  br label %95

28:                                               ; preds = %19
  %29 = load i32, i32* %8, align 4
  %30 = load i32, i32* @GFP_KERNEL, align 4
  %31 = call i8* @kzalloc(i32 %29, i32 %30)
  store i8* %31, i8** %7, align 8
  %32 = load i8*, i8** %7, align 8
  %33 = icmp ne i8* %32, null
  br i1 %33, label %37, label %34

34:                                               ; preds = %28
  %35 = load i32, i32* @ENOMEM, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %2, align 4
  br label %95

37:                                               ; preds = %28
  %38 = load %struct.usb_serial_port*, %struct.usb_serial_port** %4, align 8
  %39 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %38, i32 0, i32 1
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.usb_serial_port*, %struct.usb_serial_port** %4, align 8
  %44 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %43, i32 0, i32 1
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @usb_rcvctrlpipe(i32 %47, i32 0)
  %49 = load i32, i32* @SUSBCRequest_GetStatusLineState, align 4
  %50 = load i32, i32* @USB_TYPE_VENDOR, align 4
  %51 = load i32, i32* @USB_RECIP_ENDPOINT, align 4
  %52 = or i32 %50, %51
  %53 = load i32, i32* @USB_DIR_IN, align 4
  %54 = or i32 %52, %53
  %55 = load i8*, i8** %7, align 8
  %56 = load i32, i32* %8, align 4
  %57 = load i32, i32* @KOBIL_TIMEOUT, align 4
  %58 = call i32 @usb_control_msg(i32 %42, i32 %48, i32 %49, i32 %54, i32 0, i32 0, i8* %55, i32 %56, i32 %57)
  store i32 %58, i32* %6, align 4
  %59 = load %struct.usb_serial_port*, %struct.usb_serial_port** %4, align 8
  %60 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %59, i32 0, i32 0
  %61 = load i32, i32* %6, align 4
  %62 = trunc i32 %61 to i8
  %63 = call i32 @dev_dbg(i32* %60, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i8 zeroext %62)
  %64 = load i32, i32* %6, align 4
  %65 = icmp slt i32 %64, 1
  br i1 %65, label %66, label %73

66:                                               ; preds = %37
  %67 = load i32, i32* %6, align 4
  %68 = icmp sge i32 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %66
  %70 = load i32, i32* @EIO, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %6, align 4
  br label %72

72:                                               ; preds = %69, %66
  br label %91

73:                                               ; preds = %37
  %74 = load %struct.usb_serial_port*, %struct.usb_serial_port** %4, align 8
  %75 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %74, i32 0, i32 0
  %76 = load i8*, i8** %7, align 8
  %77 = getelementptr inbounds i8, i8* %76, i64 0
  %78 = load i8, i8* %77, align 1
  %79 = call i32 @dev_dbg(i32* %75, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i8 zeroext %78)
  store i32 0, i32* %6, align 4
  %80 = load i8*, i8** %7, align 8
  %81 = getelementptr inbounds i8, i8* %80, i64 0
  %82 = load i8, i8* %81, align 1
  %83 = zext i8 %82 to i32
  %84 = load i8, i8* @SUSBCR_GSL_DSR, align 1
  %85 = zext i8 %84 to i32
  %86 = and i32 %83, %85
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %90

88:                                               ; preds = %73
  %89 = load i32, i32* @TIOCM_DSR, align 4
  store i32 %89, i32* %6, align 4
  br label %90

90:                                               ; preds = %88, %73
  br label %91

91:                                               ; preds = %90, %72
  %92 = load i8*, i8** %7, align 8
  %93 = call i32 @kfree(i8* %92)
  %94 = load i32, i32* %6, align 4
  store i32 %94, i32* %2, align 4
  br label %95

95:                                               ; preds = %91, %34, %25
  %96 = load i32, i32* %2, align 4
  ret i32 %96
}

declare dso_local %struct.kobil_private* @usb_get_serial_port_data(%struct.usb_serial_port*) #1

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local i32 @usb_control_msg(i32, i32, i32, i32, i32, i32, i8*, i32, i32) #1

declare dso_local i32 @usb_rcvctrlpipe(i32, i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i8 zeroext) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
