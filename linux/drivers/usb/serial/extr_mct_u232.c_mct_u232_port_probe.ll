; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/serial/extr_mct_u232.c_mct_u232_port_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/serial/extr_mct_u232.c_mct_u232_port_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_serial_port = type { i32, %struct.usb_serial* }
%struct.usb_serial = type { %struct.TYPE_3__** }
%struct.TYPE_3__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.usb_serial_port* }
%struct.mct_u232_private = type { i32, %struct.TYPE_4__* }

@.str = private unnamed_addr constant [27 x i8] c"expected endpoint missing\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_serial_port*)* @mct_u232_port_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mct_u232_port_probe(%struct.usb_serial_port* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.usb_serial_port*, align 8
  %4 = alloca %struct.usb_serial*, align 8
  %5 = alloca %struct.mct_u232_private*, align 8
  store %struct.usb_serial_port* %0, %struct.usb_serial_port** %3, align 8
  %6 = load %struct.usb_serial_port*, %struct.usb_serial_port** %3, align 8
  %7 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %6, i32 0, i32 1
  %8 = load %struct.usb_serial*, %struct.usb_serial** %7, align 8
  store %struct.usb_serial* %8, %struct.usb_serial** %4, align 8
  %9 = load %struct.usb_serial*, %struct.usb_serial** %4, align 8
  %10 = getelementptr inbounds %struct.usb_serial, %struct.usb_serial* %9, i32 0, i32 0
  %11 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %11, i64 1
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %14 = icmp ne %struct.TYPE_3__* %13, null
  br i1 %14, label %15, label %24

15:                                               ; preds = %1
  %16 = load %struct.usb_serial*, %struct.usb_serial** %4, align 8
  %17 = getelementptr inbounds %struct.usb_serial, %struct.usb_serial* %16, i32 0, i32 0
  %18 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %18, i64 1
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = icmp ne %struct.TYPE_4__* %22, null
  br i1 %23, label %30, label %24

24:                                               ; preds = %15, %1
  %25 = load %struct.usb_serial_port*, %struct.usb_serial_port** %3, align 8
  %26 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %25, i32 0, i32 0
  %27 = call i32 @dev_err(i32* %26, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %28 = load i32, i32* @ENODEV, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %2, align 4
  br label %59

30:                                               ; preds = %15
  %31 = load i32, i32* @GFP_KERNEL, align 4
  %32 = call %struct.mct_u232_private* @kzalloc(i32 16, i32 %31)
  store %struct.mct_u232_private* %32, %struct.mct_u232_private** %5, align 8
  %33 = load %struct.mct_u232_private*, %struct.mct_u232_private** %5, align 8
  %34 = icmp ne %struct.mct_u232_private* %33, null
  br i1 %34, label %38, label %35

35:                                               ; preds = %30
  %36 = load i32, i32* @ENOMEM, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %2, align 4
  br label %59

38:                                               ; preds = %30
  %39 = load %struct.usb_serial*, %struct.usb_serial** %4, align 8
  %40 = getelementptr inbounds %struct.usb_serial, %struct.usb_serial* %39, i32 0, i32 0
  %41 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %41, i64 1
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %44, align 8
  %46 = load %struct.mct_u232_private*, %struct.mct_u232_private** %5, align 8
  %47 = getelementptr inbounds %struct.mct_u232_private, %struct.mct_u232_private* %46, i32 0, i32 1
  store %struct.TYPE_4__* %45, %struct.TYPE_4__** %47, align 8
  %48 = load %struct.usb_serial_port*, %struct.usb_serial_port** %3, align 8
  %49 = load %struct.mct_u232_private*, %struct.mct_u232_private** %5, align 8
  %50 = getelementptr inbounds %struct.mct_u232_private, %struct.mct_u232_private* %49, i32 0, i32 1
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  store %struct.usb_serial_port* %48, %struct.usb_serial_port** %52, align 8
  %53 = load %struct.mct_u232_private*, %struct.mct_u232_private** %5, align 8
  %54 = getelementptr inbounds %struct.mct_u232_private, %struct.mct_u232_private* %53, i32 0, i32 0
  %55 = call i32 @spin_lock_init(i32* %54)
  %56 = load %struct.usb_serial_port*, %struct.usb_serial_port** %3, align 8
  %57 = load %struct.mct_u232_private*, %struct.mct_u232_private** %5, align 8
  %58 = call i32 @usb_set_serial_port_data(%struct.usb_serial_port* %56, %struct.mct_u232_private* %57)
  store i32 0, i32* %2, align 4
  br label %59

59:                                               ; preds = %38, %35, %24
  %60 = load i32, i32* %2, align 4
  ret i32 %60
}

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local %struct.mct_u232_private* @kzalloc(i32, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @usb_set_serial_port_data(%struct.usb_serial_port*, %struct.mct_u232_private*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
