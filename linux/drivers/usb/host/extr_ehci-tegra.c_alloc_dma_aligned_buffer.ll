; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/host/extr_ehci-tegra.c_alloc_dma_aligned_buffer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/host/extr_ehci-tegra.c_alloc_dma_aligned_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.urb = type { i64, i32, i64, i64, i64 }
%struct.dma_aligned_buffer = type { i64, i64, %struct.dma_aligned_buffer* }

@TEGRA_USB_DMA_ALIGN = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@URB_ALIGNED_TEMP_BUFFER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.urb*, i32)* @alloc_dma_aligned_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @alloc_dma_aligned_buffer(%struct.urb* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.urb*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.dma_aligned_buffer*, align 8
  %7 = alloca %struct.dma_aligned_buffer*, align 8
  %8 = alloca i64, align 8
  store %struct.urb* %0, %struct.urb** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.urb*, %struct.urb** %4, align 8
  %10 = getelementptr inbounds %struct.urb, %struct.urb* %9, i32 0, i32 4
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %32, label %13

13:                                               ; preds = %2
  %14 = load %struct.urb*, %struct.urb** %4, align 8
  %15 = getelementptr inbounds %struct.urb, %struct.urb* %14, i32 0, i32 3
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %32, label %18

18:                                               ; preds = %13
  %19 = load %struct.urb*, %struct.urb** %4, align 8
  %20 = getelementptr inbounds %struct.urb, %struct.urb* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %32, label %23

23:                                               ; preds = %18
  %24 = load %struct.urb*, %struct.urb** %4, align 8
  %25 = getelementptr inbounds %struct.urb, %struct.urb* %24, i32 0, i32 2
  %26 = load i64, i64* %25, align 8
  %27 = load i32, i32* @TEGRA_USB_DMA_ALIGN, align 4
  %28 = sub nsw i32 %27, 1
  %29 = sext i32 %28 to i64
  %30 = and i64 %26, %29
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %23, %18, %13, %2
  store i32 0, i32* %3, align 4
  br label %90

33:                                               ; preds = %23
  %34 = load %struct.urb*, %struct.urb** %4, align 8
  %35 = getelementptr inbounds %struct.urb, %struct.urb* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = add i64 %36, 24
  %38 = load i32, i32* @TEGRA_USB_DMA_ALIGN, align 4
  %39 = sext i32 %38 to i64
  %40 = add i64 %37, %39
  %41 = sub i64 %40, 1
  store i64 %41, i64* %8, align 8
  %42 = load i64, i64* %8, align 8
  %43 = load i32, i32* %5, align 4
  %44 = call %struct.dma_aligned_buffer* @kmalloc(i64 %42, i32 %43)
  store %struct.dma_aligned_buffer* %44, %struct.dma_aligned_buffer** %7, align 8
  %45 = load %struct.dma_aligned_buffer*, %struct.dma_aligned_buffer** %7, align 8
  %46 = icmp ne %struct.dma_aligned_buffer* %45, null
  br i1 %46, label %50, label %47

47:                                               ; preds = %33
  %48 = load i32, i32* @ENOMEM, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %3, align 4
  br label %90

50:                                               ; preds = %33
  %51 = load %struct.dma_aligned_buffer*, %struct.dma_aligned_buffer** %7, align 8
  %52 = getelementptr inbounds %struct.dma_aligned_buffer, %struct.dma_aligned_buffer* %51, i64 1
  %53 = load i32, i32* @TEGRA_USB_DMA_ALIGN, align 4
  %54 = call %struct.dma_aligned_buffer* @PTR_ALIGN(%struct.dma_aligned_buffer* %52, i32 %53)
  %55 = getelementptr inbounds %struct.dma_aligned_buffer, %struct.dma_aligned_buffer* %54, i64 -1
  store %struct.dma_aligned_buffer* %55, %struct.dma_aligned_buffer** %6, align 8
  %56 = load %struct.dma_aligned_buffer*, %struct.dma_aligned_buffer** %7, align 8
  %57 = load %struct.dma_aligned_buffer*, %struct.dma_aligned_buffer** %6, align 8
  %58 = getelementptr inbounds %struct.dma_aligned_buffer, %struct.dma_aligned_buffer* %57, i32 0, i32 2
  store %struct.dma_aligned_buffer* %56, %struct.dma_aligned_buffer** %58, align 8
  %59 = load %struct.urb*, %struct.urb** %4, align 8
  %60 = getelementptr inbounds %struct.urb, %struct.urb* %59, i32 0, i32 2
  %61 = load i64, i64* %60, align 8
  %62 = load %struct.dma_aligned_buffer*, %struct.dma_aligned_buffer** %6, align 8
  %63 = getelementptr inbounds %struct.dma_aligned_buffer, %struct.dma_aligned_buffer* %62, i32 0, i32 1
  store i64 %61, i64* %63, align 8
  %64 = load %struct.urb*, %struct.urb** %4, align 8
  %65 = call i64 @usb_urb_dir_out(%struct.urb* %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %79

67:                                               ; preds = %50
  %68 = load %struct.dma_aligned_buffer*, %struct.dma_aligned_buffer** %6, align 8
  %69 = getelementptr inbounds %struct.dma_aligned_buffer, %struct.dma_aligned_buffer* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load %struct.urb*, %struct.urb** %4, align 8
  %72 = getelementptr inbounds %struct.urb, %struct.urb* %71, i32 0, i32 2
  %73 = load i64, i64* %72, align 8
  %74 = load %struct.urb*, %struct.urb** %4, align 8
  %75 = getelementptr inbounds %struct.urb, %struct.urb* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = trunc i64 %76 to i32
  %78 = call i32 @memcpy(i64 %70, i64 %73, i32 %77)
  br label %79

79:                                               ; preds = %67, %50
  %80 = load %struct.dma_aligned_buffer*, %struct.dma_aligned_buffer** %6, align 8
  %81 = getelementptr inbounds %struct.dma_aligned_buffer, %struct.dma_aligned_buffer* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = load %struct.urb*, %struct.urb** %4, align 8
  %84 = getelementptr inbounds %struct.urb, %struct.urb* %83, i32 0, i32 2
  store i64 %82, i64* %84, align 8
  %85 = load i32, i32* @URB_ALIGNED_TEMP_BUFFER, align 4
  %86 = load %struct.urb*, %struct.urb** %4, align 8
  %87 = getelementptr inbounds %struct.urb, %struct.urb* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 8
  %89 = or i32 %88, %85
  store i32 %89, i32* %87, align 8
  store i32 0, i32* %3, align 4
  br label %90

90:                                               ; preds = %79, %47, %32
  %91 = load i32, i32* %3, align 4
  ret i32 %91
}

declare dso_local %struct.dma_aligned_buffer* @kmalloc(i64, i32) #1

declare dso_local %struct.dma_aligned_buffer* @PTR_ALIGN(%struct.dma_aligned_buffer*, i32) #1

declare dso_local i64 @usb_urb_dir_out(%struct.urb*) #1

declare dso_local i32 @memcpy(i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
