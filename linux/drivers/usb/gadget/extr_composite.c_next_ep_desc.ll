; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/extr_composite.c_next_ep_desc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/extr_composite.c_next_ep_desc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_descriptor_header = type { i64 }

@USB_DT_ENDPOINT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.usb_descriptor_header** (%struct.usb_descriptor_header**)* @next_ep_desc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.usb_descriptor_header** @next_ep_desc(%struct.usb_descriptor_header** %0) #0 {
  %2 = alloca %struct.usb_descriptor_header**, align 8
  %3 = alloca %struct.usb_descriptor_header**, align 8
  store %struct.usb_descriptor_header** %0, %struct.usb_descriptor_header*** %3, align 8
  br label %4

4:                                                ; preds = %18, %1
  %5 = load %struct.usb_descriptor_header**, %struct.usb_descriptor_header*** %3, align 8
  %6 = load %struct.usb_descriptor_header*, %struct.usb_descriptor_header** %5, align 8
  %7 = icmp ne %struct.usb_descriptor_header* %6, null
  br i1 %7, label %8, label %21

8:                                                ; preds = %4
  %9 = load %struct.usb_descriptor_header**, %struct.usb_descriptor_header*** %3, align 8
  %10 = load %struct.usb_descriptor_header*, %struct.usb_descriptor_header** %9, align 8
  %11 = getelementptr inbounds %struct.usb_descriptor_header, %struct.usb_descriptor_header* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @USB_DT_ENDPOINT, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %17

15:                                               ; preds = %8
  %16 = load %struct.usb_descriptor_header**, %struct.usb_descriptor_header*** %3, align 8
  store %struct.usb_descriptor_header** %16, %struct.usb_descriptor_header*** %2, align 8
  br label %22

17:                                               ; preds = %8
  br label %18

18:                                               ; preds = %17
  %19 = load %struct.usb_descriptor_header**, %struct.usb_descriptor_header*** %3, align 8
  %20 = getelementptr inbounds %struct.usb_descriptor_header*, %struct.usb_descriptor_header** %19, i32 1
  store %struct.usb_descriptor_header** %20, %struct.usb_descriptor_header*** %3, align 8
  br label %4

21:                                               ; preds = %4
  store %struct.usb_descriptor_header** null, %struct.usb_descriptor_header*** %2, align 8
  br label %22

22:                                               ; preds = %21, %15
  %23 = load %struct.usb_descriptor_header**, %struct.usb_descriptor_header*** %2, align 8
  ret %struct.usb_descriptor_header** %23
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
