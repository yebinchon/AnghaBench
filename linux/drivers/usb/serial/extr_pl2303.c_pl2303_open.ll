; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/serial/extr_pl2303.c_pl2303_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/serial/extr_pl2303.c_pl2303_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { i32 }
%struct.usb_serial_port = type { i32, i32, %struct.TYPE_4__*, %struct.TYPE_3__*, %struct.usb_serial* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.usb_serial = type { i32 }
%struct.pl2303_serial_private = type { i32 }

@PL2303_QUIRK_LEGACY = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"failed to submit interrupt urb: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tty_struct*, %struct.usb_serial_port*)* @pl2303_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pl2303_open(%struct.tty_struct* %0, %struct.usb_serial_port* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tty_struct*, align 8
  %5 = alloca %struct.usb_serial_port*, align 8
  %6 = alloca %struct.usb_serial*, align 8
  %7 = alloca %struct.pl2303_serial_private*, align 8
  %8 = alloca i32, align 4
  store %struct.tty_struct* %0, %struct.tty_struct** %4, align 8
  store %struct.usb_serial_port* %1, %struct.usb_serial_port** %5, align 8
  %9 = load %struct.usb_serial_port*, %struct.usb_serial_port** %5, align 8
  %10 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %9, i32 0, i32 4
  %11 = load %struct.usb_serial*, %struct.usb_serial** %10, align 8
  store %struct.usb_serial* %11, %struct.usb_serial** %6, align 8
  %12 = load %struct.usb_serial*, %struct.usb_serial** %6, align 8
  %13 = call %struct.pl2303_serial_private* @usb_get_serial_data(%struct.usb_serial* %12)
  store %struct.pl2303_serial_private* %13, %struct.pl2303_serial_private** %7, align 8
  %14 = load %struct.pl2303_serial_private*, %struct.pl2303_serial_private** %7, align 8
  %15 = getelementptr inbounds %struct.pl2303_serial_private, %struct.pl2303_serial_private* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @PL2303_QUIRK_LEGACY, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %39

20:                                               ; preds = %2
  %21 = load %struct.usb_serial*, %struct.usb_serial** %6, align 8
  %22 = getelementptr inbounds %struct.usb_serial, %struct.usb_serial* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.usb_serial_port*, %struct.usb_serial_port** %5, align 8
  %25 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %24, i32 0, i32 3
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @usb_clear_halt(i32 %23, i32 %28)
  %30 = load %struct.usb_serial*, %struct.usb_serial** %6, align 8
  %31 = getelementptr inbounds %struct.usb_serial, %struct.usb_serial* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.usb_serial_port*, %struct.usb_serial_port** %5, align 8
  %34 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %33, i32 0, i32 2
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @usb_clear_halt(i32 %32, i32 %37)
  br label %44

39:                                               ; preds = %2
  %40 = load %struct.usb_serial*, %struct.usb_serial** %6, align 8
  %41 = call i32 @pl2303_vendor_write(%struct.usb_serial* %40, i32 8, i32 0)
  %42 = load %struct.usb_serial*, %struct.usb_serial** %6, align 8
  %43 = call i32 @pl2303_vendor_write(%struct.usb_serial* %42, i32 9, i32 0)
  br label %44

44:                                               ; preds = %39, %20
  %45 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %46 = icmp ne %struct.tty_struct* %45, null
  br i1 %46, label %47, label %51

47:                                               ; preds = %44
  %48 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %49 = load %struct.usb_serial_port*, %struct.usb_serial_port** %5, align 8
  %50 = call i32 @pl2303_set_termios(%struct.tty_struct* %48, %struct.usb_serial_port* %49, i32* null)
  br label %51

51:                                               ; preds = %47, %44
  %52 = load %struct.usb_serial_port*, %struct.usb_serial_port** %5, align 8
  %53 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* @GFP_KERNEL, align 4
  %56 = call i32 @usb_submit_urb(i32 %54, i32 %55)
  store i32 %56, i32* %8, align 4
  %57 = load i32, i32* %8, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %65

59:                                               ; preds = %51
  %60 = load %struct.usb_serial_port*, %struct.usb_serial_port** %5, align 8
  %61 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %60, i32 0, i32 1
  %62 = load i32, i32* %8, align 4
  %63 = call i32 @dev_err(i32* %61, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %62)
  %64 = load i32, i32* %8, align 4
  store i32 %64, i32* %3, align 4
  br label %78

65:                                               ; preds = %51
  %66 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %67 = load %struct.usb_serial_port*, %struct.usb_serial_port** %5, align 8
  %68 = call i32 @usb_serial_generic_open(%struct.tty_struct* %66, %struct.usb_serial_port* %67)
  store i32 %68, i32* %8, align 4
  %69 = load i32, i32* %8, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %77

71:                                               ; preds = %65
  %72 = load %struct.usb_serial_port*, %struct.usb_serial_port** %5, align 8
  %73 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = call i32 @usb_kill_urb(i32 %74)
  %76 = load i32, i32* %8, align 4
  store i32 %76, i32* %3, align 4
  br label %78

77:                                               ; preds = %65
  store i32 0, i32* %3, align 4
  br label %78

78:                                               ; preds = %77, %71, %59
  %79 = load i32, i32* %3, align 4
  ret i32 %79
}

declare dso_local %struct.pl2303_serial_private* @usb_get_serial_data(%struct.usb_serial*) #1

declare dso_local i32 @usb_clear_halt(i32, i32) #1

declare dso_local i32 @pl2303_vendor_write(%struct.usb_serial*, i32, i32) #1

declare dso_local i32 @pl2303_set_termios(%struct.tty_struct*, %struct.usb_serial_port*, i32*) #1

declare dso_local i32 @usb_submit_urb(i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @usb_serial_generic_open(%struct.tty_struct*, %struct.usb_serial_port*) #1

declare dso_local i32 @usb_kill_urb(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
