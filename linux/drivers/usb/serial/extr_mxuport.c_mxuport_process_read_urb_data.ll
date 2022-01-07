; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/serial/extr_mxuport.c_mxuport_process_read_urb_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/serial/extr_mxuport.c_mxuport_process_read_urb_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_serial_port = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32 }

@TTY_NORMAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_serial_port*, i8*, i32)* @mxuport_process_read_urb_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mxuport_process_read_urb_data(%struct.usb_serial_port* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.usb_serial_port*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.usb_serial_port* %0, %struct.usb_serial_port** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.usb_serial_port*, %struct.usb_serial_port** %4, align 8
  %9 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %18

13:                                               ; preds = %3
  %14 = load %struct.usb_serial_port*, %struct.usb_serial_port** %4, align 8
  %15 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %24, label %18

18:                                               ; preds = %13, %3
  %19 = load %struct.usb_serial_port*, %struct.usb_serial_port** %4, align 8
  %20 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %19, i32 0, i32 0
  %21 = load i8*, i8** %5, align 8
  %22 = load i32, i32* %6, align 4
  %23 = call i32 @tty_insert_flip_string(%struct.TYPE_4__* %20, i8* %21, i32 %22)
  br label %49

24:                                               ; preds = %13
  store i32 0, i32* %7, align 4
  br label %25

25:                                               ; preds = %43, %24
  %26 = load i32, i32* %7, align 4
  %27 = load i32, i32* %6, align 4
  %28 = icmp slt i32 %26, %27
  br i1 %28, label %29, label %48

29:                                               ; preds = %25
  %30 = load %struct.usb_serial_port*, %struct.usb_serial_port** %4, align 8
  %31 = load i8*, i8** %5, align 8
  %32 = load i8, i8* %31, align 1
  %33 = call i32 @usb_serial_handle_sysrq_char(%struct.usb_serial_port* %30, i8 signext %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %42, label %35

35:                                               ; preds = %29
  %36 = load %struct.usb_serial_port*, %struct.usb_serial_port** %4, align 8
  %37 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %36, i32 0, i32 0
  %38 = load i8*, i8** %5, align 8
  %39 = load i8, i8* %38, align 1
  %40 = load i32, i32* @TTY_NORMAL, align 4
  %41 = call i32 @tty_insert_flip_char(%struct.TYPE_4__* %37, i8 signext %39, i32 %40)
  br label %42

42:                                               ; preds = %35, %29
  br label %43

43:                                               ; preds = %42
  %44 = load i32, i32* %7, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %7, align 4
  %46 = load i8*, i8** %5, align 8
  %47 = getelementptr inbounds i8, i8* %46, i32 1
  store i8* %47, i8** %5, align 8
  br label %25

48:                                               ; preds = %25
  br label %49

49:                                               ; preds = %48, %18
  %50 = load %struct.usb_serial_port*, %struct.usb_serial_port** %4, align 8
  %51 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %50, i32 0, i32 0
  %52 = call i32 @tty_flip_buffer_push(%struct.TYPE_4__* %51)
  ret void
}

declare dso_local i32 @tty_insert_flip_string(%struct.TYPE_4__*, i8*, i32) #1

declare dso_local i32 @usb_serial_handle_sysrq_char(%struct.usb_serial_port*, i8 signext) #1

declare dso_local i32 @tty_insert_flip_char(%struct.TYPE_4__*, i8 signext, i32) #1

declare dso_local i32 @tty_flip_buffer_push(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
