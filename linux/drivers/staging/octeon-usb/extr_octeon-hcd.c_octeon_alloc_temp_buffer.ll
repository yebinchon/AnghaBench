; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/octeon-usb/extr_octeon-hcd.c_octeon_alloc_temp_buffer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/octeon-usb/extr_octeon-hcd.c_octeon_alloc_temp_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.urb = type { i32, i32, i32, i64, i64 }
%struct.octeon_temp_buffer = type { i32, i32 }

@URB_NO_TRANSFER_DMA_MAP = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@URB_ALIGNED_TEMP_BUFFER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.urb*, i32)* @octeon_alloc_temp_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @octeon_alloc_temp_buffer(%struct.urb* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.urb*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.octeon_temp_buffer*, align 8
  store %struct.urb* %0, %struct.urb** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.urb*, %struct.urb** %4, align 8
  %8 = getelementptr inbounds %struct.urb, %struct.urb* %7, i32 0, i32 4
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %30, label %11

11:                                               ; preds = %2
  %12 = load %struct.urb*, %struct.urb** %4, align 8
  %13 = getelementptr inbounds %struct.urb, %struct.urb* %12, i32 0, i32 3
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %30, label %16

16:                                               ; preds = %11
  %17 = load %struct.urb*, %struct.urb** %4, align 8
  %18 = getelementptr inbounds %struct.urb, %struct.urb* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @URB_NO_TRANSFER_DMA_MAP, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %30, label %23

23:                                               ; preds = %16
  %24 = load %struct.urb*, %struct.urb** %4, align 8
  %25 = getelementptr inbounds %struct.urb, %struct.urb* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = sext i32 %26 to i64
  %28 = urem i64 %27, 4
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %23, %16, %11, %2
  store i32 0, i32* %3, align 4
  br label %75

31:                                               ; preds = %23
  %32 = load %struct.urb*, %struct.urb** %4, align 8
  %33 = getelementptr inbounds %struct.urb, %struct.urb* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = call i64 @ALIGN(i32 %34, i32 4)
  %36 = add i64 %35, 8
  %37 = load i32, i32* %5, align 4
  %38 = call %struct.octeon_temp_buffer* @kmalloc(i64 %36, i32 %37)
  store %struct.octeon_temp_buffer* %38, %struct.octeon_temp_buffer** %6, align 8
  %39 = load %struct.octeon_temp_buffer*, %struct.octeon_temp_buffer** %6, align 8
  %40 = icmp ne %struct.octeon_temp_buffer* %39, null
  br i1 %40, label %44, label %41

41:                                               ; preds = %31
  %42 = load i32, i32* @ENOMEM, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %3, align 4
  br label %75

44:                                               ; preds = %31
  %45 = load %struct.urb*, %struct.urb** %4, align 8
  %46 = getelementptr inbounds %struct.urb, %struct.urb* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.octeon_temp_buffer*, %struct.octeon_temp_buffer** %6, align 8
  %49 = getelementptr inbounds %struct.octeon_temp_buffer, %struct.octeon_temp_buffer* %48, i32 0, i32 1
  store i32 %47, i32* %49, align 4
  %50 = load %struct.urb*, %struct.urb** %4, align 8
  %51 = call i64 @usb_urb_dir_out(%struct.urb* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %64

53:                                               ; preds = %44
  %54 = load %struct.octeon_temp_buffer*, %struct.octeon_temp_buffer** %6, align 8
  %55 = getelementptr inbounds %struct.octeon_temp_buffer, %struct.octeon_temp_buffer* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.urb*, %struct.urb** %4, align 8
  %58 = getelementptr inbounds %struct.urb, %struct.urb* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 8
  %60 = load %struct.urb*, %struct.urb** %4, align 8
  %61 = getelementptr inbounds %struct.urb, %struct.urb* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @memcpy(i32 %56, i32 %59, i32 %62)
  br label %64

64:                                               ; preds = %53, %44
  %65 = load %struct.octeon_temp_buffer*, %struct.octeon_temp_buffer** %6, align 8
  %66 = getelementptr inbounds %struct.octeon_temp_buffer, %struct.octeon_temp_buffer* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.urb*, %struct.urb** %4, align 8
  %69 = getelementptr inbounds %struct.urb, %struct.urb* %68, i32 0, i32 2
  store i32 %67, i32* %69, align 8
  %70 = load i32, i32* @URB_ALIGNED_TEMP_BUFFER, align 4
  %71 = load %struct.urb*, %struct.urb** %4, align 8
  %72 = getelementptr inbounds %struct.urb, %struct.urb* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = or i32 %73, %70
  store i32 %74, i32* %72, align 8
  store i32 0, i32* %3, align 4
  br label %75

75:                                               ; preds = %64, %41, %30
  %76 = load i32, i32* %3, align 4
  ret i32 %76
}

declare dso_local %struct.octeon_temp_buffer* @kmalloc(i64, i32) #1

declare dso_local i64 @ALIGN(i32, i32) #1

declare dso_local i64 @usb_urb_dir_out(%struct.urb*) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
