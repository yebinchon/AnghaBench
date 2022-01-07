; ModuleID = '/home/carl/AnghaBench/linux/drivers/virtio/extr_virtio_ring.c_virtqueue_detach_unused_buf_split.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/virtio/extr_virtio_ring.c_virtqueue_detach_unused_buf_split.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.virtqueue = type { i32 }
%struct.vring_virtqueue = type { %struct.TYPE_10__, %struct.TYPE_8__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__, i32, %struct.TYPE_6__* }
%struct.TYPE_9__ = type { i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i8* }
%struct.TYPE_8__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.virtqueue*)* @virtqueue_detach_unused_buf_split to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @virtqueue_detach_unused_buf_split(%struct.virtqueue* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.virtqueue*, align 8
  %4 = alloca %struct.vring_virtqueue*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  store %struct.virtqueue* %0, %struct.virtqueue** %3, align 8
  %7 = load %struct.virtqueue*, %struct.virtqueue** %3, align 8
  %8 = call %struct.vring_virtqueue* @to_vvq(%struct.virtqueue* %7)
  store %struct.vring_virtqueue* %8, %struct.vring_virtqueue** %4, align 8
  %9 = load %struct.vring_virtqueue*, %struct.vring_virtqueue** %4, align 8
  %10 = call i32 @START_USE(%struct.vring_virtqueue* %9)
  store i32 0, i32* %5, align 4
  br label %11

11:                                               ; preds = %66, %1
  %12 = load i32, i32* %5, align 4
  %13 = load %struct.vring_virtqueue*, %struct.vring_virtqueue** %4, align 8
  %14 = getelementptr inbounds %struct.vring_virtqueue, %struct.vring_virtqueue* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp ult i32 %12, %17
  br i1 %18, label %19, label %69

19:                                               ; preds = %11
  %20 = load %struct.vring_virtqueue*, %struct.vring_virtqueue** %4, align 8
  %21 = getelementptr inbounds %struct.vring_virtqueue, %struct.vring_virtqueue* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %21, i32 0, i32 2
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %22, align 8
  %24 = load i32, i32* %5, align 4
  %25 = zext i32 %24 to i64
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i64 %25
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = load i8*, i8** %27, align 8
  %29 = icmp ne i8* %28, null
  br i1 %29, label %31, label %30

30:                                               ; preds = %19
  br label %66

31:                                               ; preds = %19
  %32 = load %struct.vring_virtqueue*, %struct.vring_virtqueue** %4, align 8
  %33 = getelementptr inbounds %struct.vring_virtqueue, %struct.vring_virtqueue* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i32 0, i32 2
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %34, align 8
  %36 = load i32, i32* %5, align 4
  %37 = zext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  %40 = load i8*, i8** %39, align 8
  store i8* %40, i8** %6, align 8
  %41 = load %struct.vring_virtqueue*, %struct.vring_virtqueue** %4, align 8
  %42 = load i32, i32* %5, align 4
  %43 = call i32 @detach_buf_split(%struct.vring_virtqueue* %41, i32 %42, i32* null)
  %44 = load %struct.vring_virtqueue*, %struct.vring_virtqueue** %4, align 8
  %45 = getelementptr inbounds %struct.vring_virtqueue, %struct.vring_virtqueue* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = add nsw i32 %47, -1
  store i32 %48, i32* %46, align 8
  %49 = load %struct.virtqueue*, %struct.virtqueue** %3, align 8
  %50 = getelementptr inbounds %struct.virtqueue, %struct.virtqueue* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.vring_virtqueue*, %struct.vring_virtqueue** %4, align 8
  %53 = getelementptr inbounds %struct.vring_virtqueue, %struct.vring_virtqueue* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = call i32 @cpu_to_virtio16(i32 %51, i32 %55)
  %57 = load %struct.vring_virtqueue*, %struct.vring_virtqueue** %4, align 8
  %58 = getelementptr inbounds %struct.vring_virtqueue, %struct.vring_virtqueue* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %59, i32 0, i32 1
  %61 = load %struct.TYPE_7__*, %struct.TYPE_7__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 0
  store i32 %56, i32* %62, align 4
  %63 = load %struct.vring_virtqueue*, %struct.vring_virtqueue** %4, align 8
  %64 = call i32 @END_USE(%struct.vring_virtqueue* %63)
  %65 = load i8*, i8** %6, align 8
  store i8* %65, i8** %2, align 8
  br label %84

66:                                               ; preds = %30
  %67 = load i32, i32* %5, align 4
  %68 = add i32 %67, 1
  store i32 %68, i32* %5, align 4
  br label %11

69:                                               ; preds = %11
  %70 = load %struct.vring_virtqueue*, %struct.vring_virtqueue** %4, align 8
  %71 = getelementptr inbounds %struct.vring_virtqueue, %struct.vring_virtqueue* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = load %struct.vring_virtqueue*, %struct.vring_virtqueue** %4, align 8
  %75 = getelementptr inbounds %struct.vring_virtqueue, %struct.vring_virtqueue* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = icmp ne i32 %73, %78
  %80 = zext i1 %79 to i32
  %81 = call i32 @BUG_ON(i32 %80)
  %82 = load %struct.vring_virtqueue*, %struct.vring_virtqueue** %4, align 8
  %83 = call i32 @END_USE(%struct.vring_virtqueue* %82)
  store i8* null, i8** %2, align 8
  br label %84

84:                                               ; preds = %69, %31
  %85 = load i8*, i8** %2, align 8
  ret i8* %85
}

declare dso_local %struct.vring_virtqueue* @to_vvq(%struct.virtqueue*) #1

declare dso_local i32 @START_USE(%struct.vring_virtqueue*) #1

declare dso_local i32 @detach_buf_split(%struct.vring_virtqueue*, i32, i32*) #1

declare dso_local i32 @cpu_to_virtio16(i32, i32) #1

declare dso_local i32 @END_USE(%struct.vring_virtqueue*) #1

declare dso_local i32 @BUG_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
