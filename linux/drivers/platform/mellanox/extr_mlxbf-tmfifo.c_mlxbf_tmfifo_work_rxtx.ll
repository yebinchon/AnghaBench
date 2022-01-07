; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/mellanox/extr_mlxbf-tmfifo.c_mlxbf_tmfifo_work_rxtx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/mellanox/extr_mlxbf-tmfifo.c_mlxbf_tmfifo_work_rxtx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxbf_tmfifo = type { %struct.mlxbf_tmfifo_vdev**, %struct.TYPE_2__*, i32 }
%struct.mlxbf_tmfifo_vdev = type { %struct.mlxbf_tmfifo_vring* }
%struct.mlxbf_tmfifo_vring = type { i64 }
%struct.TYPE_2__ = type { i32 }

@MLXBF_TMFIFO_VDEV_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlxbf_tmfifo*, i32, i32, i32)* @mlxbf_tmfifo_work_rxtx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlxbf_tmfifo_work_rxtx(%struct.mlxbf_tmfifo* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.mlxbf_tmfifo*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.mlxbf_tmfifo_vdev*, align 8
  %10 = alloca %struct.mlxbf_tmfifo_vring*, align 8
  %11 = alloca i32, align 4
  store %struct.mlxbf_tmfifo* %0, %struct.mlxbf_tmfifo** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %12 = load i32, i32* %7, align 4
  %13 = load %struct.mlxbf_tmfifo*, %struct.mlxbf_tmfifo** %5, align 8
  %14 = getelementptr inbounds %struct.mlxbf_tmfifo, %struct.mlxbf_tmfifo* %13, i32 0, i32 2
  %15 = call i32 @test_and_clear_bit(i32 %12, i32* %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %27

17:                                               ; preds = %4
  %18 = load %struct.mlxbf_tmfifo*, %struct.mlxbf_tmfifo** %5, align 8
  %19 = getelementptr inbounds %struct.mlxbf_tmfifo, %struct.mlxbf_tmfifo* %18, i32 0, i32 1
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = load i32, i32* %7, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i64 %22
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %17, %4
  br label %63

28:                                               ; preds = %17
  store i32 0, i32* %11, align 4
  br label %29

29:                                               ; preds = %60, %28
  %30 = load i32, i32* %11, align 4
  %31 = load i32, i32* @MLXBF_TMFIFO_VDEV_MAX, align 4
  %32 = icmp slt i32 %30, %31
  br i1 %32, label %33, label %63

33:                                               ; preds = %29
  %34 = load %struct.mlxbf_tmfifo*, %struct.mlxbf_tmfifo** %5, align 8
  %35 = getelementptr inbounds %struct.mlxbf_tmfifo, %struct.mlxbf_tmfifo* %34, i32 0, i32 0
  %36 = load %struct.mlxbf_tmfifo_vdev**, %struct.mlxbf_tmfifo_vdev*** %35, align 8
  %37 = load i32, i32* %11, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.mlxbf_tmfifo_vdev*, %struct.mlxbf_tmfifo_vdev** %36, i64 %38
  %40 = load %struct.mlxbf_tmfifo_vdev*, %struct.mlxbf_tmfifo_vdev** %39, align 8
  store %struct.mlxbf_tmfifo_vdev* %40, %struct.mlxbf_tmfifo_vdev** %9, align 8
  %41 = load %struct.mlxbf_tmfifo_vdev*, %struct.mlxbf_tmfifo_vdev** %9, align 8
  %42 = icmp ne %struct.mlxbf_tmfifo_vdev* %41, null
  br i1 %42, label %43, label %59

43:                                               ; preds = %33
  %44 = load %struct.mlxbf_tmfifo_vdev*, %struct.mlxbf_tmfifo_vdev** %9, align 8
  %45 = getelementptr inbounds %struct.mlxbf_tmfifo_vdev, %struct.mlxbf_tmfifo_vdev* %44, i32 0, i32 0
  %46 = load %struct.mlxbf_tmfifo_vring*, %struct.mlxbf_tmfifo_vring** %45, align 8
  %47 = load i32, i32* %6, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.mlxbf_tmfifo_vring, %struct.mlxbf_tmfifo_vring* %46, i64 %48
  store %struct.mlxbf_tmfifo_vring* %49, %struct.mlxbf_tmfifo_vring** %10, align 8
  %50 = load %struct.mlxbf_tmfifo_vring*, %struct.mlxbf_tmfifo_vring** %10, align 8
  %51 = getelementptr inbounds %struct.mlxbf_tmfifo_vring, %struct.mlxbf_tmfifo_vring* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %43
  %55 = load %struct.mlxbf_tmfifo_vring*, %struct.mlxbf_tmfifo_vring** %10, align 8
  %56 = load i32, i32* %8, align 4
  %57 = call i32 @mlxbf_tmfifo_rxtx(%struct.mlxbf_tmfifo_vring* %55, i32 %56)
  br label %58

58:                                               ; preds = %54, %43
  br label %59

59:                                               ; preds = %58, %33
  br label %60

60:                                               ; preds = %59
  %61 = load i32, i32* %11, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %11, align 4
  br label %29

63:                                               ; preds = %27, %29
  ret void
}

declare dso_local i32 @test_and_clear_bit(i32, i32*) #1

declare dso_local i32 @mlxbf_tmfifo_rxtx(%struct.mlxbf_tmfifo_vring*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
