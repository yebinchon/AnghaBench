; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/serial/extr_spcp8x5.c_spcp8x5_set_work_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/serial/extr_spcp8x5.c_spcp8x5_set_work_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_serial_port = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.usb_device* }
%struct.usb_device = type { i32 }
%struct.spcp8x5_private = type { i32 }

@SPCP825_QUIRK_NO_WORK_MODE = common dso_local global i32 0, align 4
@SET_WORKING_MODE_TYPE = common dso_local global i32 0, align 4
@SET_WORKING_MODE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"value = %#x , index = %#x\0A\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"failed to set work mode: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_serial_port*, i32, i32)* @spcp8x5_set_work_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @spcp8x5_set_work_mode(%struct.usb_serial_port* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.usb_serial_port*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.spcp8x5_private*, align 8
  %8 = alloca %struct.usb_device*, align 8
  %9 = alloca i32, align 4
  store %struct.usb_serial_port* %0, %struct.usb_serial_port** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load %struct.usb_serial_port*, %struct.usb_serial_port** %4, align 8
  %11 = call %struct.spcp8x5_private* @usb_get_serial_port_data(%struct.usb_serial_port* %10)
  store %struct.spcp8x5_private* %11, %struct.spcp8x5_private** %7, align 8
  %12 = load %struct.usb_serial_port*, %struct.usb_serial_port** %4, align 8
  %13 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %12, i32 0, i32 1
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load %struct.usb_device*, %struct.usb_device** %15, align 8
  store %struct.usb_device* %16, %struct.usb_device** %8, align 8
  %17 = load %struct.spcp8x5_private*, %struct.spcp8x5_private** %7, align 8
  %18 = getelementptr inbounds %struct.spcp8x5_private, %struct.spcp8x5_private* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @SPCP825_QUIRK_NO_WORK_MODE, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %3
  br label %45

24:                                               ; preds = %3
  %25 = load %struct.usb_device*, %struct.usb_device** %8, align 8
  %26 = load %struct.usb_device*, %struct.usb_device** %8, align 8
  %27 = call i32 @usb_sndctrlpipe(%struct.usb_device* %26, i32 0)
  %28 = load i32, i32* @SET_WORKING_MODE_TYPE, align 4
  %29 = load i32, i32* @SET_WORKING_MODE, align 4
  %30 = load i32, i32* %5, align 4
  %31 = load i32, i32* %6, align 4
  %32 = call i32 @usb_control_msg(%struct.usb_device* %25, i32 %27, i32 %28, i32 %29, i32 %30, i32 %31, i32* null, i32 0, i32 100)
  store i32 %32, i32* %9, align 4
  %33 = load %struct.usb_serial_port*, %struct.usb_serial_port** %4, align 8
  %34 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %33, i32 0, i32 0
  %35 = load i32, i32* %5, align 4
  %36 = load i32, i32* %6, align 4
  %37 = call i32 @dev_dbg(i32* %34, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %35, i32 %36)
  %38 = load i32, i32* %9, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %24
  %41 = load %struct.usb_serial_port*, %struct.usb_serial_port** %4, align 8
  %42 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %41, i32 0, i32 0
  %43 = load i32, i32* %9, align 4
  %44 = call i32 @dev_err(i32* %42, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %43)
  br label %45

45:                                               ; preds = %23, %40, %24
  ret void
}

declare dso_local %struct.spcp8x5_private* @usb_get_serial_port_data(%struct.usb_serial_port*) #1

declare dso_local i32 @usb_control_msg(%struct.usb_device*, i32, i32, i32, i32, i32, i32*, i32, i32) #1

declare dso_local i32 @usb_sndctrlpipe(%struct.usb_device*, i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
