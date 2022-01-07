; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/serial/extr_ch341.c_ch341_reset_resume.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/serial/extr_ch341.c_ch341_reset_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_serial = type { i32, %struct.usb_serial_port** }
%struct.usb_serial_port = type { i32, %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.ch341_private = type { i32 }

@GFP_NOIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"failed to submit interrupt urb: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"failed to read modem status: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_serial*)* @ch341_reset_resume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ch341_reset_resume(%struct.usb_serial* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.usb_serial*, align 8
  %4 = alloca %struct.usb_serial_port*, align 8
  %5 = alloca %struct.ch341_private*, align 8
  %6 = alloca i32, align 4
  store %struct.usb_serial* %0, %struct.usb_serial** %3, align 8
  %7 = load %struct.usb_serial*, %struct.usb_serial** %3, align 8
  %8 = getelementptr inbounds %struct.usb_serial, %struct.usb_serial* %7, i32 0, i32 1
  %9 = load %struct.usb_serial_port**, %struct.usb_serial_port*** %8, align 8
  %10 = getelementptr inbounds %struct.usb_serial_port*, %struct.usb_serial_port** %9, i64 0
  %11 = load %struct.usb_serial_port*, %struct.usb_serial_port** %10, align 8
  store %struct.usb_serial_port* %11, %struct.usb_serial_port** %4, align 8
  %12 = load %struct.usb_serial_port*, %struct.usb_serial_port** %4, align 8
  %13 = call %struct.ch341_private* @usb_get_serial_port_data(%struct.usb_serial_port* %12)
  store %struct.ch341_private* %13, %struct.ch341_private** %5, align 8
  %14 = load %struct.usb_serial*, %struct.usb_serial** %3, align 8
  %15 = getelementptr inbounds %struct.usb_serial, %struct.usb_serial* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load %struct.ch341_private*, %struct.ch341_private** %5, align 8
  %18 = call i32 @ch341_configure(i32 %16, %struct.ch341_private* %17)
  %19 = load %struct.usb_serial_port*, %struct.usb_serial_port** %4, align 8
  %20 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %19, i32 0, i32 3
  %21 = call i64 @tty_port_initialized(i32* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %53

23:                                               ; preds = %1
  %24 = load %struct.usb_serial_port*, %struct.usb_serial_port** %4, align 8
  %25 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @GFP_NOIO, align 4
  %28 = call i32 @usb_submit_urb(i32 %26, i32 %27)
  store i32 %28, i32* %6, align 4
  %29 = load i32, i32* %6, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %23
  %32 = load %struct.usb_serial_port*, %struct.usb_serial_port** %4, align 8
  %33 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %32, i32 0, i32 0
  %34 = load i32, i32* %6, align 4
  %35 = call i32 @dev_err(i32* %33, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %34)
  %36 = load i32, i32* %6, align 4
  store i32 %36, i32* %2, align 4
  br label %56

37:                                               ; preds = %23
  %38 = load %struct.usb_serial_port*, %struct.usb_serial_port** %4, align 8
  %39 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %38, i32 0, i32 1
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.ch341_private*, %struct.ch341_private** %5, align 8
  %44 = call i32 @ch341_get_status(i32 %42, %struct.ch341_private* %43)
  store i32 %44, i32* %6, align 4
  %45 = load i32, i32* %6, align 4
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %37
  %48 = load %struct.usb_serial_port*, %struct.usb_serial_port** %4, align 8
  %49 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %48, i32 0, i32 0
  %50 = load i32, i32* %6, align 4
  %51 = call i32 @dev_err(i32* %49, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %50)
  br label %52

52:                                               ; preds = %47, %37
  br label %53

53:                                               ; preds = %52, %1
  %54 = load %struct.usb_serial*, %struct.usb_serial** %3, align 8
  %55 = call i32 @usb_serial_generic_resume(%struct.usb_serial* %54)
  store i32 %55, i32* %2, align 4
  br label %56

56:                                               ; preds = %53, %31
  %57 = load i32, i32* %2, align 4
  ret i32 %57
}

declare dso_local %struct.ch341_private* @usb_get_serial_port_data(%struct.usb_serial_port*) #1

declare dso_local i32 @ch341_configure(i32, %struct.ch341_private*) #1

declare dso_local i64 @tty_port_initialized(i32*) #1

declare dso_local i32 @usb_submit_urb(i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @ch341_get_status(i32, %struct.ch341_private*) #1

declare dso_local i32 @usb_serial_generic_resume(%struct.usb_serial*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
