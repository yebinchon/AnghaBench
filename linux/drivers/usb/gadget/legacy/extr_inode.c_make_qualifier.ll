; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/legacy/extr_inode.c_make_qualifier.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/legacy/extr_inode.c_make_qualifier.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dev_data = type { i32, %struct.TYPE_4__*, %struct.usb_device_descriptor* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.usb_device_descriptor = type { i32, i32, i32 }
%struct.usb_qualifier_descriptor = type { i32, i32, i64, i32, i32, i32, i32, i32, i32 }

@USB_DT_DEVICE_QUALIFIER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dev_data*)* @make_qualifier to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @make_qualifier(%struct.dev_data* %0) #0 {
  %2 = alloca %struct.dev_data*, align 8
  %3 = alloca %struct.usb_qualifier_descriptor, align 8
  %4 = alloca %struct.usb_device_descriptor*, align 8
  store %struct.dev_data* %0, %struct.dev_data** %2, align 8
  %5 = getelementptr inbounds %struct.usb_qualifier_descriptor, %struct.usb_qualifier_descriptor* %3, i32 0, i32 0
  store i32 40, i32* %5, align 8
  %6 = load i32, i32* @USB_DT_DEVICE_QUALIFIER, align 4
  %7 = getelementptr inbounds %struct.usb_qualifier_descriptor, %struct.usb_qualifier_descriptor* %3, i32 0, i32 8
  store i32 %6, i32* %7, align 4
  %8 = call i32 @cpu_to_le16(i32 512)
  %9 = getelementptr inbounds %struct.usb_qualifier_descriptor, %struct.usb_qualifier_descriptor* %3, i32 0, i32 7
  store i32 %8, i32* %9, align 8
  %10 = load %struct.dev_data*, %struct.dev_data** %2, align 8
  %11 = getelementptr inbounds %struct.dev_data, %struct.dev_data* %10, i32 0, i32 2
  %12 = load %struct.usb_device_descriptor*, %struct.usb_device_descriptor** %11, align 8
  store %struct.usb_device_descriptor* %12, %struct.usb_device_descriptor** %4, align 8
  %13 = load %struct.usb_device_descriptor*, %struct.usb_device_descriptor** %4, align 8
  %14 = getelementptr inbounds %struct.usb_device_descriptor, %struct.usb_device_descriptor* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = getelementptr inbounds %struct.usb_qualifier_descriptor, %struct.usb_qualifier_descriptor* %3, i32 0, i32 6
  store i32 %15, i32* %16, align 4
  %17 = load %struct.usb_device_descriptor*, %struct.usb_device_descriptor** %4, align 8
  %18 = getelementptr inbounds %struct.usb_device_descriptor, %struct.usb_device_descriptor* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = getelementptr inbounds %struct.usb_qualifier_descriptor, %struct.usb_qualifier_descriptor* %3, i32 0, i32 5
  store i32 %19, i32* %20, align 8
  %21 = load %struct.usb_device_descriptor*, %struct.usb_device_descriptor** %4, align 8
  %22 = getelementptr inbounds %struct.usb_device_descriptor, %struct.usb_device_descriptor* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = getelementptr inbounds %struct.usb_qualifier_descriptor, %struct.usb_qualifier_descriptor* %3, i32 0, i32 4
  store i32 %23, i32* %24, align 4
  %25 = load %struct.dev_data*, %struct.dev_data** %2, align 8
  %26 = getelementptr inbounds %struct.dev_data, %struct.dev_data* %25, i32 0, i32 1
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = getelementptr inbounds %struct.usb_qualifier_descriptor, %struct.usb_qualifier_descriptor* %3, i32 0, i32 3
  store i32 %31, i32* %32, align 8
  %33 = getelementptr inbounds %struct.usb_qualifier_descriptor, %struct.usb_qualifier_descriptor* %3, i32 0, i32 1
  store i32 1, i32* %33, align 4
  %34 = getelementptr inbounds %struct.usb_qualifier_descriptor, %struct.usb_qualifier_descriptor* %3, i32 0, i32 2
  store i64 0, i64* %34, align 8
  %35 = load %struct.dev_data*, %struct.dev_data** %2, align 8
  %36 = getelementptr inbounds %struct.dev_data, %struct.dev_data* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @memcpy(i32 %37, %struct.usb_qualifier_descriptor* %3, i32 40)
  ret void
}

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @memcpy(i32, %struct.usb_qualifier_descriptor*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
