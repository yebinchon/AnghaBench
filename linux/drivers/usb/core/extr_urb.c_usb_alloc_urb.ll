; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/core/extr_urb.c_usb_alloc_urb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/core/extr_urb.c_usb_alloc_urb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.urb = type { i32 }

@iso_frame_desc = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.urb* @usb_alloc_urb(i32 %0, i32 %1) #0 {
  %3 = alloca %struct.urb*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.urb*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %7 = load %struct.urb*, %struct.urb** %6, align 8
  %8 = load i32, i32* @iso_frame_desc, align 4
  %9 = load i32, i32* %4, align 4
  %10 = call i32 @struct_size(%struct.urb* %7, i32 %8, i32 %9)
  %11 = load i32, i32* %5, align 4
  %12 = call %struct.urb* @kmalloc(i32 %10, i32 %11)
  store %struct.urb* %12, %struct.urb** %6, align 8
  %13 = load %struct.urb*, %struct.urb** %6, align 8
  %14 = icmp ne %struct.urb* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %2
  store %struct.urb* null, %struct.urb** %3, align 8
  br label %20

16:                                               ; preds = %2
  %17 = load %struct.urb*, %struct.urb** %6, align 8
  %18 = call i32 @usb_init_urb(%struct.urb* %17)
  %19 = load %struct.urb*, %struct.urb** %6, align 8
  store %struct.urb* %19, %struct.urb** %3, align 8
  br label %20

20:                                               ; preds = %16, %15
  %21 = load %struct.urb*, %struct.urb** %3, align 8
  ret %struct.urb* %21
}

declare dso_local %struct.urb* @kmalloc(i32, i32) #1

declare dso_local i32 @struct_size(%struct.urb*, i32, i32) #1

declare dso_local i32 @usb_init_urb(%struct.urb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
