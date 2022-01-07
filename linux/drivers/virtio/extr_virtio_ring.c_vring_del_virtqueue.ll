; ModuleID = '/home/carl/AnghaBench/linux/drivers/virtio/extr_virtio_ring.c_vring_del_virtqueue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/virtio/extr_virtio_ring.c_vring_del_virtqueue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.virtqueue = type { i32 }
%struct.vring_virtqueue = type { %struct.TYPE_10__, %struct.TYPE_8__, %struct.TYPE_7__, i64, i64 }
%struct.TYPE_10__ = type { %struct.vring_virtqueue*, i32, %struct.TYPE_9__, i32 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { %struct.vring_virtqueue*, %struct.vring_virtqueue*, i32, %struct.TYPE_6__, i32, i32, i32, i32 }
%struct.TYPE_6__ = type { i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vring_del_virtqueue(%struct.virtqueue* %0) #0 {
  %2 = alloca %struct.virtqueue*, align 8
  %3 = alloca %struct.vring_virtqueue*, align 8
  store %struct.virtqueue* %0, %struct.virtqueue** %2, align 8
  %4 = load %struct.virtqueue*, %struct.virtqueue** %2, align 8
  %5 = call %struct.vring_virtqueue* @to_vvq(%struct.virtqueue* %4)
  store %struct.vring_virtqueue* %5, %struct.vring_virtqueue** %3, align 8
  %6 = load %struct.vring_virtqueue*, %struct.vring_virtqueue** %3, align 8
  %7 = getelementptr inbounds %struct.vring_virtqueue, %struct.vring_virtqueue* %6, i32 0, i32 4
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %105

10:                                               ; preds = %1
  %11 = load %struct.vring_virtqueue*, %struct.vring_virtqueue** %3, align 8
  %12 = getelementptr inbounds %struct.vring_virtqueue, %struct.vring_virtqueue* %11, i32 0, i32 3
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %80

15:                                               ; preds = %10
  %16 = load %struct.vring_virtqueue*, %struct.vring_virtqueue** %3, align 8
  %17 = getelementptr inbounds %struct.vring_virtqueue, %struct.vring_virtqueue* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.vring_virtqueue*, %struct.vring_virtqueue** %3, align 8
  %21 = getelementptr inbounds %struct.vring_virtqueue, %struct.vring_virtqueue* %20, i32 0, i32 2
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 7
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.vring_virtqueue*, %struct.vring_virtqueue** %3, align 8
  %25 = getelementptr inbounds %struct.vring_virtqueue, %struct.vring_virtqueue* %24, i32 0, i32 2
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 3
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.vring_virtqueue*, %struct.vring_virtqueue** %3, align 8
  %30 = getelementptr inbounds %struct.vring_virtqueue, %struct.vring_virtqueue* %29, i32 0, i32 2
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 6
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @vring_free_queue(i32 %19, i32 %23, i32 %28, i32 %32)
  %34 = load %struct.vring_virtqueue*, %struct.vring_virtqueue** %3, align 8
  %35 = getelementptr inbounds %struct.vring_virtqueue, %struct.vring_virtqueue* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.vring_virtqueue*, %struct.vring_virtqueue** %3, align 8
  %39 = getelementptr inbounds %struct.vring_virtqueue, %struct.vring_virtqueue* %38, i32 0, i32 2
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 4
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.vring_virtqueue*, %struct.vring_virtqueue** %3, align 8
  %43 = getelementptr inbounds %struct.vring_virtqueue, %struct.vring_virtqueue* %42, i32 0, i32 2
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 3
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.vring_virtqueue*, %struct.vring_virtqueue** %3, align 8
  %48 = getelementptr inbounds %struct.vring_virtqueue, %struct.vring_virtqueue* %47, i32 0, i32 2
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 5
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @vring_free_queue(i32 %37, i32 %41, i32 %46, i32 %50)
  %52 = load %struct.vring_virtqueue*, %struct.vring_virtqueue** %3, align 8
  %53 = getelementptr inbounds %struct.vring_virtqueue, %struct.vring_virtqueue* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load %struct.vring_virtqueue*, %struct.vring_virtqueue** %3, align 8
  %57 = getelementptr inbounds %struct.vring_virtqueue, %struct.vring_virtqueue* %56, i32 0, i32 2
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 4
  %59 = load i32, i32* %58, align 8
  %60 = load %struct.vring_virtqueue*, %struct.vring_virtqueue** %3, align 8
  %61 = getelementptr inbounds %struct.vring_virtqueue, %struct.vring_virtqueue* %60, i32 0, i32 2
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 3
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.vring_virtqueue*, %struct.vring_virtqueue** %3, align 8
  %66 = getelementptr inbounds %struct.vring_virtqueue, %struct.vring_virtqueue* %65, i32 0, i32 2
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 8
  %69 = call i32 @vring_free_queue(i32 %55, i32 %59, i32 %64, i32 %68)
  %70 = load %struct.vring_virtqueue*, %struct.vring_virtqueue** %3, align 8
  %71 = getelementptr inbounds %struct.vring_virtqueue, %struct.vring_virtqueue* %70, i32 0, i32 2
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i32 0, i32 1
  %73 = load %struct.vring_virtqueue*, %struct.vring_virtqueue** %72, align 8
  %74 = call i32 @kfree(%struct.vring_virtqueue* %73)
  %75 = load %struct.vring_virtqueue*, %struct.vring_virtqueue** %3, align 8
  %76 = getelementptr inbounds %struct.vring_virtqueue, %struct.vring_virtqueue* %75, i32 0, i32 2
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %76, i32 0, i32 0
  %78 = load %struct.vring_virtqueue*, %struct.vring_virtqueue** %77, align 8
  %79 = call i32 @kfree(%struct.vring_virtqueue* %78)
  br label %104

80:                                               ; preds = %10
  %81 = load %struct.vring_virtqueue*, %struct.vring_virtqueue** %3, align 8
  %82 = getelementptr inbounds %struct.vring_virtqueue, %struct.vring_virtqueue* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = load %struct.vring_virtqueue*, %struct.vring_virtqueue** %3, align 8
  %86 = getelementptr inbounds %struct.vring_virtqueue, %struct.vring_virtqueue* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %86, i32 0, i32 3
  %88 = load i32, i32* %87, align 8
  %89 = load %struct.vring_virtqueue*, %struct.vring_virtqueue** %3, align 8
  %90 = getelementptr inbounds %struct.vring_virtqueue, %struct.vring_virtqueue* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %90, i32 0, i32 2
  %92 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.vring_virtqueue*, %struct.vring_virtqueue** %3, align 8
  %95 = getelementptr inbounds %struct.vring_virtqueue, %struct.vring_virtqueue* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 8
  %98 = call i32 @vring_free_queue(i32 %84, i32 %88, i32 %93, i32 %97)
  %99 = load %struct.vring_virtqueue*, %struct.vring_virtqueue** %3, align 8
  %100 = getelementptr inbounds %struct.vring_virtqueue, %struct.vring_virtqueue* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %100, i32 0, i32 0
  %102 = load %struct.vring_virtqueue*, %struct.vring_virtqueue** %101, align 8
  %103 = call i32 @kfree(%struct.vring_virtqueue* %102)
  br label %104

104:                                              ; preds = %80, %15
  br label %105

105:                                              ; preds = %104, %1
  %106 = load %struct.virtqueue*, %struct.virtqueue** %2, align 8
  %107 = getelementptr inbounds %struct.virtqueue, %struct.virtqueue* %106, i32 0, i32 0
  %108 = call i32 @list_del(i32* %107)
  %109 = load %struct.vring_virtqueue*, %struct.vring_virtqueue** %3, align 8
  %110 = call i32 @kfree(%struct.vring_virtqueue* %109)
  ret void
}

declare dso_local %struct.vring_virtqueue* @to_vvq(%struct.virtqueue*) #1

declare dso_local i32 @vring_free_queue(i32, i32, i32, i32) #1

declare dso_local i32 @kfree(%struct.vring_virtqueue*) #1

declare dso_local i32 @list_del(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
