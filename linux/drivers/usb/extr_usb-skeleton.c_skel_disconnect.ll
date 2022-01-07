; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/extr_usb-skeleton.c_skel_disconnect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/extr_usb-skeleton.c_skel_disconnect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_interface = type { i32, i32 }
%struct.usb_skel = type { i32, i32, i32, i32, i32 }

@skel_class = common dso_local global i32 0, align 4
@skel_delete = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"USB Skeleton #%d now disconnected\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_interface*)* @skel_disconnect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @skel_disconnect(%struct.usb_interface* %0) #0 {
  %2 = alloca %struct.usb_interface*, align 8
  %3 = alloca %struct.usb_skel*, align 8
  %4 = alloca i32, align 4
  store %struct.usb_interface* %0, %struct.usb_interface** %2, align 8
  %5 = load %struct.usb_interface*, %struct.usb_interface** %2, align 8
  %6 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  store i32 %7, i32* %4, align 4
  %8 = load %struct.usb_interface*, %struct.usb_interface** %2, align 8
  %9 = call %struct.usb_skel* @usb_get_intfdata(%struct.usb_interface* %8)
  store %struct.usb_skel* %9, %struct.usb_skel** %3, align 8
  %10 = load %struct.usb_interface*, %struct.usb_interface** %2, align 8
  %11 = call i32 @usb_set_intfdata(%struct.usb_interface* %10, i32* null)
  %12 = load %struct.usb_interface*, %struct.usb_interface** %2, align 8
  %13 = call i32 @usb_deregister_dev(%struct.usb_interface* %12, i32* @skel_class)
  %14 = load %struct.usb_skel*, %struct.usb_skel** %3, align 8
  %15 = getelementptr inbounds %struct.usb_skel, %struct.usb_skel* %14, i32 0, i32 4
  %16 = call i32 @mutex_lock(i32* %15)
  %17 = load %struct.usb_skel*, %struct.usb_skel** %3, align 8
  %18 = getelementptr inbounds %struct.usb_skel, %struct.usb_skel* %17, i32 0, i32 0
  store i32 1, i32* %18, align 4
  %19 = load %struct.usb_skel*, %struct.usb_skel** %3, align 8
  %20 = getelementptr inbounds %struct.usb_skel, %struct.usb_skel* %19, i32 0, i32 4
  %21 = call i32 @mutex_unlock(i32* %20)
  %22 = load %struct.usb_skel*, %struct.usb_skel** %3, align 8
  %23 = getelementptr inbounds %struct.usb_skel, %struct.usb_skel* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @usb_kill_urb(i32 %24)
  %26 = load %struct.usb_skel*, %struct.usb_skel** %3, align 8
  %27 = getelementptr inbounds %struct.usb_skel, %struct.usb_skel* %26, i32 0, i32 2
  %28 = call i32 @usb_kill_anchored_urbs(i32* %27)
  %29 = load %struct.usb_skel*, %struct.usb_skel** %3, align 8
  %30 = getelementptr inbounds %struct.usb_skel, %struct.usb_skel* %29, i32 0, i32 1
  %31 = load i32, i32* @skel_delete, align 4
  %32 = call i32 @kref_put(i32* %30, i32 %31)
  %33 = load %struct.usb_interface*, %struct.usb_interface** %2, align 8
  %34 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %33, i32 0, i32 1
  %35 = load i32, i32* %4, align 4
  %36 = call i32 @dev_info(i32* %34, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %35)
  ret void
}

declare dso_local %struct.usb_skel* @usb_get_intfdata(%struct.usb_interface*) #1

declare dso_local i32 @usb_set_intfdata(%struct.usb_interface*, i32*) #1

declare dso_local i32 @usb_deregister_dev(%struct.usb_interface*, i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @usb_kill_urb(i32) #1

declare dso_local i32 @usb_kill_anchored_urbs(i32*) #1

declare dso_local i32 @kref_put(i32*, i32) #1

declare dso_local i32 @dev_info(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
