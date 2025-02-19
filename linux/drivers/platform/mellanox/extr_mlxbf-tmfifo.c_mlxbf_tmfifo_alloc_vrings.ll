; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/mellanox/extr_mlxbf-tmfifo.c_mlxbf_tmfifo_alloc_vrings.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/mellanox/extr_mlxbf-tmfifo.c_mlxbf_tmfifo_alloc_vrings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxbf_tmfifo = type { i32 }
%struct.mlxbf_tmfifo_vdev = type { %struct.TYPE_4__, %struct.mlxbf_tmfifo_vring* }
%struct.TYPE_4__ = type { %struct.device, %struct.TYPE_3__ }
%struct.device = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.mlxbf_tmfifo_vring = type { i32, i32, i8*, i32, i32, i32, %struct.mlxbf_tmfifo* }

@MLXBF_TMFIFO_VRING_SIZE = common dso_local global i32 0, align 4
@SMP_CACHE_BYTES = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"dma_alloc_coherent failed\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlxbf_tmfifo*, %struct.mlxbf_tmfifo_vdev*)* @mlxbf_tmfifo_alloc_vrings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlxbf_tmfifo_alloc_vrings(%struct.mlxbf_tmfifo* %0, %struct.mlxbf_tmfifo_vdev* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mlxbf_tmfifo*, align 8
  %5 = alloca %struct.mlxbf_tmfifo_vdev*, align 8
  %6 = alloca %struct.mlxbf_tmfifo_vring*, align 8
  %7 = alloca %struct.device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  store %struct.mlxbf_tmfifo* %0, %struct.mlxbf_tmfifo** %4, align 8
  store %struct.mlxbf_tmfifo_vdev* %1, %struct.mlxbf_tmfifo_vdev** %5, align 8
  store i32 0, i32* %9, align 4
  br label %12

12:                                               ; preds = %80, %2
  %13 = load i32, i32* %9, align 4
  %14 = load %struct.mlxbf_tmfifo_vdev*, %struct.mlxbf_tmfifo_vdev** %5, align 8
  %15 = getelementptr inbounds %struct.mlxbf_tmfifo_vdev, %struct.mlxbf_tmfifo_vdev* %14, i32 0, i32 1
  %16 = load %struct.mlxbf_tmfifo_vring*, %struct.mlxbf_tmfifo_vring** %15, align 8
  %17 = call i32 @ARRAY_SIZE(%struct.mlxbf_tmfifo_vring* %16)
  %18 = icmp slt i32 %13, %17
  br i1 %18, label %19, label %83

19:                                               ; preds = %12
  %20 = load %struct.mlxbf_tmfifo_vdev*, %struct.mlxbf_tmfifo_vdev** %5, align 8
  %21 = getelementptr inbounds %struct.mlxbf_tmfifo_vdev, %struct.mlxbf_tmfifo_vdev* %20, i32 0, i32 1
  %22 = load %struct.mlxbf_tmfifo_vring*, %struct.mlxbf_tmfifo_vring** %21, align 8
  %23 = load i32, i32* %9, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.mlxbf_tmfifo_vring, %struct.mlxbf_tmfifo_vring* %22, i64 %24
  store %struct.mlxbf_tmfifo_vring* %25, %struct.mlxbf_tmfifo_vring** %6, align 8
  %26 = load %struct.mlxbf_tmfifo*, %struct.mlxbf_tmfifo** %4, align 8
  %27 = load %struct.mlxbf_tmfifo_vring*, %struct.mlxbf_tmfifo_vring** %6, align 8
  %28 = getelementptr inbounds %struct.mlxbf_tmfifo_vring, %struct.mlxbf_tmfifo_vring* %27, i32 0, i32 6
  store %struct.mlxbf_tmfifo* %26, %struct.mlxbf_tmfifo** %28, align 8
  %29 = load i32, i32* @MLXBF_TMFIFO_VRING_SIZE, align 4
  %30 = load %struct.mlxbf_tmfifo_vring*, %struct.mlxbf_tmfifo_vring** %6, align 8
  %31 = getelementptr inbounds %struct.mlxbf_tmfifo_vring, %struct.mlxbf_tmfifo_vring* %30, i32 0, i32 4
  store i32 %29, i32* %31, align 4
  %32 = load i32, i32* @SMP_CACHE_BYTES, align 4
  %33 = load %struct.mlxbf_tmfifo_vring*, %struct.mlxbf_tmfifo_vring** %6, align 8
  %34 = getelementptr inbounds %struct.mlxbf_tmfifo_vring, %struct.mlxbf_tmfifo_vring* %33, i32 0, i32 3
  store i32 %32, i32* %34, align 8
  %35 = load i32, i32* %9, align 4
  %36 = load %struct.mlxbf_tmfifo_vring*, %struct.mlxbf_tmfifo_vring** %6, align 8
  %37 = getelementptr inbounds %struct.mlxbf_tmfifo_vring, %struct.mlxbf_tmfifo_vring* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 8
  %38 = load %struct.mlxbf_tmfifo_vdev*, %struct.mlxbf_tmfifo_vdev** %5, align 8
  %39 = getelementptr inbounds %struct.mlxbf_tmfifo_vdev, %struct.mlxbf_tmfifo_vdev* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.mlxbf_tmfifo_vring*, %struct.mlxbf_tmfifo_vring** %6, align 8
  %44 = getelementptr inbounds %struct.mlxbf_tmfifo_vring, %struct.mlxbf_tmfifo_vring* %43, i32 0, i32 5
  store i32 %42, i32* %44, align 8
  %45 = load %struct.mlxbf_tmfifo_vdev*, %struct.mlxbf_tmfifo_vdev** %5, align 8
  %46 = getelementptr inbounds %struct.mlxbf_tmfifo_vdev, %struct.mlxbf_tmfifo_vdev* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  store %struct.device* %47, %struct.device** %7, align 8
  %48 = load %struct.mlxbf_tmfifo_vring*, %struct.mlxbf_tmfifo_vring** %6, align 8
  %49 = getelementptr inbounds %struct.mlxbf_tmfifo_vring, %struct.mlxbf_tmfifo_vring* %48, i32 0, i32 4
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.mlxbf_tmfifo_vring*, %struct.mlxbf_tmfifo_vring** %6, align 8
  %52 = getelementptr inbounds %struct.mlxbf_tmfifo_vring, %struct.mlxbf_tmfifo_vring* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @vring_size(i32 %50, i32 %53)
  store i32 %54, i32* %10, align 4
  %55 = load %struct.device*, %struct.device** %7, align 8
  %56 = getelementptr inbounds %struct.device, %struct.device* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* %10, align 4
  %59 = load i32, i32* @GFP_KERNEL, align 4
  %60 = call i8* @dma_alloc_coherent(i32 %57, i32 %58, i32* %8, i32 %59)
  store i8* %60, i8** %11, align 8
  %61 = load i8*, i8** %11, align 8
  %62 = icmp ne i8* %61, null
  br i1 %62, label %73, label %63

63:                                               ; preds = %19
  %64 = load %struct.mlxbf_tmfifo*, %struct.mlxbf_tmfifo** %4, align 8
  %65 = load %struct.mlxbf_tmfifo_vdev*, %struct.mlxbf_tmfifo_vdev** %5, align 8
  %66 = call i32 @mlxbf_tmfifo_free_vrings(%struct.mlxbf_tmfifo* %64, %struct.mlxbf_tmfifo_vdev* %65)
  %67 = load %struct.device*, %struct.device** %7, align 8
  %68 = getelementptr inbounds %struct.device, %struct.device* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @dev_err(i32 %69, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %71 = load i32, i32* @ENOMEM, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %3, align 4
  br label %84

73:                                               ; preds = %19
  %74 = load i8*, i8** %11, align 8
  %75 = load %struct.mlxbf_tmfifo_vring*, %struct.mlxbf_tmfifo_vring** %6, align 8
  %76 = getelementptr inbounds %struct.mlxbf_tmfifo_vring, %struct.mlxbf_tmfifo_vring* %75, i32 0, i32 2
  store i8* %74, i8** %76, align 8
  %77 = load i32, i32* %8, align 4
  %78 = load %struct.mlxbf_tmfifo_vring*, %struct.mlxbf_tmfifo_vring** %6, align 8
  %79 = getelementptr inbounds %struct.mlxbf_tmfifo_vring, %struct.mlxbf_tmfifo_vring* %78, i32 0, i32 1
  store i32 %77, i32* %79, align 4
  br label %80

80:                                               ; preds = %73
  %81 = load i32, i32* %9, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %9, align 4
  br label %12

83:                                               ; preds = %12
  store i32 0, i32* %3, align 4
  br label %84

84:                                               ; preds = %83, %63
  %85 = load i32, i32* %3, align 4
  ret i32 %85
}

declare dso_local i32 @ARRAY_SIZE(%struct.mlxbf_tmfifo_vring*) #1

declare dso_local i32 @vring_size(i32, i32) #1

declare dso_local i8* @dma_alloc_coherent(i32, i32, i32*, i32) #1

declare dso_local i32 @mlxbf_tmfifo_free_vrings(%struct.mlxbf_tmfifo*, %struct.mlxbf_tmfifo_vdev*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
