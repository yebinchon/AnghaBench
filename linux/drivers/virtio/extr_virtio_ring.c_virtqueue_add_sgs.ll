; ModuleID = '/home/carl/AnghaBench/linux/drivers/virtio/extr_virtio_ring.c_virtqueue_add_sgs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/virtio/extr_virtio_ring.c_virtqueue_add_sgs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.virtqueue = type { i32 }
%struct.scatterlist = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @virtqueue_add_sgs(%struct.virtqueue* %0, %struct.scatterlist** %1, i32 %2, i32 %3, i8* %4, i32 %5) #0 {
  %7 = alloca %struct.virtqueue*, align 8
  %8 = alloca %struct.scatterlist**, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.scatterlist*, align 8
  store %struct.virtqueue* %0, %struct.virtqueue** %7, align 8
  store %struct.scatterlist** %1, %struct.scatterlist*** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i8* %4, i8** %11, align 8
  store i32 %5, i32* %12, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %13, align 4
  br label %16

16:                                               ; preds = %38, %6
  %17 = load i32, i32* %13, align 4
  %18 = load i32, i32* %9, align 4
  %19 = load i32, i32* %10, align 4
  %20 = add i32 %18, %19
  %21 = icmp ult i32 %17, %20
  br i1 %21, label %22, label %41

22:                                               ; preds = %16
  %23 = load %struct.scatterlist**, %struct.scatterlist*** %8, align 8
  %24 = load i32, i32* %13, align 4
  %25 = zext i32 %24 to i64
  %26 = getelementptr inbounds %struct.scatterlist*, %struct.scatterlist** %23, i64 %25
  %27 = load %struct.scatterlist*, %struct.scatterlist** %26, align 8
  store %struct.scatterlist* %27, %struct.scatterlist** %15, align 8
  br label %28

28:                                               ; preds = %34, %22
  %29 = load %struct.scatterlist*, %struct.scatterlist** %15, align 8
  %30 = icmp ne %struct.scatterlist* %29, null
  br i1 %30, label %31, label %37

31:                                               ; preds = %28
  %32 = load i32, i32* %14, align 4
  %33 = add i32 %32, 1
  store i32 %33, i32* %14, align 4
  br label %34

34:                                               ; preds = %31
  %35 = load %struct.scatterlist*, %struct.scatterlist** %15, align 8
  %36 = call %struct.scatterlist* @sg_next(%struct.scatterlist* %35)
  store %struct.scatterlist* %36, %struct.scatterlist** %15, align 8
  br label %28

37:                                               ; preds = %28
  br label %38

38:                                               ; preds = %37
  %39 = load i32, i32* %13, align 4
  %40 = add i32 %39, 1
  store i32 %40, i32* %13, align 4
  br label %16

41:                                               ; preds = %16
  %42 = load %struct.virtqueue*, %struct.virtqueue** %7, align 8
  %43 = load %struct.scatterlist**, %struct.scatterlist*** %8, align 8
  %44 = load i32, i32* %14, align 4
  %45 = load i32, i32* %9, align 4
  %46 = load i32, i32* %10, align 4
  %47 = load i8*, i8** %11, align 8
  %48 = load i32, i32* %12, align 4
  %49 = call i32 @virtqueue_add(%struct.virtqueue* %42, %struct.scatterlist** %43, i32 %44, i32 %45, i32 %46, i8* %47, i32* null, i32 %48)
  ret i32 %49
}

declare dso_local %struct.scatterlist* @sg_next(%struct.scatterlist*) #1

declare dso_local i32 @virtqueue_add(%struct.virtqueue*, %struct.scatterlist**, i32, i32, i32, i8*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
