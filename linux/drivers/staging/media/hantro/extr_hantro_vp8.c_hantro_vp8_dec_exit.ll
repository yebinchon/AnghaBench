; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/hantro/extr_hantro_vp8.c_hantro_vp8_dec_exit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/hantro/extr_hantro_vp8.c_hantro_vp8_dec_exit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hantro_ctx = type { %struct.hantro_dev*, %struct.hantro_vp8_dec_hw_ctx }
%struct.hantro_dev = type { i32 }
%struct.hantro_vp8_dec_hw_ctx = type { %struct.TYPE_3__, %struct.TYPE_4__ }
%struct.TYPE_3__ = type { i32, i32, i32 }
%struct.TYPE_4__ = type { i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hantro_vp8_dec_exit(%struct.hantro_ctx* %0) #0 {
  %2 = alloca %struct.hantro_ctx*, align 8
  %3 = alloca %struct.hantro_vp8_dec_hw_ctx*, align 8
  %4 = alloca %struct.hantro_dev*, align 8
  store %struct.hantro_ctx* %0, %struct.hantro_ctx** %2, align 8
  %5 = load %struct.hantro_ctx*, %struct.hantro_ctx** %2, align 8
  %6 = getelementptr inbounds %struct.hantro_ctx, %struct.hantro_ctx* %5, i32 0, i32 1
  store %struct.hantro_vp8_dec_hw_ctx* %6, %struct.hantro_vp8_dec_hw_ctx** %3, align 8
  %7 = load %struct.hantro_ctx*, %struct.hantro_ctx** %2, align 8
  %8 = getelementptr inbounds %struct.hantro_ctx, %struct.hantro_ctx* %7, i32 0, i32 0
  %9 = load %struct.hantro_dev*, %struct.hantro_dev** %8, align 8
  store %struct.hantro_dev* %9, %struct.hantro_dev** %4, align 8
  %10 = load %struct.hantro_dev*, %struct.hantro_dev** %4, align 8
  %11 = getelementptr inbounds %struct.hantro_dev, %struct.hantro_dev* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.hantro_vp8_dec_hw_ctx*, %struct.hantro_vp8_dec_hw_ctx** %3, align 8
  %14 = getelementptr inbounds %struct.hantro_vp8_dec_hw_ctx, %struct.hantro_vp8_dec_hw_ctx* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.hantro_vp8_dec_hw_ctx*, %struct.hantro_vp8_dec_hw_ctx** %3, align 8
  %18 = getelementptr inbounds %struct.hantro_vp8_dec_hw_ctx, %struct.hantro_vp8_dec_hw_ctx* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.hantro_vp8_dec_hw_ctx*, %struct.hantro_vp8_dec_hw_ctx** %3, align 8
  %22 = getelementptr inbounds %struct.hantro_vp8_dec_hw_ctx, %struct.hantro_vp8_dec_hw_ctx* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @dma_free_coherent(i32 %12, i32 %16, i32 %20, i32 %24)
  %26 = load %struct.hantro_dev*, %struct.hantro_dev** %4, align 8
  %27 = getelementptr inbounds %struct.hantro_dev, %struct.hantro_dev* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.hantro_vp8_dec_hw_ctx*, %struct.hantro_vp8_dec_hw_ctx** %3, align 8
  %30 = getelementptr inbounds %struct.hantro_vp8_dec_hw_ctx, %struct.hantro_vp8_dec_hw_ctx* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.hantro_vp8_dec_hw_ctx*, %struct.hantro_vp8_dec_hw_ctx** %3, align 8
  %34 = getelementptr inbounds %struct.hantro_vp8_dec_hw_ctx, %struct.hantro_vp8_dec_hw_ctx* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.hantro_vp8_dec_hw_ctx*, %struct.hantro_vp8_dec_hw_ctx** %3, align 8
  %38 = getelementptr inbounds %struct.hantro_vp8_dec_hw_ctx, %struct.hantro_vp8_dec_hw_ctx* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @dma_free_coherent(i32 %28, i32 %32, i32 %36, i32 %40)
  ret void
}

declare dso_local i32 @dma_free_coherent(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
