; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/core/extr_driver.c_unbind_marked_interfaces.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/core/extr_driver.c_unbind_marked_interfaces.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_device = type { %struct.usb_host_config* }
%struct.usb_host_config = type { %struct.usb_interface**, %struct.TYPE_3__ }
%struct.usb_interface = type { i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_device*)* @unbind_marked_interfaces to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @unbind_marked_interfaces(%struct.usb_device* %0) #0 {
  %2 = alloca %struct.usb_device*, align 8
  %3 = alloca %struct.usb_host_config*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.usb_interface*, align 8
  store %struct.usb_device* %0, %struct.usb_device** %2, align 8
  %6 = load %struct.usb_device*, %struct.usb_device** %2, align 8
  %7 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %6, i32 0, i32 0
  %8 = load %struct.usb_host_config*, %struct.usb_host_config** %7, align 8
  store %struct.usb_host_config* %8, %struct.usb_host_config** %3, align 8
  %9 = load %struct.usb_host_config*, %struct.usb_host_config** %3, align 8
  %10 = icmp ne %struct.usb_host_config* %9, null
  br i1 %10, label %11, label %45

11:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  br label %12

12:                                               ; preds = %41, %11
  %13 = load i32, i32* %4, align 4
  %14 = load %struct.usb_host_config*, %struct.usb_host_config** %3, align 8
  %15 = getelementptr inbounds %struct.usb_host_config, %struct.usb_host_config* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp slt i32 %13, %17
  br i1 %18, label %19, label %44

19:                                               ; preds = %12
  %20 = load %struct.usb_host_config*, %struct.usb_host_config** %3, align 8
  %21 = getelementptr inbounds %struct.usb_host_config, %struct.usb_host_config* %20, i32 0, i32 0
  %22 = load %struct.usb_interface**, %struct.usb_interface*** %21, align 8
  %23 = load i32, i32* %4, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.usb_interface*, %struct.usb_interface** %22, i64 %24
  %26 = load %struct.usb_interface*, %struct.usb_interface** %25, align 8
  store %struct.usb_interface* %26, %struct.usb_interface** %5, align 8
  %27 = load %struct.usb_interface*, %struct.usb_interface** %5, align 8
  %28 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %40

32:                                               ; preds = %19
  %33 = load %struct.usb_interface*, %struct.usb_interface** %5, align 8
  %34 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %32
  %38 = load %struct.usb_interface*, %struct.usb_interface** %5, align 8
  %39 = call i32 @usb_forced_unbind_intf(%struct.usb_interface* %38)
  br label %40

40:                                               ; preds = %37, %32, %19
  br label %41

41:                                               ; preds = %40
  %42 = load i32, i32* %4, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %4, align 4
  br label %12

44:                                               ; preds = %12
  br label %45

45:                                               ; preds = %44, %1
  ret void
}

declare dso_local i32 @usb_forced_unbind_intf(%struct.usb_interface*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
