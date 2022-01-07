; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/serial/extr_mct_u232.c_mct_u232_set_modem_ctrl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/serial/extr_mct_u232.c_mct_u232_set_modem_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_serial_port = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@MCT_U232_MAX_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@MCT_U232_MCR_NONE = common dso_local global i8 0, align 1
@TIOCM_DTR = common dso_local global i32 0, align 4
@MCT_U232_MCR_DTR = common dso_local global i8 0, align 1
@TIOCM_RTS = common dso_local global i32 0, align 4
@MCT_U232_MCR_RTS = common dso_local global i8 0, align 1
@MCT_U232_SET_MODEM_CTRL_REQUEST = common dso_local global i32 0, align 4
@MCT_U232_SET_REQUEST_TYPE = common dso_local global i32 0, align 4
@MCT_U232_SET_MODEM_CTRL_SIZE = common dso_local global i32 0, align 4
@WDR_TIMEOUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"set_modem_ctrl: state=0x%x ==> mcr=0x%x\0A\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"Set MODEM CTRL 0x%x failed (error = %d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_serial_port*, i32)* @mct_u232_set_modem_ctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mct_u232_set_modem_ctrl(%struct.usb_serial_port* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usb_serial_port*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8, align 1
  %8 = alloca i8*, align 8
  store %struct.usb_serial_port* %0, %struct.usb_serial_port** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load i32, i32* @MCT_U232_MAX_SIZE, align 4
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call i8* @kmalloc(i32 %9, i32 %10)
  store i8* %11, i8** %8, align 8
  %12 = load i8*, i8** %8, align 8
  %13 = icmp eq i8* %12, null
  br i1 %13, label %14, label %17

14:                                               ; preds = %2
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %3, align 4
  br label %80

17:                                               ; preds = %2
  %18 = load i8, i8* @MCT_U232_MCR_NONE, align 1
  store i8 %18, i8* %7, align 1
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* @TIOCM_DTR, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %30

23:                                               ; preds = %17
  %24 = load i8, i8* @MCT_U232_MCR_DTR, align 1
  %25 = zext i8 %24 to i32
  %26 = load i8, i8* %7, align 1
  %27 = zext i8 %26 to i32
  %28 = or i32 %27, %25
  %29 = trunc i32 %28 to i8
  store i8 %29, i8* %7, align 1
  br label %30

30:                                               ; preds = %23, %17
  %31 = load i32, i32* %5, align 4
  %32 = load i32, i32* @TIOCM_RTS, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %42

35:                                               ; preds = %30
  %36 = load i8, i8* @MCT_U232_MCR_RTS, align 1
  %37 = zext i8 %36 to i32
  %38 = load i8, i8* %7, align 1
  %39 = zext i8 %38 to i32
  %40 = or i32 %39, %37
  %41 = trunc i32 %40 to i8
  store i8 %41, i8* %7, align 1
  br label %42

42:                                               ; preds = %35, %30
  %43 = load i8, i8* %7, align 1
  %44 = load i8*, i8** %8, align 8
  %45 = getelementptr inbounds i8, i8* %44, i64 0
  store i8 %43, i8* %45, align 1
  %46 = load %struct.usb_serial_port*, %struct.usb_serial_port** %4, align 8
  %47 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %46, i32 0, i32 1
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.usb_serial_port*, %struct.usb_serial_port** %4, align 8
  %52 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %51, i32 0, i32 1
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @usb_sndctrlpipe(i32 %55, i32 0)
  %57 = load i32, i32* @MCT_U232_SET_MODEM_CTRL_REQUEST, align 4
  %58 = load i32, i32* @MCT_U232_SET_REQUEST_TYPE, align 4
  %59 = load i8*, i8** %8, align 8
  %60 = load i32, i32* @MCT_U232_SET_MODEM_CTRL_SIZE, align 4
  %61 = load i32, i32* @WDR_TIMEOUT, align 4
  %62 = call i32 @usb_control_msg(i32 %50, i32 %56, i32 %57, i32 %58, i32 0, i32 0, i8* %59, i32 %60, i32 %61)
  store i32 %62, i32* %6, align 4
  %63 = load i8*, i8** %8, align 8
  %64 = call i32 @kfree(i8* %63)
  %65 = load %struct.usb_serial_port*, %struct.usb_serial_port** %4, align 8
  %66 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %65, i32 0, i32 0
  %67 = load i32, i32* %5, align 4
  %68 = load i8, i8* %7, align 1
  %69 = call i32 @dev_dbg(i32* %66, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %67, i8 zeroext %68)
  %70 = load i32, i32* %6, align 4
  %71 = icmp slt i32 %70, 0
  br i1 %71, label %72, label %79

72:                                               ; preds = %42
  %73 = load %struct.usb_serial_port*, %struct.usb_serial_port** %4, align 8
  %74 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %73, i32 0, i32 0
  %75 = load i8, i8* %7, align 1
  %76 = load i32, i32* %6, align 4
  %77 = call i32 @dev_err(i32* %74, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i8 zeroext %75, i32 %76)
  %78 = load i32, i32* %6, align 4
  store i32 %78, i32* %3, align 4
  br label %80

79:                                               ; preds = %42
  store i32 0, i32* %3, align 4
  br label %80

80:                                               ; preds = %79, %72, %14
  %81 = load i32, i32* %3, align 4
  ret i32 %81
}

declare dso_local i8* @kmalloc(i32, i32) #1

declare dso_local i32 @usb_control_msg(i32, i32, i32, i32, i32, i32, i8*, i32, i32) #1

declare dso_local i32 @usb_sndctrlpipe(i32, i32) #1

declare dso_local i32 @kfree(i8*) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32, i8 zeroext) #1

declare dso_local i32 @dev_err(i32*, i8*, i8 zeroext, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
