; ModuleID = '/home/carl/AnghaBench/linux/drivers/vhost/extr_vringh.c_vringh_init_kern.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/vhost/extr_vringh.c_vringh_init_kern.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vringh = type { i64, i64, i32, %struct.TYPE_2__, i64, i64, i64 }
%struct.TYPE_2__ = type { i32, %struct.vring_used*, %struct.vring_avail*, %struct.vring_desc* }
%struct.vring_desc = type { i32 }
%struct.vring_avail = type { i32 }
%struct.vring_used = type { i32 }

@.str = private unnamed_addr constant [17 x i8] c"Bad ring size %u\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@VIRTIO_F_VERSION_1 = common dso_local global i64 0, align 8
@VIRTIO_RING_F_EVENT_IDX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vringh_init_kern(%struct.vringh* %0, i64 %1, i32 %2, i32 %3, %struct.vring_desc* %4, %struct.vring_avail* %5, %struct.vring_used* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.vringh*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.vring_desc*, align 8
  %14 = alloca %struct.vring_avail*, align 8
  %15 = alloca %struct.vring_used*, align 8
  store %struct.vringh* %0, %struct.vringh** %9, align 8
  store i64 %1, i64* %10, align 8
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store %struct.vring_desc* %4, %struct.vring_desc** %13, align 8
  store %struct.vring_avail* %5, %struct.vring_avail** %14, align 8
  store %struct.vring_used* %6, %struct.vring_used** %15, align 8
  %16 = load i32, i32* %11, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %27

18:                                               ; preds = %7
  %19 = load i32, i32* %11, align 4
  %20 = icmp ugt i32 %19, 65535
  br i1 %20, label %27, label %21

21:                                               ; preds = %18
  %22 = load i32, i32* %11, align 4
  %23 = load i32, i32* %11, align 4
  %24 = sub i32 %23, 1
  %25 = and i32 %22, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %21, %18, %7
  %28 = load i32, i32* %11, align 4
  %29 = call i32 @vringh_bad(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %28)
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %8, align 4
  br label %71

32:                                               ; preds = %21
  %33 = load i64, i64* %10, align 8
  %34 = load i64, i64* @VIRTIO_F_VERSION_1, align 8
  %35 = shl i64 1, %34
  %36 = and i64 %33, %35
  %37 = load %struct.vringh*, %struct.vringh** %9, align 8
  %38 = getelementptr inbounds %struct.vringh, %struct.vringh* %37, i32 0, i32 0
  store i64 %36, i64* %38, align 8
  %39 = load i64, i64* %10, align 8
  %40 = load i32, i32* @VIRTIO_RING_F_EVENT_IDX, align 4
  %41 = shl i32 1, %40
  %42 = sext i32 %41 to i64
  %43 = and i64 %39, %42
  %44 = load %struct.vringh*, %struct.vringh** %9, align 8
  %45 = getelementptr inbounds %struct.vringh, %struct.vringh* %44, i32 0, i32 1
  store i64 %43, i64* %45, align 8
  %46 = load i32, i32* %12, align 4
  %47 = load %struct.vringh*, %struct.vringh** %9, align 8
  %48 = getelementptr inbounds %struct.vringh, %struct.vringh* %47, i32 0, i32 2
  store i32 %46, i32* %48, align 8
  %49 = load %struct.vringh*, %struct.vringh** %9, align 8
  %50 = getelementptr inbounds %struct.vringh, %struct.vringh* %49, i32 0, i32 6
  store i64 0, i64* %50, align 8
  %51 = load %struct.vringh*, %struct.vringh** %9, align 8
  %52 = getelementptr inbounds %struct.vringh, %struct.vringh* %51, i32 0, i32 5
  store i64 0, i64* %52, align 8
  %53 = load %struct.vringh*, %struct.vringh** %9, align 8
  %54 = getelementptr inbounds %struct.vringh, %struct.vringh* %53, i32 0, i32 4
  store i64 0, i64* %54, align 8
  %55 = load i32, i32* %11, align 4
  %56 = load %struct.vringh*, %struct.vringh** %9, align 8
  %57 = getelementptr inbounds %struct.vringh, %struct.vringh* %56, i32 0, i32 3
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  store i32 %55, i32* %58, align 8
  %59 = load %struct.vring_desc*, %struct.vring_desc** %13, align 8
  %60 = load %struct.vringh*, %struct.vringh** %9, align 8
  %61 = getelementptr inbounds %struct.vringh, %struct.vringh* %60, i32 0, i32 3
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 3
  store %struct.vring_desc* %59, %struct.vring_desc** %62, align 8
  %63 = load %struct.vring_avail*, %struct.vring_avail** %14, align 8
  %64 = load %struct.vringh*, %struct.vringh** %9, align 8
  %65 = getelementptr inbounds %struct.vringh, %struct.vringh* %64, i32 0, i32 3
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 2
  store %struct.vring_avail* %63, %struct.vring_avail** %66, align 8
  %67 = load %struct.vring_used*, %struct.vring_used** %15, align 8
  %68 = load %struct.vringh*, %struct.vringh** %9, align 8
  %69 = getelementptr inbounds %struct.vringh, %struct.vringh* %68, i32 0, i32 3
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 1
  store %struct.vring_used* %67, %struct.vring_used** %70, align 8
  store i32 0, i32* %8, align 4
  br label %71

71:                                               ; preds = %32, %27
  %72 = load i32, i32* %8, align 4
  ret i32 %72
}

declare dso_local i32 @vringh_bad(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
