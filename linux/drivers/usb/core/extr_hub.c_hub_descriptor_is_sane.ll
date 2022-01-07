; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/core/extr_hub.c_hub_descriptor_is_sane.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/core/extr_hub.c_hub_descriptor_is_sane.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_host_interface = type { %struct.TYPE_4__*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_host_interface*)* @hub_descriptor_is_sane to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hub_descriptor_is_sane(%struct.usb_host_interface* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.usb_host_interface*, align 8
  store %struct.usb_host_interface* %0, %struct.usb_host_interface** %3, align 8
  %4 = load %struct.usb_host_interface*, %struct.usb_host_interface** %3, align 8
  %5 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %4, i32 0, i32 1
  %6 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %16

9:                                                ; preds = %1
  %10 = load %struct.usb_host_interface*, %struct.usb_host_interface** %3, align 8
  %11 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp ne i32 %13, 1
  br i1 %14, label %15, label %16

15:                                               ; preds = %9
  store i32 0, i32* %2, align 4
  br label %33

16:                                               ; preds = %9, %1
  %17 = load %struct.usb_host_interface*, %struct.usb_host_interface** %3, align 8
  %18 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %20, 1
  br i1 %21, label %22, label %23

22:                                               ; preds = %16
  store i32 0, i32* %2, align 4
  br label %33

23:                                               ; preds = %16
  %24 = load %struct.usb_host_interface*, %struct.usb_host_interface** %3, align 8
  %25 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %24, i32 0, i32 0
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i64 0
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = call i32 @usb_endpoint_is_int_in(i32* %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %23
  store i32 0, i32* %2, align 4
  br label %33

32:                                               ; preds = %23
  store i32 1, i32* %2, align 4
  br label %33

33:                                               ; preds = %32, %31, %22, %15
  %34 = load i32, i32* %2, align 4
  ret i32 %34
}

declare dso_local i32 @usb_endpoint_is_int_in(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
