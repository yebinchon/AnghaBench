; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/misc/extr_idmouse.c_idmouse_disconnect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/misc/extr_idmouse.c_idmouse_disconnect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_interface = type { i32 }
%struct.usb_idmouse = type { i32, i32, i64 }

@idmouse_class = common dso_local global i32 0, align 4
@open_disc_mutex = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"disconnected\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_interface*)* @idmouse_disconnect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @idmouse_disconnect(%struct.usb_interface* %0) #0 {
  %2 = alloca %struct.usb_interface*, align 8
  %3 = alloca %struct.usb_idmouse*, align 8
  store %struct.usb_interface* %0, %struct.usb_interface** %2, align 8
  %4 = load %struct.usb_interface*, %struct.usb_interface** %2, align 8
  %5 = call %struct.usb_idmouse* @usb_get_intfdata(%struct.usb_interface* %4)
  store %struct.usb_idmouse* %5, %struct.usb_idmouse** %3, align 8
  %6 = load %struct.usb_interface*, %struct.usb_interface** %2, align 8
  %7 = call i32 @usb_deregister_dev(%struct.usb_interface* %6, i32* @idmouse_class)
  %8 = call i32 @mutex_lock(i32* @open_disc_mutex)
  %9 = load %struct.usb_interface*, %struct.usb_interface** %2, align 8
  %10 = call i32 @usb_set_intfdata(%struct.usb_interface* %9, i32* null)
  %11 = load %struct.usb_idmouse*, %struct.usb_idmouse** %3, align 8
  %12 = getelementptr inbounds %struct.usb_idmouse, %struct.usb_idmouse* %11, i32 0, i32 0
  %13 = call i32 @mutex_lock(i32* %12)
  %14 = call i32 @mutex_unlock(i32* @open_disc_mutex)
  %15 = load %struct.usb_idmouse*, %struct.usb_idmouse** %3, align 8
  %16 = getelementptr inbounds %struct.usb_idmouse, %struct.usb_idmouse* %15, i32 0, i32 2
  store i64 0, i64* %16, align 8
  %17 = load %struct.usb_idmouse*, %struct.usb_idmouse** %3, align 8
  %18 = getelementptr inbounds %struct.usb_idmouse, %struct.usb_idmouse* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %27, label %21

21:                                               ; preds = %1
  %22 = load %struct.usb_idmouse*, %struct.usb_idmouse** %3, align 8
  %23 = getelementptr inbounds %struct.usb_idmouse, %struct.usb_idmouse* %22, i32 0, i32 0
  %24 = call i32 @mutex_unlock(i32* %23)
  %25 = load %struct.usb_idmouse*, %struct.usb_idmouse** %3, align 8
  %26 = call i32 @idmouse_delete(%struct.usb_idmouse* %25)
  br label %31

27:                                               ; preds = %1
  %28 = load %struct.usb_idmouse*, %struct.usb_idmouse** %3, align 8
  %29 = getelementptr inbounds %struct.usb_idmouse, %struct.usb_idmouse* %28, i32 0, i32 0
  %30 = call i32 @mutex_unlock(i32* %29)
  br label %31

31:                                               ; preds = %27, %21
  %32 = load %struct.usb_interface*, %struct.usb_interface** %2, align 8
  %33 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %32, i32 0, i32 0
  %34 = call i32 @dev_info(i32* %33, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  ret void
}

declare dso_local %struct.usb_idmouse* @usb_get_intfdata(%struct.usb_interface*) #1

declare dso_local i32 @usb_deregister_dev(%struct.usb_interface*, i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @usb_set_intfdata(%struct.usb_interface*, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @idmouse_delete(%struct.usb_idmouse*) #1

declare dso_local i32 @dev_info(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
