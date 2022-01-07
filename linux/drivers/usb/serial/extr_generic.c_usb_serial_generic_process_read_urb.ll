; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/serial/extr_generic.c_usb_serial_generic_process_read_urb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/serial/extr_generic.c_usb_serial_generic_process_read_urb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.urb = type { i32, i64, %struct.usb_serial_port* }
%struct.usb_serial_port = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32 }

@TTY_NORMAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @usb_serial_generic_process_read_urb(%struct.urb* %0) #0 {
  %2 = alloca %struct.urb*, align 8
  %3 = alloca %struct.usb_serial_port*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  store %struct.urb* %0, %struct.urb** %2, align 8
  %6 = load %struct.urb*, %struct.urb** %2, align 8
  %7 = getelementptr inbounds %struct.urb, %struct.urb* %6, i32 0, i32 2
  %8 = load %struct.usb_serial_port*, %struct.usb_serial_port** %7, align 8
  store %struct.usb_serial_port* %8, %struct.usb_serial_port** %3, align 8
  %9 = load %struct.urb*, %struct.urb** %2, align 8
  %10 = getelementptr inbounds %struct.urb, %struct.urb* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = inttoptr i64 %11 to i8*
  store i8* %12, i8** %4, align 8
  %13 = load %struct.urb*, %struct.urb** %2, align 8
  %14 = getelementptr inbounds %struct.urb, %struct.urb* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %1
  br label %68

18:                                               ; preds = %1
  %19 = load %struct.usb_serial_port*, %struct.usb_serial_port** %3, align 8
  %20 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %18
  %25 = load %struct.usb_serial_port*, %struct.usb_serial_port** %3, align 8
  %26 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %37, label %29

29:                                               ; preds = %24, %18
  %30 = load %struct.usb_serial_port*, %struct.usb_serial_port** %3, align 8
  %31 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %30, i32 0, i32 0
  %32 = load i8*, i8** %4, align 8
  %33 = load %struct.urb*, %struct.urb** %2, align 8
  %34 = getelementptr inbounds %struct.urb, %struct.urb* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @tty_insert_flip_string(%struct.TYPE_4__* %31, i8* %32, i32 %35)
  br label %64

37:                                               ; preds = %24
  store i32 0, i32* %5, align 4
  br label %38

38:                                               ; preds = %58, %37
  %39 = load i32, i32* %5, align 4
  %40 = load %struct.urb*, %struct.urb** %2, align 8
  %41 = getelementptr inbounds %struct.urb, %struct.urb* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = icmp slt i32 %39, %42
  br i1 %43, label %44, label %63

44:                                               ; preds = %38
  %45 = load %struct.usb_serial_port*, %struct.usb_serial_port** %3, align 8
  %46 = load i8*, i8** %4, align 8
  %47 = load i8, i8* %46, align 1
  %48 = call i32 @usb_serial_handle_sysrq_char(%struct.usb_serial_port* %45, i8 signext %47)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %57, label %50

50:                                               ; preds = %44
  %51 = load %struct.usb_serial_port*, %struct.usb_serial_port** %3, align 8
  %52 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %51, i32 0, i32 0
  %53 = load i8*, i8** %4, align 8
  %54 = load i8, i8* %53, align 1
  %55 = load i32, i32* @TTY_NORMAL, align 4
  %56 = call i32 @tty_insert_flip_char(%struct.TYPE_4__* %52, i8 signext %54, i32 %55)
  br label %57

57:                                               ; preds = %50, %44
  br label %58

58:                                               ; preds = %57
  %59 = load i32, i32* %5, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %5, align 4
  %61 = load i8*, i8** %4, align 8
  %62 = getelementptr inbounds i8, i8* %61, i32 1
  store i8* %62, i8** %4, align 8
  br label %38

63:                                               ; preds = %38
  br label %64

64:                                               ; preds = %63, %29
  %65 = load %struct.usb_serial_port*, %struct.usb_serial_port** %3, align 8
  %66 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %65, i32 0, i32 0
  %67 = call i32 @tty_flip_buffer_push(%struct.TYPE_4__* %66)
  br label %68

68:                                               ; preds = %64, %17
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
