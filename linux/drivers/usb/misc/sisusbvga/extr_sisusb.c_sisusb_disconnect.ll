; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/misc/sisusbvga/extr_sisusb.c_sisusb_disconnect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/misc/sisusbvga/extr_sisusb.c_sisusb_disconnect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_interface = type { i32 }
%struct.sisusb_usb_data = type { i32, i32, i64, i64 }

@usb_sisusb_class = common dso_local global i32 0, align 4
@sisusb_delete = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_interface*)* @sisusb_disconnect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sisusb_disconnect(%struct.usb_interface* %0) #0 {
  %2 = alloca %struct.usb_interface*, align 8
  %3 = alloca %struct.sisusb_usb_data*, align 8
  store %struct.usb_interface* %0, %struct.usb_interface** %2, align 8
  %4 = load %struct.usb_interface*, %struct.usb_interface** %2, align 8
  %5 = call %struct.sisusb_usb_data* @usb_get_intfdata(%struct.usb_interface* %4)
  store %struct.sisusb_usb_data* %5, %struct.sisusb_usb_data** %3, align 8
  %6 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %3, align 8
  %7 = icmp ne %struct.sisusb_usb_data* %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  br label %35

9:                                                ; preds = %1
  %10 = load %struct.usb_interface*, %struct.usb_interface** %2, align 8
  %11 = call i32 @usb_deregister_dev(%struct.usb_interface* %10, i32* @usb_sisusb_class)
  %12 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %3, align 8
  %13 = getelementptr inbounds %struct.sisusb_usb_data, %struct.sisusb_usb_data* %12, i32 0, i32 1
  %14 = call i32 @mutex_lock(i32* %13)
  %15 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %3, align 8
  %16 = call i32 @sisusb_wait_all_out_complete(%struct.sisusb_usb_data* %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %9
  %19 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %3, align 8
  %20 = call i32 @sisusb_kill_all_busy(%struct.sisusb_usb_data* %19)
  br label %21

21:                                               ; preds = %18, %9
  %22 = load %struct.usb_interface*, %struct.usb_interface** %2, align 8
  %23 = call i32 @usb_set_intfdata(%struct.usb_interface* %22, i32* null)
  %24 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %3, align 8
  %25 = getelementptr inbounds %struct.sisusb_usb_data, %struct.sisusb_usb_data* %24, i32 0, i32 3
  store i64 0, i64* %25, align 8
  %26 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %3, align 8
  %27 = getelementptr inbounds %struct.sisusb_usb_data, %struct.sisusb_usb_data* %26, i32 0, i32 2
  store i64 0, i64* %27, align 8
  %28 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %3, align 8
  %29 = getelementptr inbounds %struct.sisusb_usb_data, %struct.sisusb_usb_data* %28, i32 0, i32 1
  %30 = call i32 @mutex_unlock(i32* %29)
  %31 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %3, align 8
  %32 = getelementptr inbounds %struct.sisusb_usb_data, %struct.sisusb_usb_data* %31, i32 0, i32 0
  %33 = load i32, i32* @sisusb_delete, align 4
  %34 = call i32 @kref_put(i32* %32, i32 %33)
  br label %35

35:                                               ; preds = %21, %8
  ret void
}

declare dso_local %struct.sisusb_usb_data* @usb_get_intfdata(%struct.usb_interface*) #1

declare dso_local i32 @usb_deregister_dev(%struct.usb_interface*, i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @sisusb_wait_all_out_complete(%struct.sisusb_usb_data*) #1

declare dso_local i32 @sisusb_kill_all_busy(%struct.sisusb_usb_data*) #1

declare dso_local i32 @usb_set_intfdata(%struct.usb_interface*, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @kref_put(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
