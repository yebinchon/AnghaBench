; ModuleID = '/home/carl/AnghaBench/linux/drivers/remoteproc/extr_remoteproc_virtio.c_rproc_virtio_find_vqs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/remoteproc/extr_remoteproc_virtio.c_rproc_virtio_find_vqs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.virtio_device = type { i32 }
%struct.virtqueue = type { i32 }
%struct.irq_affinity = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.virtio_device*, i32, %struct.virtqueue**, i32**, i8**, i32*, %struct.irq_affinity*)* @rproc_virtio_find_vqs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rproc_virtio_find_vqs(%struct.virtio_device* %0, i32 %1, %struct.virtqueue** %2, i32** %3, i8** %4, i32* %5, %struct.irq_affinity* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.virtio_device*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.virtqueue**, align 8
  %12 = alloca i32**, align 8
  %13 = alloca i8**, align 8
  %14 = alloca i32*, align 8
  %15 = alloca %struct.irq_affinity*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.virtio_device* %0, %struct.virtio_device** %9, align 8
  store i32 %1, i32* %10, align 4
  store %struct.virtqueue** %2, %struct.virtqueue*** %11, align 8
  store i32** %3, i32*** %12, align 8
  store i8** %4, i8*** %13, align 8
  store i32* %5, i32** %14, align 8
  store %struct.irq_affinity* %6, %struct.irq_affinity** %15, align 8
  store i32 0, i32* %18, align 4
  store i32 0, i32* %16, align 4
  br label %19

19:                                               ; preds = %80, %7
  %20 = load i32, i32* %16, align 4
  %21 = load i32, i32* %10, align 4
  %22 = icmp ult i32 %20, %21
  br i1 %22, label %23, label %83

23:                                               ; preds = %19
  %24 = load i8**, i8*** %13, align 8
  %25 = load i32, i32* %16, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i8*, i8** %24, i64 %26
  %28 = load i8*, i8** %27, align 8
  %29 = icmp ne i8* %28, null
  br i1 %29, label %35, label %30

30:                                               ; preds = %23
  %31 = load %struct.virtqueue**, %struct.virtqueue*** %11, align 8
  %32 = load i32, i32* %16, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.virtqueue*, %struct.virtqueue** %31, i64 %33
  store %struct.virtqueue* null, %struct.virtqueue** %34, align 8
  br label %80

35:                                               ; preds = %23
  %36 = load %struct.virtio_device*, %struct.virtio_device** %9, align 8
  %37 = load i32, i32* %18, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %18, align 4
  %39 = load i32**, i32*** %12, align 8
  %40 = load i32, i32* %16, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32*, i32** %39, i64 %41
  %43 = load i32*, i32** %42, align 8
  %44 = load i8**, i8*** %13, align 8
  %45 = load i32, i32* %16, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i8*, i8** %44, i64 %46
  %48 = load i8*, i8** %47, align 8
  %49 = load i32*, i32** %14, align 8
  %50 = icmp ne i32* %49, null
  br i1 %50, label %51, label %57

51:                                               ; preds = %35
  %52 = load i32*, i32** %14, align 8
  %53 = load i32, i32* %16, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %52, i64 %54
  %56 = load i32, i32* %55, align 4
  br label %58

57:                                               ; preds = %35
  br label %58

58:                                               ; preds = %57, %51
  %59 = phi i32 [ %56, %51 ], [ 0, %57 ]
  %60 = call %struct.virtqueue* @rp_find_vq(%struct.virtio_device* %36, i32 %37, i32* %43, i8* %48, i32 %59)
  %61 = load %struct.virtqueue**, %struct.virtqueue*** %11, align 8
  %62 = load i32, i32* %16, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.virtqueue*, %struct.virtqueue** %61, i64 %63
  store %struct.virtqueue* %60, %struct.virtqueue** %64, align 8
  %65 = load %struct.virtqueue**, %struct.virtqueue*** %11, align 8
  %66 = load i32, i32* %16, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.virtqueue*, %struct.virtqueue** %65, i64 %67
  %69 = load %struct.virtqueue*, %struct.virtqueue** %68, align 8
  %70 = call i64 @IS_ERR(%struct.virtqueue* %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %79

72:                                               ; preds = %58
  %73 = load %struct.virtqueue**, %struct.virtqueue*** %11, align 8
  %74 = load i32, i32* %16, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.virtqueue*, %struct.virtqueue** %73, i64 %75
  %77 = load %struct.virtqueue*, %struct.virtqueue** %76, align 8
  %78 = call i32 @PTR_ERR(%struct.virtqueue* %77)
  store i32 %78, i32* %17, align 4
  br label %84

79:                                               ; preds = %58
  br label %80

80:                                               ; preds = %79, %30
  %81 = load i32, i32* %16, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %16, align 4
  br label %19

83:                                               ; preds = %19
  store i32 0, i32* %8, align 4
  br label %88

84:                                               ; preds = %72
  %85 = load %struct.virtio_device*, %struct.virtio_device** %9, align 8
  %86 = call i32 @__rproc_virtio_del_vqs(%struct.virtio_device* %85)
  %87 = load i32, i32* %17, align 4
  store i32 %87, i32* %8, align 4
  br label %88

88:                                               ; preds = %84, %83
  %89 = load i32, i32* %8, align 4
  ret i32 %89
}

declare dso_local %struct.virtqueue* @rp_find_vq(%struct.virtio_device*, i32, i32*, i8*, i32) #1

declare dso_local i64 @IS_ERR(%struct.virtqueue*) #1

declare dso_local i32 @PTR_ERR(%struct.virtqueue*) #1

declare dso_local i32 @__rproc_virtio_del_vqs(%struct.virtio_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
