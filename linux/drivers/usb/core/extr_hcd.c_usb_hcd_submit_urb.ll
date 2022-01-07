; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/core/extr_hcd.c_usb_hcd_submit_urb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/core/extr_hcd.c_usb_hcd_submit_urb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.urb = type { i32, %struct.TYPE_4__*, i32, i32, i32* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.usb_hcd = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (%struct.usb_hcd*, %struct.urb*, i32)* }

@usb_kill_urb_queue = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @usb_hcd_submit_urb(%struct.urb* %0, i32 %1) #0 {
  %3 = alloca %struct.urb*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.usb_hcd*, align 8
  store %struct.urb* %0, %struct.urb** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.urb*, %struct.urb** %3, align 8
  %8 = getelementptr inbounds %struct.urb, %struct.urb* %7, i32 0, i32 1
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.usb_hcd* @bus_to_hcd(i32 %11)
  store %struct.usb_hcd* %12, %struct.usb_hcd** %6, align 8
  %13 = load %struct.urb*, %struct.urb** %3, align 8
  %14 = call i32 @usb_get_urb(%struct.urb* %13)
  %15 = load %struct.urb*, %struct.urb** %3, align 8
  %16 = getelementptr inbounds %struct.urb, %struct.urb* %15, i32 0, i32 2
  %17 = call i32 @atomic_inc(i32* %16)
  %18 = load %struct.urb*, %struct.urb** %3, align 8
  %19 = getelementptr inbounds %struct.urb, %struct.urb* %18, i32 0, i32 1
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = call i32 @atomic_inc(i32* %21)
  %23 = load %struct.usb_hcd*, %struct.usb_hcd** %6, align 8
  %24 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %23, i32 0, i32 0
  %25 = load %struct.urb*, %struct.urb** %3, align 8
  %26 = call i32 @usbmon_urb_submit(i32* %24, %struct.urb* %25)
  %27 = load %struct.urb*, %struct.urb** %3, align 8
  %28 = getelementptr inbounds %struct.urb, %struct.urb* %27, i32 0, i32 1
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %28, align 8
  %30 = call i64 @is_root_hub(%struct.TYPE_4__* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %2
  %33 = load %struct.usb_hcd*, %struct.usb_hcd** %6, align 8
  %34 = load %struct.urb*, %struct.urb** %3, align 8
  %35 = call i32 @rh_urb_enqueue(%struct.usb_hcd* %33, %struct.urb* %34)
  store i32 %35, i32* %5, align 4
  br label %65

36:                                               ; preds = %2
  %37 = load %struct.usb_hcd*, %struct.usb_hcd** %6, align 8
  %38 = load %struct.urb*, %struct.urb** %3, align 8
  %39 = load i32, i32* %4, align 4
  %40 = call i32 @map_urb_for_dma(%struct.usb_hcd* %37, %struct.urb* %38, i32 %39)
  store i32 %40, i32* %5, align 4
  %41 = load i32, i32* %5, align 4
  %42 = icmp eq i32 %41, 0
  %43 = zext i1 %42 to i32
  %44 = call i64 @likely(i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %64

46:                                               ; preds = %36
  %47 = load %struct.usb_hcd*, %struct.usb_hcd** %6, align 8
  %48 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %47, i32 0, i32 1
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 0
  %51 = load i32 (%struct.usb_hcd*, %struct.urb*, i32)*, i32 (%struct.usb_hcd*, %struct.urb*, i32)** %50, align 8
  %52 = load %struct.usb_hcd*, %struct.usb_hcd** %6, align 8
  %53 = load %struct.urb*, %struct.urb** %3, align 8
  %54 = load i32, i32* %4, align 4
  %55 = call i32 %51(%struct.usb_hcd* %52, %struct.urb* %53, i32 %54)
  store i32 %55, i32* %5, align 4
  %56 = load i32, i32* %5, align 4
  %57 = call i64 @unlikely(i32 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %46
  %60 = load %struct.usb_hcd*, %struct.usb_hcd** %6, align 8
  %61 = load %struct.urb*, %struct.urb** %3, align 8
  %62 = call i32 @unmap_urb_for_dma(%struct.usb_hcd* %60, %struct.urb* %61)
  br label %63

63:                                               ; preds = %59, %46
  br label %64

64:                                               ; preds = %63, %36
  br label %65

65:                                               ; preds = %64, %32
  %66 = load i32, i32* %5, align 4
  %67 = call i64 @unlikely(i32 %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %97

69:                                               ; preds = %65
  %70 = load %struct.usb_hcd*, %struct.usb_hcd** %6, align 8
  %71 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %70, i32 0, i32 0
  %72 = load %struct.urb*, %struct.urb** %3, align 8
  %73 = load i32, i32* %5, align 4
  %74 = call i32 @usbmon_urb_submit_error(i32* %71, %struct.urb* %72, i32 %73)
  %75 = load %struct.urb*, %struct.urb** %3, align 8
  %76 = getelementptr inbounds %struct.urb, %struct.urb* %75, i32 0, i32 4
  store i32* null, i32** %76, align 8
  %77 = load %struct.urb*, %struct.urb** %3, align 8
  %78 = getelementptr inbounds %struct.urb, %struct.urb* %77, i32 0, i32 3
  %79 = call i32 @INIT_LIST_HEAD(i32* %78)
  %80 = load %struct.urb*, %struct.urb** %3, align 8
  %81 = getelementptr inbounds %struct.urb, %struct.urb* %80, i32 0, i32 2
  %82 = call i32 @atomic_dec(i32* %81)
  %83 = load %struct.urb*, %struct.urb** %3, align 8
  %84 = getelementptr inbounds %struct.urb, %struct.urb* %83, i32 0, i32 1
  %85 = load %struct.TYPE_4__*, %struct.TYPE_4__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 0
  %87 = call i32 @atomic_dec(i32* %86)
  %88 = load %struct.urb*, %struct.urb** %3, align 8
  %89 = getelementptr inbounds %struct.urb, %struct.urb* %88, i32 0, i32 0
  %90 = call i64 @atomic_read(i32* %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %94

92:                                               ; preds = %69
  %93 = call i32 @wake_up(i32* @usb_kill_urb_queue)
  br label %94

94:                                               ; preds = %92, %69
  %95 = load %struct.urb*, %struct.urb** %3, align 8
  %96 = call i32 @usb_put_urb(%struct.urb* %95)
  br label %97

97:                                               ; preds = %94, %65
  %98 = load i32, i32* %5, align 4
  ret i32 %98
}

declare dso_local %struct.usb_hcd* @bus_to_hcd(i32) #1

declare dso_local i32 @usb_get_urb(%struct.urb*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @usbmon_urb_submit(i32*, %struct.urb*) #1

declare dso_local i64 @is_root_hub(%struct.TYPE_4__*) #1

declare dso_local i32 @rh_urb_enqueue(%struct.usb_hcd*, %struct.urb*) #1

declare dso_local i32 @map_urb_for_dma(%struct.usb_hcd*, %struct.urb*, i32) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @unmap_urb_for_dma(%struct.usb_hcd*, %struct.urb*) #1

declare dso_local i32 @usbmon_urb_submit_error(i32*, %struct.urb*, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @atomic_dec(i32*) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @wake_up(i32*) #1

declare dso_local i32 @usb_put_urb(%struct.urb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
