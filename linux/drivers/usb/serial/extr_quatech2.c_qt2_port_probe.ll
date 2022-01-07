; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/serial/extr_quatech2.c_qt2_port_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/serial/extr_quatech2.c_qt2_port_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_serial_port = type { %struct.usb_serial* }
%struct.usb_serial = type { i32, %struct.TYPE_2__** }
%struct.TYPE_2__ = type { i32 }
%struct.qt2_port_private = type { %struct.qt2_port_private*, i32, %struct.usb_serial_port*, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@QT2_WRITE_BUFFER_SIZE = common dso_local global i32 0, align 4
@qt2_write_bulk_callback = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_serial_port*)* @qt2_port_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qt2_port_probe(%struct.usb_serial_port* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.usb_serial_port*, align 8
  %4 = alloca %struct.usb_serial*, align 8
  %5 = alloca %struct.qt2_port_private*, align 8
  %6 = alloca i32, align 4
  store %struct.usb_serial_port* %0, %struct.usb_serial_port** %3, align 8
  %7 = load %struct.usb_serial_port*, %struct.usb_serial_port** %3, align 8
  %8 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %7, i32 0, i32 0
  %9 = load %struct.usb_serial*, %struct.usb_serial** %8, align 8
  store %struct.usb_serial* %9, %struct.usb_serial** %4, align 8
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.qt2_port_private* @kzalloc(i32 32, i32 %10)
  store %struct.qt2_port_private* %11, %struct.qt2_port_private** %5, align 8
  %12 = load %struct.qt2_port_private*, %struct.qt2_port_private** %5, align 8
  %13 = icmp ne %struct.qt2_port_private* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %1
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %2, align 4
  br label %86

17:                                               ; preds = %1
  %18 = load %struct.qt2_port_private*, %struct.qt2_port_private** %5, align 8
  %19 = getelementptr inbounds %struct.qt2_port_private, %struct.qt2_port_private* %18, i32 0, i32 4
  %20 = call i32 @spin_lock_init(i32* %19)
  %21 = load %struct.qt2_port_private*, %struct.qt2_port_private** %5, align 8
  %22 = getelementptr inbounds %struct.qt2_port_private, %struct.qt2_port_private* %21, i32 0, i32 3
  %23 = call i32 @spin_lock_init(i32* %22)
  %24 = load %struct.usb_serial_port*, %struct.usb_serial_port** %3, align 8
  %25 = load %struct.qt2_port_private*, %struct.qt2_port_private** %5, align 8
  %26 = getelementptr inbounds %struct.qt2_port_private, %struct.qt2_port_private* %25, i32 0, i32 2
  store %struct.usb_serial_port* %24, %struct.usb_serial_port** %26, align 8
  %27 = load i32, i32* @QT2_WRITE_BUFFER_SIZE, align 4
  %28 = load i32, i32* @GFP_KERNEL, align 4
  %29 = call %struct.qt2_port_private* @kmalloc(i32 %27, i32 %28)
  %30 = load %struct.qt2_port_private*, %struct.qt2_port_private** %5, align 8
  %31 = getelementptr inbounds %struct.qt2_port_private, %struct.qt2_port_private* %30, i32 0, i32 0
  store %struct.qt2_port_private* %29, %struct.qt2_port_private** %31, align 8
  %32 = load %struct.qt2_port_private*, %struct.qt2_port_private** %5, align 8
  %33 = getelementptr inbounds %struct.qt2_port_private, %struct.qt2_port_private* %32, i32 0, i32 0
  %34 = load %struct.qt2_port_private*, %struct.qt2_port_private** %33, align 8
  %35 = icmp ne %struct.qt2_port_private* %34, null
  br i1 %35, label %37, label %36

36:                                               ; preds = %17
  br label %81

37:                                               ; preds = %17
  %38 = load i32, i32* @GFP_KERNEL, align 4
  %39 = call i32 @usb_alloc_urb(i32 0, i32 %38)
  %40 = load %struct.qt2_port_private*, %struct.qt2_port_private** %5, align 8
  %41 = getelementptr inbounds %struct.qt2_port_private, %struct.qt2_port_private* %40, i32 0, i32 1
  store i32 %39, i32* %41, align 8
  %42 = load %struct.qt2_port_private*, %struct.qt2_port_private** %5, align 8
  %43 = getelementptr inbounds %struct.qt2_port_private, %struct.qt2_port_private* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %47, label %46

46:                                               ; preds = %37
  br label %76

47:                                               ; preds = %37
  %48 = load %struct.usb_serial*, %struct.usb_serial** %4, align 8
  %49 = getelementptr inbounds %struct.usb_serial, %struct.usb_serial* %48, i32 0, i32 1
  %50 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %50, i64 0
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  store i32 %54, i32* %6, align 4
  %55 = load %struct.qt2_port_private*, %struct.qt2_port_private** %5, align 8
  %56 = getelementptr inbounds %struct.qt2_port_private, %struct.qt2_port_private* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.usb_serial*, %struct.usb_serial** %4, align 8
  %59 = getelementptr inbounds %struct.usb_serial, %struct.usb_serial* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load %struct.usb_serial*, %struct.usb_serial** %4, align 8
  %62 = getelementptr inbounds %struct.usb_serial, %struct.usb_serial* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* %6, align 4
  %65 = call i32 @usb_sndbulkpipe(i32 %63, i32 %64)
  %66 = load %struct.qt2_port_private*, %struct.qt2_port_private** %5, align 8
  %67 = getelementptr inbounds %struct.qt2_port_private, %struct.qt2_port_private* %66, i32 0, i32 0
  %68 = load %struct.qt2_port_private*, %struct.qt2_port_private** %67, align 8
  %69 = load i32, i32* @QT2_WRITE_BUFFER_SIZE, align 4
  %70 = load i32, i32* @qt2_write_bulk_callback, align 4
  %71 = load %struct.usb_serial_port*, %struct.usb_serial_port** %3, align 8
  %72 = call i32 @usb_fill_bulk_urb(i32 %57, i32 %60, i32 %65, %struct.qt2_port_private* %68, i32 %69, i32 %70, %struct.usb_serial_port* %71)
  %73 = load %struct.usb_serial_port*, %struct.usb_serial_port** %3, align 8
  %74 = load %struct.qt2_port_private*, %struct.qt2_port_private** %5, align 8
  %75 = call i32 @usb_set_serial_port_data(%struct.usb_serial_port* %73, %struct.qt2_port_private* %74)
  store i32 0, i32* %2, align 4
  br label %86

76:                                               ; preds = %46
  %77 = load %struct.qt2_port_private*, %struct.qt2_port_private** %5, align 8
  %78 = getelementptr inbounds %struct.qt2_port_private, %struct.qt2_port_private* %77, i32 0, i32 0
  %79 = load %struct.qt2_port_private*, %struct.qt2_port_private** %78, align 8
  %80 = call i32 @kfree(%struct.qt2_port_private* %79)
  br label %81

81:                                               ; preds = %76, %36
  %82 = load %struct.qt2_port_private*, %struct.qt2_port_private** %5, align 8
  %83 = call i32 @kfree(%struct.qt2_port_private* %82)
  %84 = load i32, i32* @ENOMEM, align 4
  %85 = sub nsw i32 0, %84
  store i32 %85, i32* %2, align 4
  br label %86

86:                                               ; preds = %81, %47, %14
  %87 = load i32, i32* %2, align 4
  ret i32 %87
}

declare dso_local %struct.qt2_port_private* @kzalloc(i32, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local %struct.qt2_port_private* @kmalloc(i32, i32) #1

declare dso_local i32 @usb_alloc_urb(i32, i32) #1

declare dso_local i32 @usb_fill_bulk_urb(i32, i32, i32, %struct.qt2_port_private*, i32, i32, %struct.usb_serial_port*) #1

declare dso_local i32 @usb_sndbulkpipe(i32, i32) #1

declare dso_local i32 @usb_set_serial_port_data(%struct.usb_serial_port*, %struct.qt2_port_private*) #1

declare dso_local i32 @kfree(%struct.qt2_port_private*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
