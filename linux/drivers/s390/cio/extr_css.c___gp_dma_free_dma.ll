; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/cio/extr_css.c___gp_dma_free_dma.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/cio/extr_css.c___gp_dma_free_dma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gen_pool = type { i32 }
%struct.gen_pool_chunk = type { i32, i32, i64 }
%struct.device = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gen_pool*, %struct.gen_pool_chunk*, i8*)* @__gp_dma_free_dma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__gp_dma_free_dma(%struct.gen_pool* %0, %struct.gen_pool_chunk* %1, i8* %2) #0 {
  %4 = alloca %struct.gen_pool*, align 8
  %5 = alloca %struct.gen_pool_chunk*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  store %struct.gen_pool* %0, %struct.gen_pool** %4, align 8
  store %struct.gen_pool_chunk* %1, %struct.gen_pool_chunk** %5, align 8
  store i8* %2, i8** %6, align 8
  %8 = load %struct.gen_pool_chunk*, %struct.gen_pool_chunk** %5, align 8
  %9 = getelementptr inbounds %struct.gen_pool_chunk, %struct.gen_pool_chunk* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = load %struct.gen_pool_chunk*, %struct.gen_pool_chunk** %5, align 8
  %12 = getelementptr inbounds %struct.gen_pool_chunk, %struct.gen_pool_chunk* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = sub nsw i32 %10, %13
  %15 = add nsw i32 %14, 1
  %16 = sext i32 %15 to i64
  store i64 %16, i64* %7, align 8
  %17 = load i8*, i8** %6, align 8
  %18 = bitcast i8* %17 to %struct.device*
  %19 = load i64, i64* %7, align 8
  %20 = load %struct.gen_pool_chunk*, %struct.gen_pool_chunk** %5, align 8
  %21 = getelementptr inbounds %struct.gen_pool_chunk, %struct.gen_pool_chunk* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = sext i32 %22 to i64
  %24 = inttoptr i64 %23 to i8*
  %25 = load %struct.gen_pool_chunk*, %struct.gen_pool_chunk** %5, align 8
  %26 = getelementptr inbounds %struct.gen_pool_chunk, %struct.gen_pool_chunk* %25, i32 0, i32 2
  %27 = load i64, i64* %26, align 8
  %28 = trunc i64 %27 to i32
  %29 = call i32 @dma_free_coherent(%struct.device* %18, i64 %19, i8* %24, i32 %28)
  ret void
}

declare dso_local i32 @dma_free_coherent(%struct.device*, i64, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
