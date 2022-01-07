; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/musb/extr_musb_host.c_musb_map_urb_for_dma.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/musb/extr_musb_host.c_musb_map_urb_for_dma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_hcd = type { i32 }
%struct.urb = type { i32 }
%struct.musb = type { i64 }

@MUSB_HWVERS_1800 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_hcd*, %struct.urb*, i32)* @musb_map_urb_for_dma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @musb_map_urb_for_dma(%struct.usb_hcd* %0, %struct.urb* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.usb_hcd*, align 8
  %6 = alloca %struct.urb*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.musb*, align 8
  %9 = alloca i32, align 4
  store %struct.usb_hcd* %0, %struct.usb_hcd** %5, align 8
  store %struct.urb* %1, %struct.urb** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.usb_hcd*, %struct.usb_hcd** %5, align 8
  %11 = call %struct.musb* @hcd_to_musb(%struct.usb_hcd* %10)
  store %struct.musb* %11, %struct.musb** %8, align 8
  %12 = load %struct.musb*, %struct.musb** %8, align 8
  %13 = getelementptr inbounds %struct.musb, %struct.musb* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @MUSB_HWVERS_1800, align 8
  %16 = icmp slt i64 %14, %15
  br i1 %16, label %17, label %22

17:                                               ; preds = %3
  %18 = load %struct.usb_hcd*, %struct.usb_hcd** %5, align 8
  %19 = load %struct.urb*, %struct.urb** %6, align 8
  %20 = load i32, i32* %7, align 4
  %21 = call i32 @usb_hcd_map_urb_for_dma(%struct.usb_hcd* %18, %struct.urb* %19, i32 %20)
  store i32 %21, i32* %4, align 4
  br label %42

22:                                               ; preds = %3
  %23 = load %struct.urb*, %struct.urb** %6, align 8
  %24 = load i32, i32* %7, align 4
  %25 = call i32 @musb_alloc_temp_buffer(%struct.urb* %23, i32 %24)
  store i32 %25, i32* %9, align 4
  %26 = load i32, i32* %9, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %22
  %29 = load i32, i32* %9, align 4
  store i32 %29, i32* %4, align 4
  br label %42

30:                                               ; preds = %22
  %31 = load %struct.usb_hcd*, %struct.usb_hcd** %5, align 8
  %32 = load %struct.urb*, %struct.urb** %6, align 8
  %33 = load i32, i32* %7, align 4
  %34 = call i32 @usb_hcd_map_urb_for_dma(%struct.usb_hcd* %31, %struct.urb* %32, i32 %33)
  store i32 %34, i32* %9, align 4
  %35 = load i32, i32* %9, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %30
  %38 = load %struct.urb*, %struct.urb** %6, align 8
  %39 = call i32 @musb_free_temp_buffer(%struct.urb* %38)
  br label %40

40:                                               ; preds = %37, %30
  %41 = load i32, i32* %9, align 4
  store i32 %41, i32* %4, align 4
  br label %42

42:                                               ; preds = %40, %28, %17
  %43 = load i32, i32* %4, align 4
  ret i32 %43
}

declare dso_local %struct.musb* @hcd_to_musb(%struct.usb_hcd*) #1

declare dso_local i32 @usb_hcd_map_urb_for_dma(%struct.usb_hcd*, %struct.urb*, i32) #1

declare dso_local i32 @musb_alloc_temp_buffer(%struct.urb*, i32) #1

declare dso_local i32 @musb_free_temp_buffer(%struct.urb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
