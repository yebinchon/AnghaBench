; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/core/extr_file.c_usb_deregister_dev.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/core/extr_file.c_usb_deregister_dev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.usb_interface = type { i32, i32*, i32 }
%struct.usb_class_driver = type { i32 }

@.str = private unnamed_addr constant [19 x i8] c"removing %d minor\0A\00", align 1
@usb_class = common dso_local global %struct.TYPE_2__* null, align 8
@USB_MAJOR = common dso_local global i32 0, align 4
@minor_rwsem = common dso_local global i32 0, align 4
@usb_minors = common dso_local global i32** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @usb_deregister_dev(%struct.usb_interface* %0, %struct.usb_class_driver* %1) #0 {
  %3 = alloca %struct.usb_interface*, align 8
  %4 = alloca %struct.usb_class_driver*, align 8
  store %struct.usb_interface* %0, %struct.usb_interface** %3, align 8
  store %struct.usb_class_driver* %1, %struct.usb_class_driver** %4, align 8
  %5 = load %struct.usb_interface*, %struct.usb_interface** %3, align 8
  %6 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = icmp eq i32 %7, -1
  br i1 %8, label %9, label %10

9:                                                ; preds = %2
  br label %39

10:                                               ; preds = %2
  %11 = load %struct.usb_interface*, %struct.usb_interface** %3, align 8
  %12 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %11, i32 0, i32 2
  %13 = load %struct.usb_interface*, %struct.usb_interface** %3, align 8
  %14 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @dev_dbg(i32* %12, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %15)
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** @usb_class, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @USB_MAJOR, align 4
  %21 = load %struct.usb_interface*, %struct.usb_interface** %3, align 8
  %22 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @MKDEV(i32 %20, i32 %23)
  %25 = call i32 @device_destroy(i32 %19, i32 %24)
  %26 = call i32 @down_write(i32* @minor_rwsem)
  %27 = load i32**, i32*** @usb_minors, align 8
  %28 = load %struct.usb_interface*, %struct.usb_interface** %3, align 8
  %29 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32*, i32** %27, i64 %31
  store i32* null, i32** %32, align 8
  %33 = call i32 @up_write(i32* @minor_rwsem)
  %34 = load %struct.usb_interface*, %struct.usb_interface** %3, align 8
  %35 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %34, i32 0, i32 1
  store i32* null, i32** %35, align 8
  %36 = load %struct.usb_interface*, %struct.usb_interface** %3, align 8
  %37 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %36, i32 0, i32 0
  store i32 -1, i32* %37, align 8
  %38 = call i32 (...) @destroy_usb_class()
  br label %39

39:                                               ; preds = %10, %9
  ret void
}

declare dso_local i32 @dev_dbg(i32*, i8*, i32) #1

declare dso_local i32 @device_destroy(i32, i32) #1

declare dso_local i32 @MKDEV(i32, i32) #1

declare dso_local i32 @down_write(i32*) #1

declare dso_local i32 @up_write(i32*) #1

declare dso_local i32 @destroy_usb_class(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
