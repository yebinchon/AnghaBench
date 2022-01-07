; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/hantro/extr_hantro_vp8.c_hantro_vp8_dec_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/hantro/extr_hantro_vp8.c_hantro_vp8_dec_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hantro_ctx = type { %struct.TYPE_4__, %struct.TYPE_3__, %struct.hantro_dev* }
%struct.TYPE_4__ = type { %struct.hantro_aux_buf, %struct.hantro_aux_buf }
%struct.hantro_aux_buf = type { i64, i32, i8* }
%struct.TYPE_3__ = type { i32, i32 }
%struct.hantro_dev = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hantro_vp8_dec_init(%struct.hantro_ctx* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hantro_ctx*, align 8
  %4 = alloca %struct.hantro_dev*, align 8
  %5 = alloca %struct.hantro_aux_buf*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.hantro_ctx* %0, %struct.hantro_ctx** %3, align 8
  %10 = load %struct.hantro_ctx*, %struct.hantro_ctx** %3, align 8
  %11 = getelementptr inbounds %struct.hantro_ctx, %struct.hantro_ctx* %10, i32 0, i32 2
  %12 = load %struct.hantro_dev*, %struct.hantro_dev** %11, align 8
  store %struct.hantro_dev* %12, %struct.hantro_dev** %4, align 8
  %13 = load %struct.hantro_ctx*, %struct.hantro_ctx** %3, align 8
  %14 = getelementptr inbounds %struct.hantro_ctx, %struct.hantro_ctx* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @DIV_ROUND_UP(i32 %16, i32 16)
  store i32 %17, i32* %6, align 4
  %18 = load %struct.hantro_ctx*, %struct.hantro_ctx** %3, align 8
  %19 = getelementptr inbounds %struct.hantro_ctx, %struct.hantro_ctx* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @DIV_ROUND_UP(i32 %21, i32 16)
  store i32 %22, i32* %7, align 4
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* %7, align 4
  %25 = mul i32 %23, %24
  %26 = call i32 @DIV_ROUND_UP(i32 %25, i32 4)
  %27 = call i64 @round_up(i32 %26, i32 64)
  store i64 %27, i64* %8, align 8
  %28 = load %struct.hantro_ctx*, %struct.hantro_ctx** %3, align 8
  %29 = getelementptr inbounds %struct.hantro_ctx, %struct.hantro_ctx* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  store %struct.hantro_aux_buf* %30, %struct.hantro_aux_buf** %5, align 8
  %31 = load i64, i64* %8, align 8
  %32 = load %struct.hantro_aux_buf*, %struct.hantro_aux_buf** %5, align 8
  %33 = getelementptr inbounds %struct.hantro_aux_buf, %struct.hantro_aux_buf* %32, i32 0, i32 0
  store i64 %31, i64* %33, align 8
  %34 = load %struct.hantro_dev*, %struct.hantro_dev** %4, align 8
  %35 = getelementptr inbounds %struct.hantro_dev, %struct.hantro_dev* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.hantro_aux_buf*, %struct.hantro_aux_buf** %5, align 8
  %38 = getelementptr inbounds %struct.hantro_aux_buf, %struct.hantro_aux_buf* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.hantro_aux_buf*, %struct.hantro_aux_buf** %5, align 8
  %41 = getelementptr inbounds %struct.hantro_aux_buf, %struct.hantro_aux_buf* %40, i32 0, i32 1
  %42 = load i32, i32* @GFP_KERNEL, align 4
  %43 = call i8* @dma_alloc_coherent(i32 %36, i64 %39, i32* %41, i32 %42)
  %44 = load %struct.hantro_aux_buf*, %struct.hantro_aux_buf** %5, align 8
  %45 = getelementptr inbounds %struct.hantro_aux_buf, %struct.hantro_aux_buf* %44, i32 0, i32 2
  store i8* %43, i8** %45, align 8
  %46 = load %struct.hantro_aux_buf*, %struct.hantro_aux_buf** %5, align 8
  %47 = getelementptr inbounds %struct.hantro_aux_buf, %struct.hantro_aux_buf* %46, i32 0, i32 2
  %48 = load i8*, i8** %47, align 8
  %49 = icmp ne i8* %48, null
  br i1 %49, label %53, label %50

50:                                               ; preds = %1
  %51 = load i32, i32* @ENOMEM, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %2, align 4
  br label %100

53:                                               ; preds = %1
  %54 = load %struct.hantro_ctx*, %struct.hantro_ctx** %3, align 8
  %55 = getelementptr inbounds %struct.hantro_ctx, %struct.hantro_ctx* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 1
  store %struct.hantro_aux_buf* %56, %struct.hantro_aux_buf** %5, align 8
  %57 = load %struct.hantro_aux_buf*, %struct.hantro_aux_buf** %5, align 8
  %58 = getelementptr inbounds %struct.hantro_aux_buf, %struct.hantro_aux_buf* %57, i32 0, i32 0
  store i64 4, i64* %58, align 8
  %59 = load %struct.hantro_dev*, %struct.hantro_dev** %4, align 8
  %60 = getelementptr inbounds %struct.hantro_dev, %struct.hantro_dev* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.hantro_aux_buf*, %struct.hantro_aux_buf** %5, align 8
  %63 = getelementptr inbounds %struct.hantro_aux_buf, %struct.hantro_aux_buf* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load %struct.hantro_aux_buf*, %struct.hantro_aux_buf** %5, align 8
  %66 = getelementptr inbounds %struct.hantro_aux_buf, %struct.hantro_aux_buf* %65, i32 0, i32 1
  %67 = load i32, i32* @GFP_KERNEL, align 4
  %68 = call i8* @dma_alloc_coherent(i32 %61, i64 %64, i32* %66, i32 %67)
  %69 = load %struct.hantro_aux_buf*, %struct.hantro_aux_buf** %5, align 8
  %70 = getelementptr inbounds %struct.hantro_aux_buf, %struct.hantro_aux_buf* %69, i32 0, i32 2
  store i8* %68, i8** %70, align 8
  %71 = load %struct.hantro_aux_buf*, %struct.hantro_aux_buf** %5, align 8
  %72 = getelementptr inbounds %struct.hantro_aux_buf, %struct.hantro_aux_buf* %71, i32 0, i32 2
  %73 = load i8*, i8** %72, align 8
  %74 = icmp ne i8* %73, null
  br i1 %74, label %78, label %75

75:                                               ; preds = %53
  %76 = load i32, i32* @ENOMEM, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %9, align 4
  br label %79

78:                                               ; preds = %53
  store i32 0, i32* %2, align 4
  br label %100

79:                                               ; preds = %75
  %80 = load %struct.hantro_dev*, %struct.hantro_dev** %4, align 8
  %81 = getelementptr inbounds %struct.hantro_dev, %struct.hantro_dev* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.hantro_ctx*, %struct.hantro_ctx** %3, align 8
  %84 = getelementptr inbounds %struct.hantro_ctx, %struct.hantro_ctx* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.hantro_aux_buf, %struct.hantro_aux_buf* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = load %struct.hantro_ctx*, %struct.hantro_ctx** %3, align 8
  %89 = getelementptr inbounds %struct.hantro_ctx, %struct.hantro_ctx* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.hantro_aux_buf, %struct.hantro_aux_buf* %90, i32 0, i32 2
  %92 = load i8*, i8** %91, align 8
  %93 = load %struct.hantro_ctx*, %struct.hantro_ctx** %3, align 8
  %94 = getelementptr inbounds %struct.hantro_ctx, %struct.hantro_ctx* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.hantro_aux_buf, %struct.hantro_aux_buf* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 8
  %98 = call i32 @dma_free_coherent(i32 %82, i64 %87, i8* %92, i32 %97)
  %99 = load i32, i32* %9, align 4
  store i32 %99, i32* %2, align 4
  br label %100

100:                                              ; preds = %79, %78, %50
  %101 = load i32, i32* %2, align 4
  ret i32 %101
}

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

declare dso_local i64 @round_up(i32, i32) #1

declare dso_local i8* @dma_alloc_coherent(i32, i64, i32*, i32) #1

declare dso_local i32 @dma_free_coherent(i32, i64, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
