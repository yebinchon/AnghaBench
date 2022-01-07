; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/serial/extr_whiteheat.c_whiteheat_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/serial/extr_whiteheat.c_whiteheat_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { i32 }
%struct.usb_serial_port = type { %struct.TYPE_7__*, %struct.TYPE_6__*, %struct.TYPE_5__* }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }

@WHITEHEAT_PURGE_RX = common dso_local global i32 0, align 4
@WHITEHEAT_PURGE_TX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tty_struct*, %struct.usb_serial_port*)* @whiteheat_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @whiteheat_open(%struct.tty_struct* %0, %struct.usb_serial_port* %1) #0 {
  %3 = alloca %struct.tty_struct*, align 8
  %4 = alloca %struct.usb_serial_port*, align 8
  %5 = alloca i32, align 4
  store %struct.tty_struct* %0, %struct.tty_struct** %3, align 8
  store %struct.usb_serial_port* %1, %struct.usb_serial_port** %4, align 8
  %6 = load %struct.usb_serial_port*, %struct.usb_serial_port** %4, align 8
  %7 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %6, i32 0, i32 0
  %8 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %9 = call i32 @start_command_port(%struct.TYPE_7__* %8)
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  br label %80

13:                                               ; preds = %2
  %14 = load %struct.usb_serial_port*, %struct.usb_serial_port** %4, align 8
  %15 = call i32 @firm_open(%struct.usb_serial_port* %14)
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* %5, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %13
  %19 = load %struct.usb_serial_port*, %struct.usb_serial_port** %4, align 8
  %20 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %19, i32 0, i32 0
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %20, align 8
  %22 = call i32 @stop_command_port(%struct.TYPE_7__* %21)
  br label %80

23:                                               ; preds = %13
  %24 = load %struct.usb_serial_port*, %struct.usb_serial_port** %4, align 8
  %25 = load i32, i32* @WHITEHEAT_PURGE_RX, align 4
  %26 = load i32, i32* @WHITEHEAT_PURGE_TX, align 4
  %27 = or i32 %25, %26
  %28 = call i32 @firm_purge(%struct.usb_serial_port* %24, i32 %27)
  store i32 %28, i32* %5, align 4
  %29 = load i32, i32* %5, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %38

31:                                               ; preds = %23
  %32 = load %struct.usb_serial_port*, %struct.usb_serial_port** %4, align 8
  %33 = call i32 @firm_close(%struct.usb_serial_port* %32)
  %34 = load %struct.usb_serial_port*, %struct.usb_serial_port** %4, align 8
  %35 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %34, i32 0, i32 0
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %35, align 8
  %37 = call i32 @stop_command_port(%struct.TYPE_7__* %36)
  br label %80

38:                                               ; preds = %23
  %39 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %40 = icmp ne %struct.tty_struct* %39, null
  br i1 %40, label %41, label %44

41:                                               ; preds = %38
  %42 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %43 = call i32 @firm_setup_port(%struct.tty_struct* %42)
  br label %44

44:                                               ; preds = %41, %38
  %45 = load %struct.usb_serial_port*, %struct.usb_serial_port** %4, align 8
  %46 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %45, i32 0, i32 0
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.usb_serial_port*, %struct.usb_serial_port** %4, align 8
  %51 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %50, i32 0, i32 2
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @usb_clear_halt(i32 %49, i32 %54)
  %56 = load %struct.usb_serial_port*, %struct.usb_serial_port** %4, align 8
  %57 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %56, i32 0, i32 0
  %58 = load %struct.TYPE_7__*, %struct.TYPE_7__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.usb_serial_port*, %struct.usb_serial_port** %4, align 8
  %62 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %61, i32 0, i32 1
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @usb_clear_halt(i32 %60, i32 %65)
  %67 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %68 = load %struct.usb_serial_port*, %struct.usb_serial_port** %4, align 8
  %69 = call i32 @usb_serial_generic_open(%struct.tty_struct* %67, %struct.usb_serial_port* %68)
  store i32 %69, i32* %5, align 4
  %70 = load i32, i32* %5, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %79

72:                                               ; preds = %44
  %73 = load %struct.usb_serial_port*, %struct.usb_serial_port** %4, align 8
  %74 = call i32 @firm_close(%struct.usb_serial_port* %73)
  %75 = load %struct.usb_serial_port*, %struct.usb_serial_port** %4, align 8
  %76 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %75, i32 0, i32 0
  %77 = load %struct.TYPE_7__*, %struct.TYPE_7__** %76, align 8
  %78 = call i32 @stop_command_port(%struct.TYPE_7__* %77)
  br label %80

79:                                               ; preds = %44
  br label %80

80:                                               ; preds = %79, %72, %31, %18, %12
  %81 = load i32, i32* %5, align 4
  ret i32 %81
}

declare dso_local i32 @start_command_port(%struct.TYPE_7__*) #1

declare dso_local i32 @firm_open(%struct.usb_serial_port*) #1

declare dso_local i32 @stop_command_port(%struct.TYPE_7__*) #1

declare dso_local i32 @firm_purge(%struct.usb_serial_port*, i32) #1

declare dso_local i32 @firm_close(%struct.usb_serial_port*) #1

declare dso_local i32 @firm_setup_port(%struct.tty_struct*) #1

declare dso_local i32 @usb_clear_halt(i32, i32) #1

declare dso_local i32 @usb_serial_generic_open(%struct.tty_struct*, %struct.usb_serial_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
