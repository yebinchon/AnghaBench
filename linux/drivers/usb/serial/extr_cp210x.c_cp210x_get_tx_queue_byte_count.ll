; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/serial/extr_cp210x.c_cp210x_get_tx_queue_byte_count.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/serial/extr_cp210x.c_cp210x_get_tx_queue_byte_count.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_serial_port = type { i32, %struct.usb_serial* }
%struct.usb_serial = type { i32 }
%struct.cp210x_port_private = type { i32 }
%struct.cp210x_comm_status = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@CP210X_GET_COMM_STATUS = common dso_local global i32 0, align 4
@REQTYPE_INTERFACE_TO_HOST = common dso_local global i32 0, align 4
@USB_CTRL_GET_TIMEOUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"failed to get comm status: %d\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_serial_port*, i32*)* @cp210x_get_tx_queue_byte_count to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cp210x_get_tx_queue_byte_count(%struct.usb_serial_port* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usb_serial_port*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.usb_serial*, align 8
  %7 = alloca %struct.cp210x_port_private*, align 8
  %8 = alloca %struct.cp210x_comm_status*, align 8
  %9 = alloca i32, align 4
  store %struct.usb_serial_port* %0, %struct.usb_serial_port** %4, align 8
  store i32* %1, i32** %5, align 8
  %10 = load %struct.usb_serial_port*, %struct.usb_serial_port** %4, align 8
  %11 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %10, i32 0, i32 1
  %12 = load %struct.usb_serial*, %struct.usb_serial** %11, align 8
  store %struct.usb_serial* %12, %struct.usb_serial** %6, align 8
  %13 = load %struct.usb_serial_port*, %struct.usb_serial_port** %4, align 8
  %14 = call %struct.cp210x_port_private* @usb_get_serial_port_data(%struct.usb_serial_port* %13)
  store %struct.cp210x_port_private* %14, %struct.cp210x_port_private** %7, align 8
  %15 = load i32, i32* @GFP_KERNEL, align 4
  %16 = call %struct.cp210x_comm_status* @kmalloc(i32 4, i32 %15)
  store %struct.cp210x_comm_status* %16, %struct.cp210x_comm_status** %8, align 8
  %17 = load %struct.cp210x_comm_status*, %struct.cp210x_comm_status** %8, align 8
  %18 = icmp ne %struct.cp210x_comm_status* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %2
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %3, align 4
  br label %62

22:                                               ; preds = %2
  %23 = load %struct.usb_serial*, %struct.usb_serial** %6, align 8
  %24 = getelementptr inbounds %struct.usb_serial, %struct.usb_serial* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.usb_serial*, %struct.usb_serial** %6, align 8
  %27 = getelementptr inbounds %struct.usb_serial, %struct.usb_serial* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @usb_rcvctrlpipe(i32 %28, i32 0)
  %30 = load i32, i32* @CP210X_GET_COMM_STATUS, align 4
  %31 = load i32, i32* @REQTYPE_INTERFACE_TO_HOST, align 4
  %32 = load %struct.cp210x_port_private*, %struct.cp210x_port_private** %7, align 8
  %33 = getelementptr inbounds %struct.cp210x_port_private, %struct.cp210x_port_private* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.cp210x_comm_status*, %struct.cp210x_comm_status** %8, align 8
  %36 = load i32, i32* @USB_CTRL_GET_TIMEOUT, align 4
  %37 = call i32 @usb_control_msg(i32 %25, i32 %29, i32 %30, i32 %31, i32 0, i32 %34, %struct.cp210x_comm_status* %35, i32 4, i32 %36)
  store i32 %37, i32* %9, align 4
  %38 = load i32, i32* %9, align 4
  %39 = sext i32 %38 to i64
  %40 = icmp eq i64 %39, 4
  br i1 %40, label %41, label %47

41:                                               ; preds = %22
  %42 = load %struct.cp210x_comm_status*, %struct.cp210x_comm_status** %8, align 8
  %43 = getelementptr inbounds %struct.cp210x_comm_status, %struct.cp210x_comm_status* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @le32_to_cpu(i32 %44)
  %46 = load i32*, i32** %5, align 8
  store i32 %45, i32* %46, align 4
  store i32 0, i32* %9, align 4
  br label %58

47:                                               ; preds = %22
  %48 = load %struct.usb_serial_port*, %struct.usb_serial_port** %4, align 8
  %49 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %48, i32 0, i32 0
  %50 = load i32, i32* %9, align 4
  %51 = call i32 @dev_err(i32* %49, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %50)
  %52 = load i32, i32* %9, align 4
  %53 = icmp sge i32 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %47
  %55 = load i32, i32* @EIO, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %9, align 4
  br label %57

57:                                               ; preds = %54, %47
  br label %58

58:                                               ; preds = %57, %41
  %59 = load %struct.cp210x_comm_status*, %struct.cp210x_comm_status** %8, align 8
  %60 = call i32 @kfree(%struct.cp210x_comm_status* %59)
  %61 = load i32, i32* %9, align 4
  store i32 %61, i32* %3, align 4
  br label %62

62:                                               ; preds = %58, %19
  %63 = load i32, i32* %3, align 4
  ret i32 %63
}

declare dso_local %struct.cp210x_port_private* @usb_get_serial_port_data(%struct.usb_serial_port*) #1

declare dso_local %struct.cp210x_comm_status* @kmalloc(i32, i32) #1

declare dso_local i32 @usb_control_msg(i32, i32, i32, i32, i32, i32, %struct.cp210x_comm_status*, i32, i32) #1

declare dso_local i32 @usb_rcvctrlpipe(i32, i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @kfree(%struct.cp210x_comm_status*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
