; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/serial/extr_f81232.c_f81232_resume.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/serial/extr_f81232.c_f81232_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_serial = type { %struct.usb_serial_port** }
%struct.usb_serial_port = type { i32, i32, i32 }

@GFP_NOIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"submit interrupt urb failed: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_serial*)* @f81232_resume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @f81232_resume(%struct.usb_serial* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.usb_serial*, align 8
  %4 = alloca %struct.usb_serial_port*, align 8
  %5 = alloca i32, align 4
  store %struct.usb_serial* %0, %struct.usb_serial** %3, align 8
  %6 = load %struct.usb_serial*, %struct.usb_serial** %3, align 8
  %7 = getelementptr inbounds %struct.usb_serial, %struct.usb_serial* %6, i32 0, i32 0
  %8 = load %struct.usb_serial_port**, %struct.usb_serial_port*** %7, align 8
  %9 = getelementptr inbounds %struct.usb_serial_port*, %struct.usb_serial_port** %8, i64 0
  %10 = load %struct.usb_serial_port*, %struct.usb_serial_port** %9, align 8
  store %struct.usb_serial_port* %10, %struct.usb_serial_port** %4, align 8
  %11 = load %struct.usb_serial_port*, %struct.usb_serial_port** %4, align 8
  %12 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %11, i32 0, i32 2
  %13 = call i64 @tty_port_initialized(i32* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %30

15:                                               ; preds = %1
  %16 = load %struct.usb_serial_port*, %struct.usb_serial_port** %4, align 8
  %17 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @GFP_NOIO, align 4
  %20 = call i32 @usb_submit_urb(i32 %18, i32 %19)
  store i32 %20, i32* %5, align 4
  %21 = load i32, i32* %5, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %29

23:                                               ; preds = %15
  %24 = load %struct.usb_serial_port*, %struct.usb_serial_port** %4, align 8
  %25 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %24, i32 0, i32 0
  %26 = load i32, i32* %5, align 4
  %27 = call i32 @dev_err(i32* %25, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %26)
  %28 = load i32, i32* %5, align 4
  store i32 %28, i32* %2, align 4
  br label %33

29:                                               ; preds = %15
  br label %30

30:                                               ; preds = %29, %1
  %31 = load %struct.usb_serial*, %struct.usb_serial** %3, align 8
  %32 = call i32 @usb_serial_generic_resume(%struct.usb_serial* %31)
  store i32 %32, i32* %2, align 4
  br label %33

33:                                               ; preds = %30, %23
  %34 = load i32, i32* %2, align 4
  ret i32 %34
}

declare dso_local i64 @tty_port_initialized(i32*) #1

declare dso_local i32 @usb_submit_urb(i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @usb_serial_generic_resume(%struct.usb_serial*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
