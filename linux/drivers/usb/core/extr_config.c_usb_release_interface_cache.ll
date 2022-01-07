; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/core/extr_config.c_usb_release_interface_cache.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/core/extr_config.c_usb_release_interface_cache.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kref = type { i32 }
%struct.usb_interface_cache = type { i32, %struct.usb_host_interface* }
%struct.usb_host_interface = type { %struct.usb_interface_cache*, %struct.usb_interface_cache* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @usb_release_interface_cache(%struct.kref* %0) #0 {
  %2 = alloca %struct.kref*, align 8
  %3 = alloca %struct.usb_interface_cache*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.usb_host_interface*, align 8
  store %struct.kref* %0, %struct.kref** %2, align 8
  %6 = load %struct.kref*, %struct.kref** %2, align 8
  %7 = call %struct.usb_interface_cache* @ref_to_usb_interface_cache(%struct.kref* %6)
  store %struct.usb_interface_cache* %7, %struct.usb_interface_cache** %3, align 8
  store i32 0, i32* %4, align 4
  br label %8

8:                                                ; preds = %29, %1
  %9 = load i32, i32* %4, align 4
  %10 = load %struct.usb_interface_cache*, %struct.usb_interface_cache** %3, align 8
  %11 = getelementptr inbounds %struct.usb_interface_cache, %struct.usb_interface_cache* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp slt i32 %9, %12
  br i1 %13, label %14, label %32

14:                                               ; preds = %8
  %15 = load %struct.usb_interface_cache*, %struct.usb_interface_cache** %3, align 8
  %16 = getelementptr inbounds %struct.usb_interface_cache, %struct.usb_interface_cache* %15, i32 0, i32 1
  %17 = load %struct.usb_host_interface*, %struct.usb_host_interface** %16, align 8
  %18 = load i32, i32* %4, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %17, i64 %19
  store %struct.usb_host_interface* %20, %struct.usb_host_interface** %5, align 8
  %21 = load %struct.usb_host_interface*, %struct.usb_host_interface** %5, align 8
  %22 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %21, i32 0, i32 1
  %23 = load %struct.usb_interface_cache*, %struct.usb_interface_cache** %22, align 8
  %24 = call i32 @kfree(%struct.usb_interface_cache* %23)
  %25 = load %struct.usb_host_interface*, %struct.usb_host_interface** %5, align 8
  %26 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %25, i32 0, i32 0
  %27 = load %struct.usb_interface_cache*, %struct.usb_interface_cache** %26, align 8
  %28 = call i32 @kfree(%struct.usb_interface_cache* %27)
  br label %29

29:                                               ; preds = %14
  %30 = load i32, i32* %4, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %4, align 4
  br label %8

32:                                               ; preds = %8
  %33 = load %struct.usb_interface_cache*, %struct.usb_interface_cache** %3, align 8
  %34 = call i32 @kfree(%struct.usb_interface_cache* %33)
  ret void
}

declare dso_local %struct.usb_interface_cache* @ref_to_usb_interface_cache(%struct.kref*) #1

declare dso_local i32 @kfree(%struct.usb_interface_cache*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
