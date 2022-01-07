; ModuleID = '/home/carl/AnghaBench/linux/drivers/ntb/extr_ntb_transport.c_ntb_transport_max_size.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ntb/extr_ntb_transport.c_ntb_transport_max_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ntb_transport_qp = type { i32, %struct.dma_chan*, %struct.dma_chan* }
%struct.dma_chan = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ntb_transport_max_size(%struct.ntb_transport_qp* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ntb_transport_qp*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.dma_chan*, align 8
  %7 = alloca %struct.dma_chan*, align 8
  store %struct.ntb_transport_qp* %0, %struct.ntb_transport_qp** %3, align 8
  %8 = load %struct.ntb_transport_qp*, %struct.ntb_transport_qp** %3, align 8
  %9 = icmp ne %struct.ntb_transport_qp* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %52

11:                                               ; preds = %1
  %12 = load %struct.ntb_transport_qp*, %struct.ntb_transport_qp** %3, align 8
  %13 = getelementptr inbounds %struct.ntb_transport_qp, %struct.ntb_transport_qp* %12, i32 0, i32 2
  %14 = load %struct.dma_chan*, %struct.dma_chan** %13, align 8
  store %struct.dma_chan* %14, %struct.dma_chan** %6, align 8
  %15 = load %struct.ntb_transport_qp*, %struct.ntb_transport_qp** %3, align 8
  %16 = getelementptr inbounds %struct.ntb_transport_qp, %struct.ntb_transport_qp* %15, i32 0, i32 1
  %17 = load %struct.dma_chan*, %struct.dma_chan** %16, align 8
  store %struct.dma_chan* %17, %struct.dma_chan** %7, align 8
  %18 = load %struct.dma_chan*, %struct.dma_chan** %6, align 8
  %19 = icmp ne %struct.dma_chan* %18, null
  br i1 %19, label %20, label %26

20:                                               ; preds = %11
  %21 = load %struct.dma_chan*, %struct.dma_chan** %6, align 8
  %22 = getelementptr inbounds %struct.dma_chan, %struct.dma_chan* %21, i32 0, i32 0
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  br label %27

26:                                               ; preds = %11
  br label %27

27:                                               ; preds = %26, %20
  %28 = phi i32 [ %25, %20 ], [ 0, %26 ]
  %29 = load %struct.dma_chan*, %struct.dma_chan** %7, align 8
  %30 = icmp ne %struct.dma_chan* %29, null
  br i1 %30, label %31, label %37

31:                                               ; preds = %27
  %32 = load %struct.dma_chan*, %struct.dma_chan** %7, align 8
  %33 = getelementptr inbounds %struct.dma_chan, %struct.dma_chan* %32, i32 0, i32 0
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  br label %38

37:                                               ; preds = %27
  br label %38

38:                                               ; preds = %37, %31
  %39 = phi i32 [ %36, %31 ], [ 0, %37 ]
  %40 = call i32 @max(i32 %28, i32 %39)
  store i32 %40, i32* %5, align 4
  %41 = load %struct.ntb_transport_qp*, %struct.ntb_transport_qp** %3, align 8
  %42 = getelementptr inbounds %struct.ntb_transport_qp, %struct.ntb_transport_qp* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = sext i32 %43 to i64
  %45 = sub i64 %44, 4
  %46 = trunc i64 %45 to i32
  store i32 %46, i32* %4, align 4
  %47 = load i32, i32* %4, align 4
  %48 = load i32, i32* %5, align 4
  %49 = shl i32 1, %48
  %50 = call i32 @round_down(i32 %47, i32 %49)
  store i32 %50, i32* %4, align 4
  %51 = load i32, i32* %4, align 4
  store i32 %51, i32* %2, align 4
  br label %52

52:                                               ; preds = %38, %10
  %53 = load i32, i32* %2, align 4
  ret i32 %53
}

declare dso_local i32 @max(i32, i32) #1

declare dso_local i32 @round_down(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
