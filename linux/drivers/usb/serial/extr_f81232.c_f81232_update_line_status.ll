; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/serial/extr_f81232.c_f81232_update_line_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/serial/extr_f81232.c_f81232_update_line_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_serial_port = type { i32 }
%struct.f81232_private = type { i32 }

@.str = private unnamed_addr constant [23 x i8] c"IIR: MSR Change: %02x\0A\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"IIR: LSR Change: %02x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_serial_port*, i8*, i64)* @f81232_update_line_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @f81232_update_line_status(%struct.usb_serial_port* %0, i8* %1, i64 %2) #0 {
  %4 = alloca %struct.usb_serial_port*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.f81232_private*, align 8
  store %struct.usb_serial_port* %0, %struct.usb_serial_port** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %8 = load %struct.usb_serial_port*, %struct.usb_serial_port** %4, align 8
  %9 = call %struct.f81232_private* @usb_get_serial_port_data(%struct.usb_serial_port* %8)
  store %struct.f81232_private* %9, %struct.f81232_private** %7, align 8
  %10 = load i64, i64* %6, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %3
  br label %38

13:                                               ; preds = %3
  %14 = load i8*, i8** %5, align 8
  %15 = getelementptr inbounds i8, i8* %14, i64 0
  %16 = load i8, i8* %15, align 1
  %17 = zext i8 %16 to i32
  %18 = and i32 %17, 7
  switch i32 %18, label %38 [
    i32 0, label %19
    i32 2, label %29
    i32 4, label %30
    i32 6, label %31
  ]

19:                                               ; preds = %13
  %20 = load %struct.usb_serial_port*, %struct.usb_serial_port** %4, align 8
  %21 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %20, i32 0, i32 0
  %22 = load i8*, i8** %5, align 8
  %23 = getelementptr inbounds i8, i8* %22, i64 0
  %24 = load i8, i8* %23, align 1
  %25 = call i32 @dev_dbg(i32* %21, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8 zeroext %24)
  %26 = load %struct.f81232_private*, %struct.f81232_private** %7, align 8
  %27 = getelementptr inbounds %struct.f81232_private, %struct.f81232_private* %26, i32 0, i32 0
  %28 = call i32 @schedule_work(i32* %27)
  br label %38

29:                                               ; preds = %13
  br label %38

30:                                               ; preds = %13
  br label %38

31:                                               ; preds = %13
  %32 = load %struct.usb_serial_port*, %struct.usb_serial_port** %4, align 8
  %33 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %32, i32 0, i32 0
  %34 = load i8*, i8** %5, align 8
  %35 = getelementptr inbounds i8, i8* %34, i64 0
  %36 = load i8, i8* %35, align 1
  %37 = call i32 @dev_dbg(i32* %33, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8 zeroext %36)
  br label %38

38:                                               ; preds = %12, %13, %31, %30, %29, %19
  ret void
}

declare dso_local %struct.f81232_private* @usb_get_serial_port_data(%struct.usb_serial_port*) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i8 zeroext) #1

declare dso_local i32 @schedule_work(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
