; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/extr_goldfish.c_goldfish_tty_rw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/extr_goldfish.c_goldfish_tty_rw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.goldfish_tty = type { i64, i32 }

@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@PAGE_MASK = common dso_local global i64 0, align 8
@PAGE_SIZE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [25 x i8] c"tty: DMA mapping error.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.goldfish_tty*, i64, i32, i32)* @goldfish_tty_rw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @goldfish_tty_rw(%struct.goldfish_tty* %0, i64 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.goldfish_tty*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store %struct.goldfish_tty* %0, %struct.goldfish_tty** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %15 = load i32, i32* %8, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %4
  %18 = load i32, i32* @DMA_TO_DEVICE, align 4
  br label %21

19:                                               ; preds = %4
  %20 = load i32, i32* @DMA_FROM_DEVICE, align 4
  br label %21

21:                                               ; preds = %19, %17
  %22 = phi i32 [ %18, %17 ], [ %20, %19 ]
  store i32 %22, i32* %10, align 4
  %23 = load %struct.goldfish_tty*, %struct.goldfish_tty** %5, align 8
  %24 = getelementptr inbounds %struct.goldfish_tty, %struct.goldfish_tty* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp sgt i64 %25, 0
  br i1 %26, label %27, label %91

27:                                               ; preds = %21
  %28 = load i64, i64* %6, align 8
  %29 = load i32, i32* %7, align 4
  %30 = zext i32 %29 to i64
  %31 = add i64 %28, %30
  store i64 %31, i64* %11, align 8
  br label %32

32:                                               ; preds = %73, %27
  %33 = load i64, i64* %6, align 8
  %34 = load i64, i64* %11, align 8
  %35 = icmp ult i64 %33, %34
  br i1 %35, label %36, label %90

36:                                               ; preds = %32
  %37 = load i64, i64* %6, align 8
  %38 = load i64, i64* @PAGE_MASK, align 8
  %39 = and i64 %37, %38
  %40 = load i64, i64* @PAGE_SIZE, align 8
  %41 = add i64 %39, %40
  store i64 %41, i64* %12, align 8
  %42 = load i64, i64* %12, align 8
  %43 = load i64, i64* %11, align 8
  %44 = icmp ult i64 %42, %43
  br i1 %44, label %45, label %47

45:                                               ; preds = %36
  %46 = load i64, i64* %12, align 8
  br label %49

47:                                               ; preds = %36
  %48 = load i64, i64* %11, align 8
  br label %49

49:                                               ; preds = %47, %45
  %50 = phi i64 [ %46, %45 ], [ %48, %47 ]
  store i64 %50, i64* %13, align 8
  %51 = load i64, i64* %13, align 8
  %52 = load i64, i64* %6, align 8
  %53 = sub i64 %51, %52
  store i64 %53, i64* %14, align 8
  %54 = load %struct.goldfish_tty*, %struct.goldfish_tty** %5, align 8
  %55 = getelementptr inbounds %struct.goldfish_tty, %struct.goldfish_tty* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = load i64, i64* %6, align 8
  %58 = inttoptr i64 %57 to i8*
  %59 = load i64, i64* %14, align 8
  %60 = load i32, i32* %10, align 4
  %61 = call i64 @dma_map_single(i32 %56, i8* %58, i64 %59, i32 %60)
  store i64 %61, i64* %9, align 8
  %62 = load %struct.goldfish_tty*, %struct.goldfish_tty** %5, align 8
  %63 = getelementptr inbounds %struct.goldfish_tty, %struct.goldfish_tty* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 8
  %65 = load i64, i64* %9, align 8
  %66 = call i64 @dma_mapping_error(i32 %64, i64 %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %73

68:                                               ; preds = %49
  %69 = load %struct.goldfish_tty*, %struct.goldfish_tty** %5, align 8
  %70 = getelementptr inbounds %struct.goldfish_tty, %struct.goldfish_tty* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 8
  %72 = call i32 @dev_err(i32 %71, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  br label %97

73:                                               ; preds = %49
  %74 = load %struct.goldfish_tty*, %struct.goldfish_tty** %5, align 8
  %75 = load i64, i64* %9, align 8
  %76 = load i64, i64* %14, align 8
  %77 = trunc i64 %76 to i32
  %78 = load i32, i32* %8, align 4
  %79 = call i32 @do_rw_io(%struct.goldfish_tty* %74, i64 %75, i32 %77, i32 %78)
  %80 = load %struct.goldfish_tty*, %struct.goldfish_tty** %5, align 8
  %81 = getelementptr inbounds %struct.goldfish_tty, %struct.goldfish_tty* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 8
  %83 = load i64, i64* %9, align 8
  %84 = load i64, i64* %14, align 8
  %85 = load i32, i32* %10, align 4
  %86 = call i32 @dma_unmap_single(i32 %82, i64 %83, i64 %84, i32 %85)
  %87 = load i64, i64* %14, align 8
  %88 = load i64, i64* %6, align 8
  %89 = add i64 %88, %87
  store i64 %89, i64* %6, align 8
  br label %32

90:                                               ; preds = %32
  br label %97

91:                                               ; preds = %21
  %92 = load %struct.goldfish_tty*, %struct.goldfish_tty** %5, align 8
  %93 = load i64, i64* %6, align 8
  %94 = load i32, i32* %7, align 4
  %95 = load i32, i32* %8, align 4
  %96 = call i32 @do_rw_io(%struct.goldfish_tty* %92, i64 %93, i32 %94, i32 %95)
  br label %97

97:                                               ; preds = %68, %91, %90
  ret void
}

declare dso_local i64 @dma_map_single(i32, i8*, i64, i32) #1

declare dso_local i64 @dma_mapping_error(i32, i64) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @do_rw_io(%struct.goldfish_tty*, i64, i32, i32) #1

declare dso_local i32 @dma_unmap_single(i32, i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
