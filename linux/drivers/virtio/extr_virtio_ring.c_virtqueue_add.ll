; ModuleID = '/home/carl/AnghaBench/linux/drivers/virtio/extr_virtio_ring.c_virtqueue_add.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/virtio/extr_virtio_ring.c_virtqueue_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.virtqueue = type { i32 }
%struct.scatterlist = type { i32 }
%struct.vring_virtqueue = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.virtqueue*, %struct.scatterlist**, i32, i32, i32, i8*, i8*, i32)* @virtqueue_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @virtqueue_add(%struct.virtqueue* %0, %struct.scatterlist** %1, i32 %2, i32 %3, i32 %4, i8* %5, i8* %6, i32 %7) #0 {
  %9 = alloca %struct.virtqueue*, align 8
  %10 = alloca %struct.scatterlist**, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.vring_virtqueue*, align 8
  store %struct.virtqueue* %0, %struct.virtqueue** %9, align 8
  store %struct.scatterlist** %1, %struct.scatterlist*** %10, align 8
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i8* %5, i8** %14, align 8
  store i8* %6, i8** %15, align 8
  store i32 %7, i32* %16, align 4
  %18 = load %struct.virtqueue*, %struct.virtqueue** %9, align 8
  %19 = call %struct.vring_virtqueue* @to_vvq(%struct.virtqueue* %18)
  store %struct.vring_virtqueue* %19, %struct.vring_virtqueue** %17, align 8
  %20 = load %struct.vring_virtqueue*, %struct.vring_virtqueue** %17, align 8
  %21 = getelementptr inbounds %struct.vring_virtqueue, %struct.vring_virtqueue* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %34

24:                                               ; preds = %8
  %25 = load %struct.virtqueue*, %struct.virtqueue** %9, align 8
  %26 = load %struct.scatterlist**, %struct.scatterlist*** %10, align 8
  %27 = load i32, i32* %11, align 4
  %28 = load i32, i32* %12, align 4
  %29 = load i32, i32* %13, align 4
  %30 = load i8*, i8** %14, align 8
  %31 = load i8*, i8** %15, align 8
  %32 = load i32, i32* %16, align 4
  %33 = call i32 @virtqueue_add_packed(%struct.virtqueue* %25, %struct.scatterlist** %26, i32 %27, i32 %28, i32 %29, i8* %30, i8* %31, i32 %32)
  br label %44

34:                                               ; preds = %8
  %35 = load %struct.virtqueue*, %struct.virtqueue** %9, align 8
  %36 = load %struct.scatterlist**, %struct.scatterlist*** %10, align 8
  %37 = load i32, i32* %11, align 4
  %38 = load i32, i32* %12, align 4
  %39 = load i32, i32* %13, align 4
  %40 = load i8*, i8** %14, align 8
  %41 = load i8*, i8** %15, align 8
  %42 = load i32, i32* %16, align 4
  %43 = call i32 @virtqueue_add_split(%struct.virtqueue* %35, %struct.scatterlist** %36, i32 %37, i32 %38, i32 %39, i8* %40, i8* %41, i32 %42)
  br label %44

44:                                               ; preds = %34, %24
  %45 = phi i32 [ %33, %24 ], [ %43, %34 ]
  ret i32 %45
}

declare dso_local %struct.vring_virtqueue* @to_vvq(%struct.virtqueue*) #1

declare dso_local i32 @virtqueue_add_packed(%struct.virtqueue*, %struct.scatterlist**, i32, i32, i32, i8*, i8*, i32) #1

declare dso_local i32 @virtqueue_add_split(%struct.virtqueue*, %struct.scatterlist**, i32, i32, i32, i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
