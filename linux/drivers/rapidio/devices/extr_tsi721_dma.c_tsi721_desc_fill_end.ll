; ModuleID = '/home/carl/AnghaBench/linux/drivers/rapidio/devices/extr_tsi721_dma.c_tsi721_desc_fill_end.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rapidio/devices/extr_tsi721_dma.c_tsi721_desc_fill_end.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tsi721_dma_desc = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@TSI721_DMAD_IOF = common dso_local global i32 0, align 4
@TSI721_DMAD_BCOUNT1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tsi721_dma_desc*, i32, i32)* @tsi721_desc_fill_end to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tsi721_desc_fill_end(%struct.tsi721_dma_desc* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.tsi721_dma_desc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.tsi721_dma_desc* %0, %struct.tsi721_dma_desc** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %8 = load %struct.tsi721_dma_desc*, %struct.tsi721_dma_desc** %5, align 8
  %9 = icmp ne %struct.tsi721_dma_desc* %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %3
  %11 = load i32, i32* @EINVAL, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %4, align 4
  br label %32

13:                                               ; preds = %3
  %14 = load i32, i32* %7, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %23

16:                                               ; preds = %13
  %17 = load i32, i32* @TSI721_DMAD_IOF, align 4
  %18 = call i32 @cpu_to_le32(i32 %17)
  %19 = load %struct.tsi721_dma_desc*, %struct.tsi721_dma_desc** %5, align 8
  %20 = getelementptr inbounds %struct.tsi721_dma_desc, %struct.tsi721_dma_desc* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = or i32 %21, %18
  store i32 %22, i32* %20, align 4
  br label %23

23:                                               ; preds = %16, %13
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* @TSI721_DMAD_BCOUNT1, align 4
  %26 = and i32 %24, %25
  %27 = call i32 @cpu_to_le32(i32 %26)
  %28 = load %struct.tsi721_dma_desc*, %struct.tsi721_dma_desc** %5, align 8
  %29 = getelementptr inbounds %struct.tsi721_dma_desc, %struct.tsi721_dma_desc* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = or i32 %30, %27
  store i32 %31, i32* %29, align 4
  store i32 0, i32* %4, align 4
  br label %32

32:                                               ; preds = %23, %10
  %33 = load i32, i32* %4, align 4
  ret i32 %33
}

declare dso_local i32 @cpu_to_le32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
