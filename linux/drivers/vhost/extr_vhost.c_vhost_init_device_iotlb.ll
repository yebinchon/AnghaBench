; ModuleID = '/home/carl/AnghaBench/linux/drivers/vhost/extr_vhost.c_vhost_init_device_iotlb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/vhost/extr_vhost.c_vhost_init_device_iotlb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vhost_dev = type { i32, %struct.vhost_virtqueue**, %struct.vhost_umem* }
%struct.vhost_virtqueue = type { i32, %struct.vhost_umem* }
%struct.vhost_umem = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vhost_init_device_iotlb(%struct.vhost_dev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.vhost_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.vhost_umem*, align 8
  %7 = alloca %struct.vhost_umem*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.vhost_virtqueue*, align 8
  store %struct.vhost_dev* %0, %struct.vhost_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = call %struct.vhost_umem* (...) @vhost_umem_alloc()
  store %struct.vhost_umem* %10, %struct.vhost_umem** %6, align 8
  %11 = load %struct.vhost_umem*, %struct.vhost_umem** %6, align 8
  %12 = icmp ne %struct.vhost_umem* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %2
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %3, align 4
  br label %54

16:                                               ; preds = %2
  %17 = load %struct.vhost_dev*, %struct.vhost_dev** %4, align 8
  %18 = getelementptr inbounds %struct.vhost_dev, %struct.vhost_dev* %17, i32 0, i32 2
  %19 = load %struct.vhost_umem*, %struct.vhost_umem** %18, align 8
  store %struct.vhost_umem* %19, %struct.vhost_umem** %7, align 8
  %20 = load %struct.vhost_umem*, %struct.vhost_umem** %6, align 8
  %21 = load %struct.vhost_dev*, %struct.vhost_dev** %4, align 8
  %22 = getelementptr inbounds %struct.vhost_dev, %struct.vhost_dev* %21, i32 0, i32 2
  store %struct.vhost_umem* %20, %struct.vhost_umem** %22, align 8
  store i32 0, i32* %8, align 4
  br label %23

23:                                               ; preds = %48, %16
  %24 = load i32, i32* %8, align 4
  %25 = load %struct.vhost_dev*, %struct.vhost_dev** %4, align 8
  %26 = getelementptr inbounds %struct.vhost_dev, %struct.vhost_dev* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp slt i32 %24, %27
  br i1 %28, label %29, label %51

29:                                               ; preds = %23
  %30 = load %struct.vhost_dev*, %struct.vhost_dev** %4, align 8
  %31 = getelementptr inbounds %struct.vhost_dev, %struct.vhost_dev* %30, i32 0, i32 1
  %32 = load %struct.vhost_virtqueue**, %struct.vhost_virtqueue*** %31, align 8
  %33 = load i32, i32* %8, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.vhost_virtqueue*, %struct.vhost_virtqueue** %32, i64 %34
  %36 = load %struct.vhost_virtqueue*, %struct.vhost_virtqueue** %35, align 8
  store %struct.vhost_virtqueue* %36, %struct.vhost_virtqueue** %9, align 8
  %37 = load %struct.vhost_virtqueue*, %struct.vhost_virtqueue** %9, align 8
  %38 = getelementptr inbounds %struct.vhost_virtqueue, %struct.vhost_virtqueue* %37, i32 0, i32 0
  %39 = call i32 @mutex_lock(i32* %38)
  %40 = load %struct.vhost_umem*, %struct.vhost_umem** %6, align 8
  %41 = load %struct.vhost_virtqueue*, %struct.vhost_virtqueue** %9, align 8
  %42 = getelementptr inbounds %struct.vhost_virtqueue, %struct.vhost_virtqueue* %41, i32 0, i32 1
  store %struct.vhost_umem* %40, %struct.vhost_umem** %42, align 8
  %43 = load %struct.vhost_virtqueue*, %struct.vhost_virtqueue** %9, align 8
  %44 = call i32 @__vhost_vq_meta_reset(%struct.vhost_virtqueue* %43)
  %45 = load %struct.vhost_virtqueue*, %struct.vhost_virtqueue** %9, align 8
  %46 = getelementptr inbounds %struct.vhost_virtqueue, %struct.vhost_virtqueue* %45, i32 0, i32 0
  %47 = call i32 @mutex_unlock(i32* %46)
  br label %48

48:                                               ; preds = %29
  %49 = load i32, i32* %8, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %8, align 4
  br label %23

51:                                               ; preds = %23
  %52 = load %struct.vhost_umem*, %struct.vhost_umem** %7, align 8
  %53 = call i32 @vhost_umem_clean(%struct.vhost_umem* %52)
  store i32 0, i32* %3, align 4
  br label %54

54:                                               ; preds = %51, %13
  %55 = load i32, i32* %3, align 4
  ret i32 %55
}

declare dso_local %struct.vhost_umem* @vhost_umem_alloc(...) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @__vhost_vq_meta_reset(%struct.vhost_virtqueue*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @vhost_umem_clean(%struct.vhost_umem*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
