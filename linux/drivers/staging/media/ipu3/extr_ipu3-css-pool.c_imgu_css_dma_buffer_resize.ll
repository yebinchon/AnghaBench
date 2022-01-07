; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/ipu3/extr_ipu3-css-pool.c_imgu_css_dma_buffer_resize.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/ipu3/extr_ipu3-css-pool.c_imgu_css_dma_buffer_resize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.imgu_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.imgu_css_map = type { i64, i64 }

@.str = private unnamed_addr constant [32 x i8] c"dma buf resized from %zu to %zu\00", align 1
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @imgu_css_dma_buffer_resize(%struct.imgu_device* %0, %struct.imgu_css_map* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.imgu_device*, align 8
  %6 = alloca %struct.imgu_css_map*, align 8
  %7 = alloca i64, align 8
  store %struct.imgu_device* %0, %struct.imgu_device** %5, align 8
  store %struct.imgu_css_map* %1, %struct.imgu_css_map** %6, align 8
  store i64 %2, i64* %7, align 8
  %8 = load %struct.imgu_css_map*, %struct.imgu_css_map** %6, align 8
  %9 = getelementptr inbounds %struct.imgu_css_map, %struct.imgu_css_map* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* %7, align 8
  %12 = icmp ult i64 %10, %11
  br i1 %12, label %13, label %40

13:                                               ; preds = %3
  %14 = load %struct.imgu_css_map*, %struct.imgu_css_map** %6, align 8
  %15 = getelementptr inbounds %struct.imgu_css_map, %struct.imgu_css_map* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %40

18:                                               ; preds = %13
  %19 = load %struct.imgu_device*, %struct.imgu_device** %5, align 8
  %20 = getelementptr inbounds %struct.imgu_device, %struct.imgu_device* %19, i32 0, i32 0
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load %struct.imgu_css_map*, %struct.imgu_css_map** %6, align 8
  %24 = getelementptr inbounds %struct.imgu_css_map, %struct.imgu_css_map* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* %7, align 8
  %27 = call i32 @dev_warn(i32* %22, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i64 %25, i64 %26)
  %28 = load %struct.imgu_device*, %struct.imgu_device** %5, align 8
  %29 = load %struct.imgu_css_map*, %struct.imgu_css_map** %6, align 8
  %30 = call i32 @imgu_dmamap_free(%struct.imgu_device* %28, %struct.imgu_css_map* %29)
  %31 = load %struct.imgu_device*, %struct.imgu_device** %5, align 8
  %32 = load %struct.imgu_css_map*, %struct.imgu_css_map** %6, align 8
  %33 = load i64, i64* %7, align 8
  %34 = call i32 @imgu_dmamap_alloc(%struct.imgu_device* %31, %struct.imgu_css_map* %32, i64 %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %39, label %36

36:                                               ; preds = %18
  %37 = load i32, i32* @ENOMEM, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %4, align 4
  br label %41

39:                                               ; preds = %18
  br label %40

40:                                               ; preds = %39, %13, %3
  store i32 0, i32* %4, align 4
  br label %41

41:                                               ; preds = %40, %36
  %42 = load i32, i32* %4, align 4
  ret i32 %42
}

declare dso_local i32 @dev_warn(i32*, i8*, i64, i64) #1

declare dso_local i32 @imgu_dmamap_free(%struct.imgu_device*, %struct.imgu_css_map*) #1

declare dso_local i32 @imgu_dmamap_alloc(%struct.imgu_device*, %struct.imgu_css_map*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
