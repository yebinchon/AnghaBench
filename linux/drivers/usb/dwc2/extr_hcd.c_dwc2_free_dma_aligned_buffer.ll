; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/dwc2/extr_hcd.c_dwc2_free_dma_aligned_buffer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/dwc2/extr_hcd.c_dwc2_free_dma_aligned_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.urb = type { i32, i64, i64, i8*, i32 }

@URB_ALIGNED_TEMP_BUFFER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.urb*)* @dwc2_free_dma_aligned_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dwc2_free_dma_aligned_buffer(%struct.urb* %0) #0 {
  %2 = alloca %struct.urb*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store %struct.urb* %0, %struct.urb** %2, align 8
  %5 = load %struct.urb*, %struct.urb** %2, align 8
  %6 = getelementptr inbounds %struct.urb, %struct.urb* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = load i32, i32* @URB_ALIGNED_TEMP_BUFFER, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  br label %62

12:                                               ; preds = %1
  %13 = bitcast i8** %3 to i8*
  %14 = load %struct.urb*, %struct.urb** %2, align 8
  %15 = getelementptr inbounds %struct.urb, %struct.urb* %14, i32 0, i32 3
  %16 = load i8*, i8** %15, align 8
  %17 = load %struct.urb*, %struct.urb** %2, align 8
  %18 = getelementptr inbounds %struct.urb, %struct.urb* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = getelementptr i8, i8* %16, i64 %19
  %21 = call i32 (...) @dma_get_cache_alignment()
  %22 = call i8* @PTR_ALIGN(i8* %20, i32 %21)
  %23 = call i32 @memcpy(i8* %13, i8* %22, i64 8)
  %24 = load %struct.urb*, %struct.urb** %2, align 8
  %25 = call i64 @usb_urb_dir_in(%struct.urb* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %48

27:                                               ; preds = %12
  %28 = load %struct.urb*, %struct.urb** %2, align 8
  %29 = getelementptr inbounds %struct.urb, %struct.urb* %28, i32 0, i32 4
  %30 = load i32, i32* %29, align 8
  %31 = call i64 @usb_pipeisoc(i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %27
  %34 = load %struct.urb*, %struct.urb** %2, align 8
  %35 = getelementptr inbounds %struct.urb, %struct.urb* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  store i64 %36, i64* %4, align 8
  br label %41

37:                                               ; preds = %27
  %38 = load %struct.urb*, %struct.urb** %2, align 8
  %39 = getelementptr inbounds %struct.urb, %struct.urb* %38, i32 0, i32 2
  %40 = load i64, i64* %39, align 8
  store i64 %40, i64* %4, align 8
  br label %41

41:                                               ; preds = %37, %33
  %42 = load i8*, i8** %3, align 8
  %43 = load %struct.urb*, %struct.urb** %2, align 8
  %44 = getelementptr inbounds %struct.urb, %struct.urb* %43, i32 0, i32 3
  %45 = load i8*, i8** %44, align 8
  %46 = load i64, i64* %4, align 8
  %47 = call i32 @memcpy(i8* %42, i8* %45, i64 %46)
  br label %48

48:                                               ; preds = %41, %12
  %49 = load %struct.urb*, %struct.urb** %2, align 8
  %50 = getelementptr inbounds %struct.urb, %struct.urb* %49, i32 0, i32 3
  %51 = load i8*, i8** %50, align 8
  %52 = call i32 @kfree(i8* %51)
  %53 = load i8*, i8** %3, align 8
  %54 = load %struct.urb*, %struct.urb** %2, align 8
  %55 = getelementptr inbounds %struct.urb, %struct.urb* %54, i32 0, i32 3
  store i8* %53, i8** %55, align 8
  %56 = load i32, i32* @URB_ALIGNED_TEMP_BUFFER, align 4
  %57 = xor i32 %56, -1
  %58 = load %struct.urb*, %struct.urb** %2, align 8
  %59 = getelementptr inbounds %struct.urb, %struct.urb* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = and i32 %60, %57
  store i32 %61, i32* %59, align 8
  br label %62

62:                                               ; preds = %48, %11
  ret void
}

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i8* @PTR_ALIGN(i8*, i32) #1

declare dso_local i32 @dma_get_cache_alignment(...) #1

declare dso_local i64 @usb_urb_dir_in(%struct.urb*) #1

declare dso_local i64 @usb_pipeisoc(i32) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
