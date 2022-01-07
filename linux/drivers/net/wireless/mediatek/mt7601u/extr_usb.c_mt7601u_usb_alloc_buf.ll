; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt7601u/extr_usb.c_mt7601u_usb_alloc_buf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt7601u/extr_usb.c_mt7601u_usb_alloc_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mt7601u_dev = type { i32 }
%struct.mt7601u_dma_buf = type { i64, i32, i32, i32 }
%struct.usb_device = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mt7601u_usb_alloc_buf(%struct.mt7601u_dev* %0, i64 %1, %struct.mt7601u_dma_buf* %2) #0 {
  %4 = alloca %struct.mt7601u_dev*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.mt7601u_dma_buf*, align 8
  %7 = alloca %struct.usb_device*, align 8
  store %struct.mt7601u_dev* %0, %struct.mt7601u_dev** %4, align 8
  store i64 %1, i64* %5, align 8
  store %struct.mt7601u_dma_buf* %2, %struct.mt7601u_dma_buf** %6, align 8
  %8 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %4, align 8
  %9 = call %struct.usb_device* @mt7601u_to_usb_dev(%struct.mt7601u_dev* %8)
  store %struct.usb_device* %9, %struct.usb_device** %7, align 8
  %10 = load i64, i64* %5, align 8
  %11 = load %struct.mt7601u_dma_buf*, %struct.mt7601u_dma_buf** %6, align 8
  %12 = getelementptr inbounds %struct.mt7601u_dma_buf, %struct.mt7601u_dma_buf* %11, i32 0, i32 0
  store i64 %10, i64* %12, align 8
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call i32 @usb_alloc_urb(i32 0, i32 %13)
  %15 = load %struct.mt7601u_dma_buf*, %struct.mt7601u_dma_buf** %6, align 8
  %16 = getelementptr inbounds %struct.mt7601u_dma_buf, %struct.mt7601u_dma_buf* %15, i32 0, i32 2
  store i32 %14, i32* %16, align 4
  %17 = load %struct.usb_device*, %struct.usb_device** %7, align 8
  %18 = load %struct.mt7601u_dma_buf*, %struct.mt7601u_dma_buf** %6, align 8
  %19 = getelementptr inbounds %struct.mt7601u_dma_buf, %struct.mt7601u_dma_buf* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i32, i32* @GFP_KERNEL, align 4
  %22 = load %struct.mt7601u_dma_buf*, %struct.mt7601u_dma_buf** %6, align 8
  %23 = getelementptr inbounds %struct.mt7601u_dma_buf, %struct.mt7601u_dma_buf* %22, i32 0, i32 3
  %24 = call i32 @usb_alloc_coherent(%struct.usb_device* %17, i64 %20, i32 %21, i32* %23)
  %25 = load %struct.mt7601u_dma_buf*, %struct.mt7601u_dma_buf** %6, align 8
  %26 = getelementptr inbounds %struct.mt7601u_dma_buf, %struct.mt7601u_dma_buf* %25, i32 0, i32 1
  store i32 %24, i32* %26, align 8
  %27 = load %struct.mt7601u_dma_buf*, %struct.mt7601u_dma_buf** %6, align 8
  %28 = getelementptr inbounds %struct.mt7601u_dma_buf, %struct.mt7601u_dma_buf* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %3
  %32 = load %struct.mt7601u_dma_buf*, %struct.mt7601u_dma_buf** %6, align 8
  %33 = getelementptr inbounds %struct.mt7601u_dma_buf, %struct.mt7601u_dma_buf* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = icmp ne i32 %34, 0
  %36 = xor i1 %35, true
  br label %37

37:                                               ; preds = %31, %3
  %38 = phi i1 [ true, %3 ], [ %36, %31 ]
  %39 = zext i1 %38 to i32
  ret i32 %39
}

declare dso_local %struct.usb_device* @mt7601u_to_usb_dev(%struct.mt7601u_dev*) #1

declare dso_local i32 @usb_alloc_urb(i32, i32) #1

declare dso_local i32 @usb_alloc_coherent(%struct.usb_device*, i64, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
