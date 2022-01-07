; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/cio/extr_qdio_setup.c_qdio_alloc_buffers.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/cio/extr_qdio_setup.c_qdio_alloc_buffers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qdio_buffer = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@QBUFF_PER_PAGE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qdio_alloc_buffers(%struct.qdio_buffer** %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.qdio_buffer**, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.qdio_buffer** %0, %struct.qdio_buffer*** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %7

7:                                                ; preds = %33, %2
  %8 = load i32, i32* %6, align 4
  %9 = load i32, i32* %5, align 4
  %10 = icmp ult i32 %8, %9
  br i1 %10, label %11, label %37

11:                                               ; preds = %7
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call i64 @get_zeroed_page(i32 %12)
  %14 = inttoptr i64 %13 to i8*
  %15 = bitcast i8* %14 to %struct.qdio_buffer*
  %16 = load %struct.qdio_buffer**, %struct.qdio_buffer*** %4, align 8
  %17 = load i32, i32* %6, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.qdio_buffer*, %struct.qdio_buffer** %16, i64 %18
  store %struct.qdio_buffer* %15, %struct.qdio_buffer** %19, align 8
  %20 = load %struct.qdio_buffer**, %struct.qdio_buffer*** %4, align 8
  %21 = load i32, i32* %6, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.qdio_buffer*, %struct.qdio_buffer** %20, i64 %22
  %24 = load %struct.qdio_buffer*, %struct.qdio_buffer** %23, align 8
  %25 = icmp ne %struct.qdio_buffer* %24, null
  br i1 %25, label %32, label %26

26:                                               ; preds = %11
  %27 = load %struct.qdio_buffer**, %struct.qdio_buffer*** %4, align 8
  %28 = load i32, i32* %5, align 4
  %29 = call i32 @qdio_free_buffers(%struct.qdio_buffer** %27, i32 %28)
  %30 = load i32, i32* @ENOMEM, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %3, align 4
  br label %64

32:                                               ; preds = %11
  br label %33

33:                                               ; preds = %32
  %34 = load i32, i32* @QBUFF_PER_PAGE, align 4
  %35 = load i32, i32* %6, align 4
  %36 = add nsw i32 %35, %34
  store i32 %36, i32* %6, align 4
  br label %7

37:                                               ; preds = %7
  store i32 0, i32* %6, align 4
  br label %38

38:                                               ; preds = %60, %37
  %39 = load i32, i32* %6, align 4
  %40 = load i32, i32* %5, align 4
  %41 = icmp ult i32 %39, %40
  br i1 %41, label %42, label %63

42:                                               ; preds = %38
  %43 = load i32, i32* %6, align 4
  %44 = load i32, i32* @QBUFF_PER_PAGE, align 4
  %45 = srem i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %59

47:                                               ; preds = %42
  %48 = load %struct.qdio_buffer**, %struct.qdio_buffer*** %4, align 8
  %49 = load i32, i32* %6, align 4
  %50 = sub nsw i32 %49, 1
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.qdio_buffer*, %struct.qdio_buffer** %48, i64 %51
  %53 = load %struct.qdio_buffer*, %struct.qdio_buffer** %52, align 8
  %54 = getelementptr inbounds %struct.qdio_buffer, %struct.qdio_buffer* %53, i64 1
  %55 = load %struct.qdio_buffer**, %struct.qdio_buffer*** %4, align 8
  %56 = load i32, i32* %6, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.qdio_buffer*, %struct.qdio_buffer** %55, i64 %57
  store %struct.qdio_buffer* %54, %struct.qdio_buffer** %58, align 8
  br label %59

59:                                               ; preds = %47, %42
  br label %60

60:                                               ; preds = %59
  %61 = load i32, i32* %6, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %6, align 4
  br label %38

63:                                               ; preds = %38
  store i32 0, i32* %3, align 4
  br label %64

64:                                               ; preds = %63, %26
  %65 = load i32, i32* %3, align 4
  ret i32 %65
}

declare dso_local i64 @get_zeroed_page(i32) #1

declare dso_local i32 @qdio_free_buffers(%struct.qdio_buffer**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
