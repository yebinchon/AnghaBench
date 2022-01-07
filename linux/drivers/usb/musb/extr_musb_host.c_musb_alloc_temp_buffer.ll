; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/musb/extr_musb_host.c_musb_alloc_temp_buffer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/musb/extr_musb_host.c_musb_alloc_temp_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.urb = type { i64, i32, i64, i64, i64 }
%struct.musb_temp_buffer = type { i64, i64, i8* }

@MUSB_USB_DMA_ALIGN = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@URB_ALIGNED_TEMP_BUFFER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.urb*, i32)* @musb_alloc_temp_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @musb_alloc_temp_buffer(%struct.urb* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.urb*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.musb_temp_buffer*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  store %struct.urb* %0, %struct.urb** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.urb*, %struct.urb** %4, align 8
  %11 = getelementptr inbounds %struct.urb, %struct.urb* %10, i32 0, i32 4
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %33, label %14

14:                                               ; preds = %2
  %15 = load %struct.urb*, %struct.urb** %4, align 8
  %16 = getelementptr inbounds %struct.urb, %struct.urb* %15, i32 0, i32 3
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %33, label %19

19:                                               ; preds = %14
  %20 = load %struct.urb*, %struct.urb** %4, align 8
  %21 = getelementptr inbounds %struct.urb, %struct.urb* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %33, label %24

24:                                               ; preds = %19
  %25 = load %struct.urb*, %struct.urb** %4, align 8
  %26 = getelementptr inbounds %struct.urb, %struct.urb* %25, i32 0, i32 2
  %27 = load i64, i64* %26, align 8
  %28 = load i32, i32* @MUSB_USB_DMA_ALIGN, align 4
  %29 = sub nsw i32 %28, 1
  %30 = sext i32 %29 to i64
  %31 = and i64 %27, %30
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %24, %19, %14, %2
  store i32 0, i32* %3, align 4
  br label %98

34:                                               ; preds = %24
  %35 = load %struct.urb*, %struct.urb** %4, align 8
  %36 = call i64 @usb_urb_dir_in(%struct.urb* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %34
  %39 = load i32, i32* @DMA_FROM_DEVICE, align 4
  br label %42

40:                                               ; preds = %34
  %41 = load i32, i32* @DMA_TO_DEVICE, align 4
  br label %42

42:                                               ; preds = %40, %38
  %43 = phi i32 [ %39, %38 ], [ %41, %40 ]
  store i32 %43, i32* %6, align 4
  %44 = load %struct.urb*, %struct.urb** %4, align 8
  %45 = getelementptr inbounds %struct.urb, %struct.urb* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = add i64 %46, 24
  %48 = load i32, i32* @MUSB_USB_DMA_ALIGN, align 4
  %49 = sext i32 %48 to i64
  %50 = add i64 %47, %49
  %51 = sub i64 %50, 1
  store i64 %51, i64* %9, align 8
  %52 = load i64, i64* %9, align 8
  %53 = load i32, i32* %5, align 4
  %54 = call i8* @kmalloc(i64 %52, i32 %53)
  store i8* %54, i8** %8, align 8
  %55 = load i8*, i8** %8, align 8
  %56 = icmp ne i8* %55, null
  br i1 %56, label %60, label %57

57:                                               ; preds = %42
  %58 = load i32, i32* @ENOMEM, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %3, align 4
  br label %98

60:                                               ; preds = %42
  %61 = load i8*, i8** %8, align 8
  %62 = load i32, i32* @MUSB_USB_DMA_ALIGN, align 4
  %63 = call %struct.musb_temp_buffer* @PTR_ALIGN(i8* %61, i32 %62)
  store %struct.musb_temp_buffer* %63, %struct.musb_temp_buffer** %7, align 8
  %64 = load i8*, i8** %8, align 8
  %65 = load %struct.musb_temp_buffer*, %struct.musb_temp_buffer** %7, align 8
  %66 = getelementptr inbounds %struct.musb_temp_buffer, %struct.musb_temp_buffer* %65, i32 0, i32 2
  store i8* %64, i8** %66, align 8
  %67 = load %struct.urb*, %struct.urb** %4, align 8
  %68 = getelementptr inbounds %struct.urb, %struct.urb* %67, i32 0, i32 2
  %69 = load i64, i64* %68, align 8
  %70 = load %struct.musb_temp_buffer*, %struct.musb_temp_buffer** %7, align 8
  %71 = getelementptr inbounds %struct.musb_temp_buffer, %struct.musb_temp_buffer* %70, i32 0, i32 1
  store i64 %69, i64* %71, align 8
  %72 = load i32, i32* %6, align 4
  %73 = load i32, i32* @DMA_TO_DEVICE, align 4
  %74 = icmp eq i32 %72, %73
  br i1 %74, label %75, label %87

75:                                               ; preds = %60
  %76 = load %struct.musb_temp_buffer*, %struct.musb_temp_buffer** %7, align 8
  %77 = getelementptr inbounds %struct.musb_temp_buffer, %struct.musb_temp_buffer* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load %struct.urb*, %struct.urb** %4, align 8
  %80 = getelementptr inbounds %struct.urb, %struct.urb* %79, i32 0, i32 2
  %81 = load i64, i64* %80, align 8
  %82 = load %struct.urb*, %struct.urb** %4, align 8
  %83 = getelementptr inbounds %struct.urb, %struct.urb* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = trunc i64 %84 to i32
  %86 = call i32 @memcpy(i64 %78, i64 %81, i32 %85)
  br label %87

87:                                               ; preds = %75, %60
  %88 = load %struct.musb_temp_buffer*, %struct.musb_temp_buffer** %7, align 8
  %89 = getelementptr inbounds %struct.musb_temp_buffer, %struct.musb_temp_buffer* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = load %struct.urb*, %struct.urb** %4, align 8
  %92 = getelementptr inbounds %struct.urb, %struct.urb* %91, i32 0, i32 2
  store i64 %90, i64* %92, align 8
  %93 = load i32, i32* @URB_ALIGNED_TEMP_BUFFER, align 4
  %94 = load %struct.urb*, %struct.urb** %4, align 8
  %95 = getelementptr inbounds %struct.urb, %struct.urb* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 8
  %97 = or i32 %96, %93
  store i32 %97, i32* %95, align 8
  store i32 0, i32* %3, align 4
  br label %98

98:                                               ; preds = %87, %57, %33
  %99 = load i32, i32* %3, align 4
  ret i32 %99
}

declare dso_local i64 @usb_urb_dir_in(%struct.urb*) #1

declare dso_local i8* @kmalloc(i64, i32) #1

declare dso_local %struct.musb_temp_buffer* @PTR_ALIGN(i8*, i32) #1

declare dso_local i32 @memcpy(i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
