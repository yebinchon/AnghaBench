; ModuleID = '/home/carl/AnghaBench/linux/drivers/vhost/extr_vhost.c_vq_meta_prefetch.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/vhost/extr_vhost.c_vq_meta_prefetch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vhost_virtqueue = type { i32, i64, i64, i64, i32 }

@VHOST_ACCESS_RO = common dso_local global i32 0, align 4
@VHOST_ADDR_DESC = common dso_local global i32 0, align 4
@VHOST_ADDR_AVAIL = common dso_local global i32 0, align 4
@VHOST_ACCESS_WO = common dso_local global i32 0, align 4
@VHOST_ADDR_USED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vq_meta_prefetch(%struct.vhost_virtqueue* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vhost_virtqueue*, align 8
  %4 = alloca i32, align 4
  store %struct.vhost_virtqueue* %0, %struct.vhost_virtqueue** %3, align 8
  %5 = load %struct.vhost_virtqueue*, %struct.vhost_virtqueue** %3, align 8
  %6 = getelementptr inbounds %struct.vhost_virtqueue, %struct.vhost_virtqueue* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  store i32 %7, i32* %4, align 4
  %8 = load %struct.vhost_virtqueue*, %struct.vhost_virtqueue** %3, align 8
  %9 = getelementptr inbounds %struct.vhost_virtqueue, %struct.vhost_virtqueue* %8, i32 0, i32 4
  %10 = load i32, i32* %9, align 8
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %1
  store i32 1, i32* %2, align 4
  br label %55

13:                                               ; preds = %1
  %14 = load %struct.vhost_virtqueue*, %struct.vhost_virtqueue** %3, align 8
  %15 = load i32, i32* @VHOST_ACCESS_RO, align 4
  %16 = load %struct.vhost_virtqueue*, %struct.vhost_virtqueue** %3, align 8
  %17 = getelementptr inbounds %struct.vhost_virtqueue, %struct.vhost_virtqueue* %16, i32 0, i32 3
  %18 = load i64, i64* %17, align 8
  %19 = trunc i64 %18 to i32
  %20 = load %struct.vhost_virtqueue*, %struct.vhost_virtqueue** %3, align 8
  %21 = load i32, i32* %4, align 4
  %22 = call i32 @vhost_get_desc_size(%struct.vhost_virtqueue* %20, i32 %21)
  %23 = load i32, i32* @VHOST_ADDR_DESC, align 4
  %24 = call i64 @iotlb_access_ok(%struct.vhost_virtqueue* %14, i32 %15, i32 %19, i32 %22, i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %52

26:                                               ; preds = %13
  %27 = load %struct.vhost_virtqueue*, %struct.vhost_virtqueue** %3, align 8
  %28 = load i32, i32* @VHOST_ACCESS_RO, align 4
  %29 = load %struct.vhost_virtqueue*, %struct.vhost_virtqueue** %3, align 8
  %30 = getelementptr inbounds %struct.vhost_virtqueue, %struct.vhost_virtqueue* %29, i32 0, i32 2
  %31 = load i64, i64* %30, align 8
  %32 = trunc i64 %31 to i32
  %33 = load %struct.vhost_virtqueue*, %struct.vhost_virtqueue** %3, align 8
  %34 = load i32, i32* %4, align 4
  %35 = call i32 @vhost_get_avail_size(%struct.vhost_virtqueue* %33, i32 %34)
  %36 = load i32, i32* @VHOST_ADDR_AVAIL, align 4
  %37 = call i64 @iotlb_access_ok(%struct.vhost_virtqueue* %27, i32 %28, i32 %32, i32 %35, i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %52

39:                                               ; preds = %26
  %40 = load %struct.vhost_virtqueue*, %struct.vhost_virtqueue** %3, align 8
  %41 = load i32, i32* @VHOST_ACCESS_WO, align 4
  %42 = load %struct.vhost_virtqueue*, %struct.vhost_virtqueue** %3, align 8
  %43 = getelementptr inbounds %struct.vhost_virtqueue, %struct.vhost_virtqueue* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = trunc i64 %44 to i32
  %46 = load %struct.vhost_virtqueue*, %struct.vhost_virtqueue** %3, align 8
  %47 = load i32, i32* %4, align 4
  %48 = call i32 @vhost_get_used_size(%struct.vhost_virtqueue* %46, i32 %47)
  %49 = load i32, i32* @VHOST_ADDR_USED, align 4
  %50 = call i64 @iotlb_access_ok(%struct.vhost_virtqueue* %40, i32 %41, i32 %45, i32 %48, i32 %49)
  %51 = icmp ne i64 %50, 0
  br label %52

52:                                               ; preds = %39, %26, %13
  %53 = phi i1 [ false, %26 ], [ false, %13 ], [ %51, %39 ]
  %54 = zext i1 %53 to i32
  store i32 %54, i32* %2, align 4
  br label %55

55:                                               ; preds = %52, %12
  %56 = load i32, i32* %2, align 4
  ret i32 %56
}

declare dso_local i64 @iotlb_access_ok(%struct.vhost_virtqueue*, i32, i32, i32, i32) #1

declare dso_local i32 @vhost_get_desc_size(%struct.vhost_virtqueue*, i32) #1

declare dso_local i32 @vhost_get_avail_size(%struct.vhost_virtqueue*, i32) #1

declare dso_local i32 @vhost_get_used_size(%struct.vhost_virtqueue*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
