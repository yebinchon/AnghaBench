; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/misc/extr_yurex.c_yurex_disconnect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/misc/extr_yurex.c_yurex_disconnect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_interface = type { i32, i32 }
%struct.usb_yurex = type { i32, i32, i32, i32, i32, i32, i32 }

@yurex_class = common dso_local global i32 0, align 4
@SIGIO = common dso_local global i32 0, align 4
@POLL_IN = common dso_local global i32 0, align 4
@yurex_delete = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"USB YUREX #%d now disconnected\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_interface*)* @yurex_disconnect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @yurex_disconnect(%struct.usb_interface* %0) #0 {
  %2 = alloca %struct.usb_interface*, align 8
  %3 = alloca %struct.usb_yurex*, align 8
  %4 = alloca i32, align 4
  store %struct.usb_interface* %0, %struct.usb_interface** %2, align 8
  %5 = load %struct.usb_interface*, %struct.usb_interface** %2, align 8
  %6 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  store i32 %7, i32* %4, align 4
  %8 = load %struct.usb_interface*, %struct.usb_interface** %2, align 8
  %9 = call %struct.usb_yurex* @usb_get_intfdata(%struct.usb_interface* %8)
  store %struct.usb_yurex* %9, %struct.usb_yurex** %3, align 8
  %10 = load %struct.usb_interface*, %struct.usb_interface** %2, align 8
  %11 = call i32 @usb_set_intfdata(%struct.usb_interface* %10, i32* null)
  %12 = load %struct.usb_interface*, %struct.usb_interface** %2, align 8
  %13 = call i32 @usb_deregister_dev(%struct.usb_interface* %12, i32* @yurex_class)
  %14 = load %struct.usb_yurex*, %struct.usb_yurex** %3, align 8
  %15 = getelementptr inbounds %struct.usb_yurex, %struct.usb_yurex* %14, i32 0, i32 6
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @usb_poison_urb(i32 %16)
  %18 = load %struct.usb_yurex*, %struct.usb_yurex** %3, align 8
  %19 = getelementptr inbounds %struct.usb_yurex, %struct.usb_yurex* %18, i32 0, i32 5
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @usb_poison_urb(i32 %20)
  %22 = load %struct.usb_yurex*, %struct.usb_yurex** %3, align 8
  %23 = getelementptr inbounds %struct.usb_yurex, %struct.usb_yurex* %22, i32 0, i32 4
  %24 = call i32 @mutex_lock(i32* %23)
  %25 = load %struct.usb_yurex*, %struct.usb_yurex** %3, align 8
  %26 = getelementptr inbounds %struct.usb_yurex, %struct.usb_yurex* %25, i32 0, i32 0
  store i32 1, i32* %26, align 4
  %27 = load %struct.usb_yurex*, %struct.usb_yurex** %3, align 8
  %28 = getelementptr inbounds %struct.usb_yurex, %struct.usb_yurex* %27, i32 0, i32 4
  %29 = call i32 @mutex_unlock(i32* %28)
  %30 = load %struct.usb_yurex*, %struct.usb_yurex** %3, align 8
  %31 = getelementptr inbounds %struct.usb_yurex, %struct.usb_yurex* %30, i32 0, i32 3
  %32 = load i32, i32* @SIGIO, align 4
  %33 = load i32, i32* @POLL_IN, align 4
  %34 = call i32 @kill_fasync(i32* %31, i32 %32, i32 %33)
  %35 = load %struct.usb_yurex*, %struct.usb_yurex** %3, align 8
  %36 = getelementptr inbounds %struct.usb_yurex, %struct.usb_yurex* %35, i32 0, i32 2
  %37 = call i32 @wake_up_interruptible(i32* %36)
  %38 = load %struct.usb_yurex*, %struct.usb_yurex** %3, align 8
  %39 = getelementptr inbounds %struct.usb_yurex, %struct.usb_yurex* %38, i32 0, i32 1
  %40 = load i32, i32* @yurex_delete, align 4
  %41 = call i32 @kref_put(i32* %39, i32 %40)
  %42 = load %struct.usb_interface*, %struct.usb_interface** %2, align 8
  %43 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %42, i32 0, i32 1
  %44 = load i32, i32* %4, align 4
  %45 = call i32 @dev_info(i32* %43, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %44)
  ret void
}

declare dso_local %struct.usb_yurex* @usb_get_intfdata(%struct.usb_interface*) #1

declare dso_local i32 @usb_set_intfdata(%struct.usb_interface*, i32*) #1

declare dso_local i32 @usb_deregister_dev(%struct.usb_interface*, i32*) #1

declare dso_local i32 @usb_poison_urb(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @kill_fasync(i32*, i32, i32) #1

declare dso_local i32 @wake_up_interruptible(i32*) #1

declare dso_local i32 @kref_put(i32*, i32) #1

declare dso_local i32 @dev_info(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
