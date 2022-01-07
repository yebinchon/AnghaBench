; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/mellanox/extr_mlxbf-tmfifo.c_mlxbf_tmfifo_free_vrings.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/mellanox/extr_mlxbf-tmfifo.c_mlxbf_tmfifo_free_vrings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxbf_tmfifo = type { i32 }
%struct.mlxbf_tmfifo_vdev = type { %struct.TYPE_4__, %struct.mlxbf_tmfifo_vring* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.mlxbf_tmfifo_vring = type { i32*, i32*, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlxbf_tmfifo*, %struct.mlxbf_tmfifo_vdev*)* @mlxbf_tmfifo_free_vrings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlxbf_tmfifo_free_vrings(%struct.mlxbf_tmfifo* %0, %struct.mlxbf_tmfifo_vdev* %1) #0 {
  %3 = alloca %struct.mlxbf_tmfifo*, align 8
  %4 = alloca %struct.mlxbf_tmfifo_vdev*, align 8
  %5 = alloca %struct.mlxbf_tmfifo_vring*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.mlxbf_tmfifo* %0, %struct.mlxbf_tmfifo** %3, align 8
  store %struct.mlxbf_tmfifo_vdev* %1, %struct.mlxbf_tmfifo_vdev** %4, align 8
  store i32 0, i32* %6, align 4
  br label %8

8:                                                ; preds = %62, %2
  %9 = load i32, i32* %6, align 4
  %10 = load %struct.mlxbf_tmfifo_vdev*, %struct.mlxbf_tmfifo_vdev** %4, align 8
  %11 = getelementptr inbounds %struct.mlxbf_tmfifo_vdev, %struct.mlxbf_tmfifo_vdev* %10, i32 0, i32 1
  %12 = load %struct.mlxbf_tmfifo_vring*, %struct.mlxbf_tmfifo_vring** %11, align 8
  %13 = call i32 @ARRAY_SIZE(%struct.mlxbf_tmfifo_vring* %12)
  %14 = icmp slt i32 %9, %13
  br i1 %14, label %15, label %65

15:                                               ; preds = %8
  %16 = load %struct.mlxbf_tmfifo_vdev*, %struct.mlxbf_tmfifo_vdev** %4, align 8
  %17 = getelementptr inbounds %struct.mlxbf_tmfifo_vdev, %struct.mlxbf_tmfifo_vdev* %16, i32 0, i32 1
  %18 = load %struct.mlxbf_tmfifo_vring*, %struct.mlxbf_tmfifo_vring** %17, align 8
  %19 = load i32, i32* %6, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.mlxbf_tmfifo_vring, %struct.mlxbf_tmfifo_vring* %18, i64 %20
  store %struct.mlxbf_tmfifo_vring* %21, %struct.mlxbf_tmfifo_vring** %5, align 8
  %22 = load %struct.mlxbf_tmfifo_vring*, %struct.mlxbf_tmfifo_vring** %5, align 8
  %23 = getelementptr inbounds %struct.mlxbf_tmfifo_vring, %struct.mlxbf_tmfifo_vring* %22, i32 0, i32 1
  %24 = load i32*, i32** %23, align 8
  %25 = icmp ne i32* %24, null
  br i1 %25, label %26, label %61

26:                                               ; preds = %15
  %27 = load %struct.mlxbf_tmfifo_vring*, %struct.mlxbf_tmfifo_vring** %5, align 8
  %28 = getelementptr inbounds %struct.mlxbf_tmfifo_vring, %struct.mlxbf_tmfifo_vring* %27, i32 0, i32 4
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.mlxbf_tmfifo_vring*, %struct.mlxbf_tmfifo_vring** %5, align 8
  %31 = getelementptr inbounds %struct.mlxbf_tmfifo_vring, %struct.mlxbf_tmfifo_vring* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @vring_size(i32 %29, i32 %32)
  store i32 %33, i32* %7, align 4
  %34 = load %struct.mlxbf_tmfifo_vdev*, %struct.mlxbf_tmfifo_vdev** %4, align 8
  %35 = getelementptr inbounds %struct.mlxbf_tmfifo_vdev, %struct.mlxbf_tmfifo_vdev* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* %7, align 4
  %40 = load %struct.mlxbf_tmfifo_vring*, %struct.mlxbf_tmfifo_vring** %5, align 8
  %41 = getelementptr inbounds %struct.mlxbf_tmfifo_vring, %struct.mlxbf_tmfifo_vring* %40, i32 0, i32 1
  %42 = load i32*, i32** %41, align 8
  %43 = load %struct.mlxbf_tmfifo_vring*, %struct.mlxbf_tmfifo_vring** %5, align 8
  %44 = getelementptr inbounds %struct.mlxbf_tmfifo_vring, %struct.mlxbf_tmfifo_vring* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @dma_free_coherent(i32 %38, i32 %39, i32* %42, i32 %45)
  %47 = load %struct.mlxbf_tmfifo_vring*, %struct.mlxbf_tmfifo_vring** %5, align 8
  %48 = getelementptr inbounds %struct.mlxbf_tmfifo_vring, %struct.mlxbf_tmfifo_vring* %47, i32 0, i32 1
  store i32* null, i32** %48, align 8
  %49 = load %struct.mlxbf_tmfifo_vring*, %struct.mlxbf_tmfifo_vring** %5, align 8
  %50 = getelementptr inbounds %struct.mlxbf_tmfifo_vring, %struct.mlxbf_tmfifo_vring* %49, i32 0, i32 0
  %51 = load i32*, i32** %50, align 8
  %52 = icmp ne i32* %51, null
  br i1 %52, label %53, label %60

53:                                               ; preds = %26
  %54 = load %struct.mlxbf_tmfifo_vring*, %struct.mlxbf_tmfifo_vring** %5, align 8
  %55 = getelementptr inbounds %struct.mlxbf_tmfifo_vring, %struct.mlxbf_tmfifo_vring* %54, i32 0, i32 0
  %56 = load i32*, i32** %55, align 8
  %57 = call i32 @vring_del_virtqueue(i32* %56)
  %58 = load %struct.mlxbf_tmfifo_vring*, %struct.mlxbf_tmfifo_vring** %5, align 8
  %59 = getelementptr inbounds %struct.mlxbf_tmfifo_vring, %struct.mlxbf_tmfifo_vring* %58, i32 0, i32 0
  store i32* null, i32** %59, align 8
  br label %60

60:                                               ; preds = %53, %26
  br label %61

61:                                               ; preds = %60, %15
  br label %62

62:                                               ; preds = %61
  %63 = load i32, i32* %6, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %6, align 4
  br label %8

65:                                               ; preds = %8
  ret void
}

declare dso_local i32 @ARRAY_SIZE(%struct.mlxbf_tmfifo_vring*) #1

declare dso_local i32 @vring_size(i32, i32) #1

declare dso_local i32 @dma_free_coherent(i32, i32, i32*, i32) #1

declare dso_local i32 @vring_del_virtqueue(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
