; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/musb/extr_musb_host.c_musb_unmap_urb_for_dma.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/musb/extr_musb_host.c_musb_unmap_urb_for_dma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_hcd = type { i32 }
%struct.urb = type { i32 }
%struct.musb = type { i64 }

@MUSB_HWVERS_1800 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_hcd*, %struct.urb*)* @musb_unmap_urb_for_dma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @musb_unmap_urb_for_dma(%struct.usb_hcd* %0, %struct.urb* %1) #0 {
  %3 = alloca %struct.usb_hcd*, align 8
  %4 = alloca %struct.urb*, align 8
  %5 = alloca %struct.musb*, align 8
  store %struct.usb_hcd* %0, %struct.usb_hcd** %3, align 8
  store %struct.urb* %1, %struct.urb** %4, align 8
  %6 = load %struct.usb_hcd*, %struct.usb_hcd** %3, align 8
  %7 = call %struct.musb* @hcd_to_musb(%struct.usb_hcd* %6)
  store %struct.musb* %7, %struct.musb** %5, align 8
  %8 = load %struct.usb_hcd*, %struct.usb_hcd** %3, align 8
  %9 = load %struct.urb*, %struct.urb** %4, align 8
  %10 = call i32 @usb_hcd_unmap_urb_for_dma(%struct.usb_hcd* %8, %struct.urb* %9)
  %11 = load %struct.musb*, %struct.musb** %5, align 8
  %12 = getelementptr inbounds %struct.musb, %struct.musb* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @MUSB_HWVERS_1800, align 8
  %15 = icmp slt i64 %13, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  br label %20

17:                                               ; preds = %2
  %18 = load %struct.urb*, %struct.urb** %4, align 8
  %19 = call i32 @musb_free_temp_buffer(%struct.urb* %18)
  br label %20

20:                                               ; preds = %17, %16
  ret void
}

declare dso_local %struct.musb* @hcd_to_musb(%struct.usb_hcd*) #1

declare dso_local i32 @usb_hcd_unmap_urb_for_dma(%struct.usb_hcd*, %struct.urb*) #1

declare dso_local i32 @musb_free_temp_buffer(%struct.urb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
