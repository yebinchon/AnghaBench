; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/serial/extr_cp210x.c_cp210x_write_reg_block.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/serial/extr_cp210x.c_cp210x_write_reg_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_serial_port = type { i32, %struct.usb_serial* }
%struct.usb_serial = type { i32 }
%struct.cp210x_port_private = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@REQTYPE_HOST_TO_INTERFACE = common dso_local global i32 0, align 4
@USB_CTRL_SET_TIMEOUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"failed set req 0x%x size %d status: %d\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_serial_port*, i32, i8*, i32)* @cp210x_write_reg_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cp210x_write_reg_block(%struct.usb_serial_port* %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.usb_serial_port*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.usb_serial*, align 8
  %11 = alloca %struct.cp210x_port_private*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  store %struct.usb_serial_port* %0, %struct.usb_serial_port** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %14 = load %struct.usb_serial_port*, %struct.usb_serial_port** %6, align 8
  %15 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %14, i32 0, i32 1
  %16 = load %struct.usb_serial*, %struct.usb_serial** %15, align 8
  store %struct.usb_serial* %16, %struct.usb_serial** %10, align 8
  %17 = load %struct.usb_serial_port*, %struct.usb_serial_port** %6, align 8
  %18 = call %struct.cp210x_port_private* @usb_get_serial_port_data(%struct.usb_serial_port* %17)
  store %struct.cp210x_port_private* %18, %struct.cp210x_port_private** %11, align 8
  %19 = load i8*, i8** %8, align 8
  %20 = load i32, i32* %9, align 4
  %21 = load i32, i32* @GFP_KERNEL, align 4
  %22 = call i8* @kmemdup(i8* %19, i32 %20, i32 %21)
  store i8* %22, i8** %12, align 8
  %23 = load i8*, i8** %12, align 8
  %24 = icmp ne i8* %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %4
  %26 = load i32, i32* @ENOMEM, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %5, align 4
  br label %66

28:                                               ; preds = %4
  %29 = load %struct.usb_serial*, %struct.usb_serial** %10, align 8
  %30 = getelementptr inbounds %struct.usb_serial, %struct.usb_serial* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.usb_serial*, %struct.usb_serial** %10, align 8
  %33 = getelementptr inbounds %struct.usb_serial, %struct.usb_serial* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @usb_sndctrlpipe(i32 %34, i32 0)
  %36 = load i32, i32* %7, align 4
  %37 = load i32, i32* @REQTYPE_HOST_TO_INTERFACE, align 4
  %38 = load %struct.cp210x_port_private*, %struct.cp210x_port_private** %11, align 8
  %39 = getelementptr inbounds %struct.cp210x_port_private, %struct.cp210x_port_private* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i8*, i8** %12, align 8
  %42 = load i32, i32* %9, align 4
  %43 = load i32, i32* @USB_CTRL_SET_TIMEOUT, align 4
  %44 = call i32 @usb_control_msg(i32 %31, i32 %35, i32 %36, i32 %37, i32 0, i32 %40, i8* %41, i32 %42, i32 %43)
  store i32 %44, i32* %13, align 4
  %45 = load i8*, i8** %12, align 8
  %46 = call i32 @kfree(i8* %45)
  %47 = load i32, i32* %13, align 4
  %48 = load i32, i32* %9, align 4
  %49 = icmp eq i32 %47, %48
  br i1 %49, label %50, label %51

50:                                               ; preds = %28
  store i32 0, i32* %13, align 4
  br label %64

51:                                               ; preds = %28
  %52 = load %struct.usb_serial_port*, %struct.usb_serial_port** %6, align 8
  %53 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %52, i32 0, i32 0
  %54 = load i32, i32* %7, align 4
  %55 = load i32, i32* %9, align 4
  %56 = load i32, i32* %13, align 4
  %57 = call i32 @dev_err(i32* %53, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %54, i32 %55, i32 %56)
  %58 = load i32, i32* %13, align 4
  %59 = icmp sge i32 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %51
  %61 = load i32, i32* @EIO, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %13, align 4
  br label %63

63:                                               ; preds = %60, %51
  br label %64

64:                                               ; preds = %63, %50
  %65 = load i32, i32* %13, align 4
  store i32 %65, i32* %5, align 4
  br label %66

66:                                               ; preds = %64, %25
  %67 = load i32, i32* %5, align 4
  ret i32 %67
}

declare dso_local %struct.cp210x_port_private* @usb_get_serial_port_data(%struct.usb_serial_port*) #1

declare dso_local i8* @kmemdup(i8*, i32, i32) #1

declare dso_local i32 @usb_control_msg(i32, i32, i32, i32, i32, i32, i8*, i32, i32) #1

declare dso_local i32 @usb_sndctrlpipe(i32, i32) #1

declare dso_local i32 @kfree(i8*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
