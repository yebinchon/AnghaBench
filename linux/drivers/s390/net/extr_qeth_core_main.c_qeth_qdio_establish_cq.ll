; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/net/extr_qeth_core_main.c_qeth_qdio_establish_cq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/net/extr_qeth_core_main.c_qeth_qdio_establish_cq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qeth_card = type { %struct.TYPE_8__, %struct.TYPE_7__ }
%struct.TYPE_8__ = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_7__ = type { i64 }
%struct.qdio_buffer = type { i32 }
%struct.ccw_device = type opaque

@QETH_CQ_ENABLED = common dso_local global i64 0, align 8
@QDIO_MAX_BUFFERS_PER_Q = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qeth_card*, %struct.qdio_buffer**, void (%struct.ccw_device*, i32, i64)**)* @qeth_qdio_establish_cq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qeth_qdio_establish_cq(%struct.qeth_card* %0, %struct.qdio_buffer** %1, void (%struct.ccw_device*, i32, i64)** %2) #0 {
  %4 = alloca %struct.qeth_card*, align 8
  %5 = alloca %struct.qdio_buffer**, align 8
  %6 = alloca void (%struct.ccw_device*, i32, i64)**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.qeth_card* %0, %struct.qeth_card** %4, align 8
  store %struct.qdio_buffer** %1, %struct.qdio_buffer*** %5, align 8
  store void (%struct.ccw_device*, i32, i64)** %2, void (%struct.ccw_device*, i32, i64)*** %6, align 8
  %9 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %10 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @QETH_CQ_ENABLED, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %59

15:                                               ; preds = %3
  %16 = load i32, i32* @QDIO_MAX_BUFFERS_PER_Q, align 4
  %17 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %18 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = sub nsw i32 %20, 1
  %22 = mul nsw i32 %16, %21
  store i32 %22, i32* %8, align 4
  store i32 0, i32* %7, align 4
  br label %23

23:                                               ; preds = %47, %15
  %24 = load i32, i32* %7, align 4
  %25 = load i32, i32* @QDIO_MAX_BUFFERS_PER_Q, align 4
  %26 = icmp slt i32 %24, %25
  br i1 %26, label %27, label %50

27:                                               ; preds = %23
  %28 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %29 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 1
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %32, align 8
  %34 = load i32, i32* %7, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i64 @virt_to_phys(i32 %38)
  %40 = inttoptr i64 %39 to %struct.qdio_buffer*
  %41 = load %struct.qdio_buffer**, %struct.qdio_buffer*** %5, align 8
  %42 = load i32, i32* %8, align 4
  %43 = load i32, i32* %7, align 4
  %44 = add nsw i32 %42, %43
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.qdio_buffer*, %struct.qdio_buffer** %41, i64 %45
  store %struct.qdio_buffer* %40, %struct.qdio_buffer** %46, align 8
  br label %47

47:                                               ; preds = %27
  %48 = load i32, i32* %7, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %7, align 4
  br label %23

50:                                               ; preds = %23
  %51 = load void (%struct.ccw_device*, i32, i64)**, void (%struct.ccw_device*, i32, i64)*** %6, align 8
  %52 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %53 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = sub nsw i32 %55, 1
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds void (%struct.ccw_device*, i32, i64)*, void (%struct.ccw_device*, i32, i64)** %51, i64 %57
  store void (%struct.ccw_device*, i32, i64)* null, void (%struct.ccw_device*, i32, i64)** %58, align 8
  br label %59

59:                                               ; preds = %50, %3
  ret void
}

declare dso_local i64 @virt_to_phys(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
