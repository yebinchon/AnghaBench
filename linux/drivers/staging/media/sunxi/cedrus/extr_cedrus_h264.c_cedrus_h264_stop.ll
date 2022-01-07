; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/sunxi/cedrus/extr_cedrus_h264.c_cedrus_h264_stop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/sunxi/cedrus/extr_cedrus_h264.c_cedrus_h264_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cedrus_ctx = type { %struct.TYPE_3__, %struct.cedrus_dev* }
%struct.TYPE_3__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.cedrus_dev = type { i32 }

@CEDRUS_NEIGHBOR_INFO_BUF_SIZE = common dso_local global i32 0, align 4
@CEDRUS_PIC_INFO_BUF_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cedrus_ctx*)* @cedrus_h264_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cedrus_h264_stop(%struct.cedrus_ctx* %0) #0 {
  %2 = alloca %struct.cedrus_ctx*, align 8
  %3 = alloca %struct.cedrus_dev*, align 8
  store %struct.cedrus_ctx* %0, %struct.cedrus_ctx** %2, align 8
  %4 = load %struct.cedrus_ctx*, %struct.cedrus_ctx** %2, align 8
  %5 = getelementptr inbounds %struct.cedrus_ctx, %struct.cedrus_ctx* %4, i32 0, i32 1
  %6 = load %struct.cedrus_dev*, %struct.cedrus_dev** %5, align 8
  store %struct.cedrus_dev* %6, %struct.cedrus_dev** %3, align 8
  %7 = load %struct.cedrus_dev*, %struct.cedrus_dev** %3, align 8
  %8 = getelementptr inbounds %struct.cedrus_dev, %struct.cedrus_dev* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.cedrus_ctx*, %struct.cedrus_ctx** %2, align 8
  %11 = getelementptr inbounds %struct.cedrus_ctx, %struct.cedrus_ctx* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 6
  %14 = load i32, i32* %13, align 8
  %15 = load %struct.cedrus_ctx*, %struct.cedrus_ctx** %2, align 8
  %16 = getelementptr inbounds %struct.cedrus_ctx, %struct.cedrus_ctx* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 5
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.cedrus_ctx*, %struct.cedrus_ctx** %2, align 8
  %21 = getelementptr inbounds %struct.cedrus_ctx, %struct.cedrus_ctx* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 4
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @dma_free_coherent(i32 %9, i32 %14, i32 %19, i32 %24)
  %26 = load %struct.cedrus_dev*, %struct.cedrus_dev** %3, align 8
  %27 = getelementptr inbounds %struct.cedrus_dev, %struct.cedrus_dev* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @CEDRUS_NEIGHBOR_INFO_BUF_SIZE, align 4
  %30 = load %struct.cedrus_ctx*, %struct.cedrus_ctx** %2, align 8
  %31 = getelementptr inbounds %struct.cedrus_ctx, %struct.cedrus_ctx* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.cedrus_ctx*, %struct.cedrus_ctx** %2, align 8
  %36 = getelementptr inbounds %struct.cedrus_ctx, %struct.cedrus_ctx* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @dma_free_coherent(i32 %28, i32 %29, i32 %34, i32 %39)
  %41 = load %struct.cedrus_dev*, %struct.cedrus_dev** %3, align 8
  %42 = getelementptr inbounds %struct.cedrus_dev, %struct.cedrus_dev* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @CEDRUS_PIC_INFO_BUF_SIZE, align 4
  %45 = load %struct.cedrus_ctx*, %struct.cedrus_ctx** %2, align 8
  %46 = getelementptr inbounds %struct.cedrus_ctx, %struct.cedrus_ctx* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.cedrus_ctx*, %struct.cedrus_ctx** %2, align 8
  %51 = getelementptr inbounds %struct.cedrus_ctx, %struct.cedrus_ctx* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @dma_free_coherent(i32 %43, i32 %44, i32 %49, i32 %54)
  ret void
}

declare dso_local i32 @dma_free_coherent(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
