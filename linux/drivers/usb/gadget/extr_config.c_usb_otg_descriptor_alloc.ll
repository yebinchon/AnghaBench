; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/extr_config.c_usb_otg_descriptor_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/extr_config.c_usb_otg_descriptor_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_descriptor_header = type { i32 }
%struct.usb_gadget = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.usb_descriptor_header* @usb_otg_descriptor_alloc(%struct.usb_gadget* %0) #0 {
  %2 = alloca %struct.usb_gadget*, align 8
  %3 = alloca %struct.usb_descriptor_header*, align 8
  %4 = alloca i32, align 4
  store %struct.usb_gadget* %0, %struct.usb_gadget** %2, align 8
  store i32 0, i32* %4, align 4
  %5 = load %struct.usb_gadget*, %struct.usb_gadget** %2, align 8
  %6 = getelementptr inbounds %struct.usb_gadget, %struct.usb_gadget* %5, i32 0, i32 0
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = icmp ne %struct.TYPE_2__* %7, null
  br i1 %8, label %9, label %17

9:                                                ; preds = %1
  %10 = load %struct.usb_gadget*, %struct.usb_gadget** %2, align 8
  %11 = getelementptr inbounds %struct.usb_gadget, %struct.usb_gadget* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = icmp sge i32 %14, 512
  br i1 %15, label %16, label %17

16:                                               ; preds = %9
  store i32 4, i32* %4, align 4
  br label %18

17:                                               ; preds = %9, %1
  store i32 4, i32* %4, align 4
  br label %18

18:                                               ; preds = %17, %16
  %19 = load i32, i32* %4, align 4
  %20 = load i32, i32* @GFP_KERNEL, align 4
  %21 = call %struct.usb_descriptor_header* @kzalloc(i32 %19, i32 %20)
  store %struct.usb_descriptor_header* %21, %struct.usb_descriptor_header** %3, align 8
  %22 = load %struct.usb_descriptor_header*, %struct.usb_descriptor_header** %3, align 8
  ret %struct.usb_descriptor_header* %22
}

declare dso_local %struct.usb_descriptor_header* @kzalloc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
