; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/dwc2/extr_hcd.c_dwc2_alloc_dma_aligned_buffer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/dwc2/extr_hcd.c_dwc2_alloc_dma_aligned_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.urb = type { i32, i32, i32****, i64, i64 }

@DWC2_USB_DMA_ALIGN = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@URB_ALIGNED_TEMP_BUFFER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.urb*, i32)* @dwc2_alloc_dma_aligned_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dwc2_alloc_dma_aligned_buffer(%struct.urb* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.urb*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  store %struct.urb* %0, %struct.urb** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.urb*, %struct.urb** %4, align 8
  %9 = getelementptr inbounds %struct.urb, %struct.urb* %8, i32 0, i32 4
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %32, label %12

12:                                               ; preds = %2
  %13 = load %struct.urb*, %struct.urb** %4, align 8
  %14 = getelementptr inbounds %struct.urb, %struct.urb* %13, i32 0, i32 3
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %32, label %17

17:                                               ; preds = %12
  %18 = load %struct.urb*, %struct.urb** %4, align 8
  %19 = getelementptr inbounds %struct.urb, %struct.urb* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %32, label %22

22:                                               ; preds = %17
  %23 = load %struct.urb*, %struct.urb** %4, align 8
  %24 = getelementptr inbounds %struct.urb, %struct.urb* %23, i32 0, i32 2
  %25 = load i32****, i32***** %24, align 8
  %26 = ptrtoint i32**** %25 to i64
  %27 = load i32, i32* @DWC2_USB_DMA_ALIGN, align 4
  %28 = sub nsw i32 %27, 1
  %29 = sext i32 %28 to i64
  %30 = and i64 %26, %29
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %22, %17, %12, %2
  store i32 0, i32* %3, align 4
  br label %86

33:                                               ; preds = %22
  %34 = load %struct.urb*, %struct.urb** %4, align 8
  %35 = getelementptr inbounds %struct.urb, %struct.urb* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = call i32 (...) @dma_get_cache_alignment()
  %38 = sub nsw i32 %37, 1
  %39 = add nsw i32 %36, %38
  %40 = sext i32 %39 to i64
  %41 = add i64 %40, 8
  store i64 %41, i64* %7, align 8
  %42 = load i64, i64* %7, align 8
  %43 = load i32, i32* %5, align 4
  %44 = call i8* @kmalloc(i64 %42, i32 %43)
  store i8* %44, i8** %6, align 8
  %45 = load i8*, i8** %6, align 8
  %46 = icmp ne i8* %45, null
  br i1 %46, label %50, label %47

47:                                               ; preds = %33
  %48 = load i32, i32* @ENOMEM, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %3, align 4
  br label %86

50:                                               ; preds = %33
  %51 = load i8*, i8** %6, align 8
  %52 = load %struct.urb*, %struct.urb** %4, align 8
  %53 = getelementptr inbounds %struct.urb, %struct.urb* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = sext i32 %54 to i64
  %56 = getelementptr i8, i8* %51, i64 %55
  %57 = call i32 (...) @dma_get_cache_alignment()
  %58 = call i8* @PTR_ALIGN(i8* %56, i32 %57)
  %59 = load %struct.urb*, %struct.urb** %4, align 8
  %60 = getelementptr inbounds %struct.urb, %struct.urb* %59, i32 0, i32 2
  %61 = bitcast i32***** %60 to i32***
  %62 = call i32 @memcpy(i8* %58, i32*** %61, i32 8)
  %63 = load %struct.urb*, %struct.urb** %4, align 8
  %64 = call i64 @usb_urb_dir_out(%struct.urb* %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %76

66:                                               ; preds = %50
  %67 = load i8*, i8** %6, align 8
  %68 = load %struct.urb*, %struct.urb** %4, align 8
  %69 = getelementptr inbounds %struct.urb, %struct.urb* %68, i32 0, i32 2
  %70 = load i32****, i32***** %69, align 8
  %71 = bitcast i32**** %70 to i32***
  %72 = load %struct.urb*, %struct.urb** %4, align 8
  %73 = getelementptr inbounds %struct.urb, %struct.urb* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = call i32 @memcpy(i8* %67, i32*** %71, i32 %74)
  br label %76

76:                                               ; preds = %66, %50
  %77 = load i8*, i8** %6, align 8
  %78 = bitcast i8* %77 to i32****
  %79 = load %struct.urb*, %struct.urb** %4, align 8
  %80 = getelementptr inbounds %struct.urb, %struct.urb* %79, i32 0, i32 2
  store i32**** %78, i32***** %80, align 8
  %81 = load i32, i32* @URB_ALIGNED_TEMP_BUFFER, align 4
  %82 = load %struct.urb*, %struct.urb** %4, align 8
  %83 = getelementptr inbounds %struct.urb, %struct.urb* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = or i32 %84, %81
  store i32 %85, i32* %83, align 4
  store i32 0, i32* %3, align 4
  br label %86

86:                                               ; preds = %76, %47, %32
  %87 = load i32, i32* %3, align 4
  ret i32 %87
}

declare dso_local i32 @dma_get_cache_alignment(...) #1

declare dso_local i8* @kmalloc(i64, i32) #1

declare dso_local i32 @memcpy(i8*, i32***, i32) #1

declare dso_local i8* @PTR_ALIGN(i8*, i32) #1

declare dso_local i64 @usb_urb_dir_out(%struct.urb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
