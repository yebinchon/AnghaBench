; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/serial/extr_mct_u232.c_mct_u232_get_modem_stat.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/serial/extr_mct_u232.c_mct_u232_get_modem_stat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_serial_port = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@MCT_U232_MAX_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@MCT_U232_GET_MODEM_STAT_REQUEST = common dso_local global i32 0, align 4
@MCT_U232_GET_REQUEST_TYPE = common dso_local global i32 0, align 4
@MCT_U232_GET_MODEM_STAT_SIZE = common dso_local global i32 0, align 4
@WDR_TIMEOUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"Get MODEM STATus failed (error = %d)\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"get_modem_stat: 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_serial_port*, i8*)* @mct_u232_get_modem_stat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mct_u232_get_modem_stat(%struct.usb_serial_port* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usb_serial_port*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  store %struct.usb_serial_port* %0, %struct.usb_serial_port** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load i32, i32* @MCT_U232_MAX_SIZE, align 4
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call i8* @kmalloc(i32 %8, i32 %9)
  store i8* %10, i8** %7, align 8
  %11 = load i8*, i8** %7, align 8
  %12 = icmp eq i8* %11, null
  br i1 %12, label %13, label %17

13:                                               ; preds = %2
  %14 = load i8*, i8** %5, align 8
  store i8 0, i8* %14, align 1
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %3, align 4
  br label %64

17:                                               ; preds = %2
  %18 = load %struct.usb_serial_port*, %struct.usb_serial_port** %4, align 8
  %19 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %18, i32 0, i32 1
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.usb_serial_port*, %struct.usb_serial_port** %4, align 8
  %24 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %23, i32 0, i32 1
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @usb_rcvctrlpipe(i32 %27, i32 0)
  %29 = load i32, i32* @MCT_U232_GET_MODEM_STAT_REQUEST, align 4
  %30 = load i32, i32* @MCT_U232_GET_REQUEST_TYPE, align 4
  %31 = load i8*, i8** %7, align 8
  %32 = load i32, i32* @MCT_U232_GET_MODEM_STAT_SIZE, align 4
  %33 = load i32, i32* @WDR_TIMEOUT, align 4
  %34 = call i32 @usb_control_msg(i32 %22, i32 %28, i32 %29, i32 %30, i32 0, i32 0, i8* %31, i32 %32, i32 %33)
  store i32 %34, i32* %6, align 4
  %35 = load i32, i32* %6, align 4
  %36 = load i32, i32* @MCT_U232_GET_MODEM_STAT_SIZE, align 4
  %37 = icmp slt i32 %35, %36
  br i1 %37, label %38, label %50

38:                                               ; preds = %17
  %39 = load %struct.usb_serial_port*, %struct.usb_serial_port** %4, align 8
  %40 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %39, i32 0, i32 0
  %41 = load i32, i32* %6, align 4
  %42 = call i32 @dev_err(i32* %40, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %41)
  %43 = load i32, i32* %6, align 4
  %44 = icmp sge i32 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %38
  %46 = load i32, i32* @EIO, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %6, align 4
  br label %48

48:                                               ; preds = %45, %38
  %49 = load i8*, i8** %5, align 8
  store i8 0, i8* %49, align 1
  br label %55

50:                                               ; preds = %17
  %51 = load i8*, i8** %7, align 8
  %52 = getelementptr inbounds i8, i8* %51, i64 0
  %53 = load i8, i8* %52, align 1
  %54 = load i8*, i8** %5, align 8
  store i8 %53, i8* %54, align 1
  br label %55

55:                                               ; preds = %50, %48
  %56 = load %struct.usb_serial_port*, %struct.usb_serial_port** %4, align 8
  %57 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %56, i32 0, i32 0
  %58 = load i8*, i8** %5, align 8
  %59 = load i8, i8* %58, align 1
  %60 = call i32 @dev_dbg(i32* %57, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i8 zeroext %59)
  %61 = load i8*, i8** %7, align 8
  %62 = call i32 @kfree(i8* %61)
  %63 = load i32, i32* %6, align 4
  store i32 %63, i32* %3, align 4
  br label %64

64:                                               ; preds = %55, %13
  %65 = load i32, i32* %3, align 4
  ret i32 %65
}

declare dso_local i8* @kmalloc(i32, i32) #1

declare dso_local i32 @usb_control_msg(i32, i32, i32, i32, i32, i32, i8*, i32, i32) #1

declare dso_local i32 @usb_rcvctrlpipe(i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i8 zeroext) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
