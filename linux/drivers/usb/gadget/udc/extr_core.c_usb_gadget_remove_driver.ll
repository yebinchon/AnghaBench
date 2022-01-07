; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_core.c_usb_gadget_remove_driver.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_core.c_usb_gadget_remove_driver.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_udc = type { %struct.TYPE_8__*, %struct.TYPE_9__, %struct.TYPE_7__* }
%struct.TYPE_8__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32* }
%struct.TYPE_9__ = type { i32*, i32 }
%struct.TYPE_7__ = type { i32 (%struct.TYPE_8__*)*, i32 }

@.str = private unnamed_addr constant [31 x i8] c"unregistering UDC driver [%s]\0A\00", align 1
@KOBJ_CHANGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_udc*)* @usb_gadget_remove_driver to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @usb_gadget_remove_driver(%struct.usb_udc* %0) #0 {
  %2 = alloca %struct.usb_udc*, align 8
  store %struct.usb_udc* %0, %struct.usb_udc** %2, align 8
  %3 = load %struct.usb_udc*, %struct.usb_udc** %2, align 8
  %4 = getelementptr inbounds %struct.usb_udc, %struct.usb_udc* %3, i32 0, i32 1
  %5 = load %struct.usb_udc*, %struct.usb_udc** %2, align 8
  %6 = getelementptr inbounds %struct.usb_udc, %struct.usb_udc* %5, i32 0, i32 2
  %7 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 8
  %10 = call i32 @dev_dbg(%struct.TYPE_9__* %4, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %9)
  %11 = load %struct.usb_udc*, %struct.usb_udc** %2, align 8
  %12 = getelementptr inbounds %struct.usb_udc, %struct.usb_udc* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 1
  %14 = load i32, i32* @KOBJ_CHANGE, align 4
  %15 = call i32 @kobject_uevent(i32* %13, i32 %14)
  %16 = load %struct.usb_udc*, %struct.usb_udc** %2, align 8
  %17 = getelementptr inbounds %struct.usb_udc, %struct.usb_udc* %16, i32 0, i32 0
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %19 = call i32 @usb_gadget_disconnect(%struct.TYPE_8__* %18)
  %20 = load %struct.usb_udc*, %struct.usb_udc** %2, align 8
  %21 = getelementptr inbounds %struct.usb_udc, %struct.usb_udc* %20, i32 0, i32 2
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 0
  %24 = load i32 (%struct.TYPE_8__*)*, i32 (%struct.TYPE_8__*)** %23, align 8
  %25 = load %struct.usb_udc*, %struct.usb_udc** %2, align 8
  %26 = getelementptr inbounds %struct.usb_udc, %struct.usb_udc* %25, i32 0, i32 0
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %26, align 8
  %28 = call i32 %24(%struct.TYPE_8__* %27)
  %29 = load %struct.usb_udc*, %struct.usb_udc** %2, align 8
  %30 = call i32 @usb_gadget_udc_stop(%struct.usb_udc* %29)
  %31 = load %struct.usb_udc*, %struct.usb_udc** %2, align 8
  %32 = getelementptr inbounds %struct.usb_udc, %struct.usb_udc* %31, i32 0, i32 2
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %32, align 8
  %33 = load %struct.usb_udc*, %struct.usb_udc** %2, align 8
  %34 = getelementptr inbounds %struct.usb_udc, %struct.usb_udc* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 0
  store i32* null, i32** %35, align 8
  %36 = load %struct.usb_udc*, %struct.usb_udc** %2, align 8
  %37 = getelementptr inbounds %struct.usb_udc, %struct.usb_udc* %36, i32 0, i32 0
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  store i32* null, i32** %40, align 8
  ret void
}

declare dso_local i32 @dev_dbg(%struct.TYPE_9__*, i8*, i32) #1

declare dso_local i32 @kobject_uevent(i32*, i32) #1

declare dso_local i32 @usb_gadget_disconnect(%struct.TYPE_8__*) #1

declare dso_local i32 @usb_gadget_udc_stop(%struct.usb_udc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
