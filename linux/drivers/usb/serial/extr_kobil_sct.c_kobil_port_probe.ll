; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/serial/extr_kobil_sct.c_kobil_port_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/serial/extr_kobil_sct.c_kobil_port_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_serial_port = type { %struct.usb_serial* }
%struct.usb_serial = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.kobil_private = type { i32, i64, i64 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"KOBIL B1 PRO / KAAN PRO detected\0A\00", align 1
@.str.1 = private unnamed_addr constant [57 x i8] c"KOBIL KAAN Standard Plus / SecOVID Reader Plus detected\0A\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"KOBIL USBTWIN detected\0A\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"KOBIL KAAN SIM detected\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_serial_port*)* @kobil_port_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kobil_port_probe(%struct.usb_serial_port* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.usb_serial_port*, align 8
  %4 = alloca %struct.usb_serial*, align 8
  %5 = alloca %struct.kobil_private*, align 8
  store %struct.usb_serial_port* %0, %struct.usb_serial_port** %3, align 8
  %6 = load %struct.usb_serial_port*, %struct.usb_serial_port** %3, align 8
  %7 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %6, i32 0, i32 0
  %8 = load %struct.usb_serial*, %struct.usb_serial** %7, align 8
  store %struct.usb_serial* %8, %struct.usb_serial** %4, align 8
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.kobil_private* @kmalloc(i32 24, i32 %9)
  store %struct.kobil_private* %10, %struct.kobil_private** %5, align 8
  %11 = load %struct.kobil_private*, %struct.kobil_private** %5, align 8
  %12 = icmp ne %struct.kobil_private* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %1
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %61

16:                                               ; preds = %1
  %17 = load %struct.kobil_private*, %struct.kobil_private** %5, align 8
  %18 = getelementptr inbounds %struct.kobil_private, %struct.kobil_private* %17, i32 0, i32 2
  store i64 0, i64* %18, align 8
  %19 = load %struct.kobil_private*, %struct.kobil_private** %5, align 8
  %20 = getelementptr inbounds %struct.kobil_private, %struct.kobil_private* %19, i32 0, i32 1
  store i64 0, i64* %20, align 8
  %21 = load %struct.usb_serial*, %struct.usb_serial** %4, align 8
  %22 = getelementptr inbounds %struct.usb_serial, %struct.usb_serial* %21, i32 0, i32 0
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @le16_to_cpu(i32 %26)
  %28 = load %struct.kobil_private*, %struct.kobil_private** %5, align 8
  %29 = getelementptr inbounds %struct.kobil_private, %struct.kobil_private* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 8
  %30 = load %struct.kobil_private*, %struct.kobil_private** %5, align 8
  %31 = getelementptr inbounds %struct.kobil_private, %struct.kobil_private* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  switch i32 %32, label %57 [
    i32 131, label %33
    i32 130, label %39
    i32 128, label %45
    i32 129, label %51
  ]

33:                                               ; preds = %16
  %34 = load %struct.usb_serial*, %struct.usb_serial** %4, align 8
  %35 = getelementptr inbounds %struct.usb_serial, %struct.usb_serial* %34, i32 0, i32 0
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = call i32 @dev_dbg(i32* %37, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  br label %57

39:                                               ; preds = %16
  %40 = load %struct.usb_serial*, %struct.usb_serial** %4, align 8
  %41 = getelementptr inbounds %struct.usb_serial, %struct.usb_serial* %40, i32 0, i32 0
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = call i32 @dev_dbg(i32* %43, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.1, i64 0, i64 0))
  br label %57

45:                                               ; preds = %16
  %46 = load %struct.usb_serial*, %struct.usb_serial** %4, align 8
  %47 = getelementptr inbounds %struct.usb_serial, %struct.usb_serial* %46, i32 0, i32 0
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = call i32 @dev_dbg(i32* %49, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  br label %57

51:                                               ; preds = %16
  %52 = load %struct.usb_serial*, %struct.usb_serial** %4, align 8
  %53 = getelementptr inbounds %struct.usb_serial, %struct.usb_serial* %52, i32 0, i32 0
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = call i32 @dev_dbg(i32* %55, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  br label %57

57:                                               ; preds = %16, %51, %45, %39, %33
  %58 = load %struct.usb_serial_port*, %struct.usb_serial_port** %3, align 8
  %59 = load %struct.kobil_private*, %struct.kobil_private** %5, align 8
  %60 = call i32 @usb_set_serial_port_data(%struct.usb_serial_port* %58, %struct.kobil_private* %59)
  store i32 0, i32* %2, align 4
  br label %61

61:                                               ; preds = %57, %13
  %62 = load i32, i32* %2, align 4
  ret i32 %62
}

declare dso_local %struct.kobil_private* @kmalloc(i32, i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*) #1

declare dso_local i32 @usb_set_serial_port_data(%struct.usb_serial_port*, %struct.kobil_private*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
