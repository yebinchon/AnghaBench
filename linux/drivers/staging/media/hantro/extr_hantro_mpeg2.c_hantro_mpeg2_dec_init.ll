; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/hantro/extr_hantro_mpeg2.c_hantro_mpeg2_dec_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/hantro/extr_hantro_mpeg2.c_hantro_mpeg2_dec_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hantro_ctx = type { %struct.TYPE_4__, %struct.hantro_dev* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32 }
%struct.hantro_dev = type { i32 }

@zigzag = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hantro_mpeg2_dec_init(%struct.hantro_ctx* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hantro_ctx*, align 8
  %4 = alloca %struct.hantro_dev*, align 8
  store %struct.hantro_ctx* %0, %struct.hantro_ctx** %3, align 8
  %5 = load %struct.hantro_ctx*, %struct.hantro_ctx** %3, align 8
  %6 = getelementptr inbounds %struct.hantro_ctx, %struct.hantro_ctx* %5, i32 0, i32 1
  %7 = load %struct.hantro_dev*, %struct.hantro_dev** %6, align 8
  store %struct.hantro_dev* %7, %struct.hantro_dev** %4, align 8
  %8 = load i32, i32* @zigzag, align 4
  %9 = call i32 @ARRAY_SIZE(i32 %8)
  %10 = mul nsw i32 %9, 4
  %11 = load %struct.hantro_ctx*, %struct.hantro_ctx** %3, align 8
  %12 = getelementptr inbounds %struct.hantro_ctx, %struct.hantro_ctx* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  store i32 %10, i32* %14, align 8
  %15 = load %struct.hantro_dev*, %struct.hantro_dev** %4, align 8
  %16 = getelementptr inbounds %struct.hantro_dev, %struct.hantro_dev* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.hantro_ctx*, %struct.hantro_ctx** %3, align 8
  %19 = getelementptr inbounds %struct.hantro_ctx, %struct.hantro_ctx* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.hantro_ctx*, %struct.hantro_ctx** %3, align 8
  %24 = getelementptr inbounds %struct.hantro_ctx, %struct.hantro_ctx* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 2
  %27 = load i32, i32* @GFP_KERNEL, align 4
  %28 = call i32 @dma_alloc_coherent(i32 %17, i32 %22, i32* %26, i32 %27)
  %29 = load %struct.hantro_ctx*, %struct.hantro_ctx** %3, align 8
  %30 = getelementptr inbounds %struct.hantro_ctx, %struct.hantro_ctx* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 1
  store i32 %28, i32* %32, align 4
  %33 = load %struct.hantro_ctx*, %struct.hantro_ctx** %3, align 8
  %34 = getelementptr inbounds %struct.hantro_ctx, %struct.hantro_ctx* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %42, label %39

39:                                               ; preds = %1
  %40 = load i32, i32* @ENOMEM, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %2, align 4
  br label %43

42:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %43

43:                                               ; preds = %42, %39
  %44 = load i32, i32* %2, align 4
  ret i32 %44
}

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @dma_alloc_coherent(i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
